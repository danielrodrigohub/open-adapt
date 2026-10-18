# Firmware y movimiento: evidencia estática

Artefacto: Nike Adapt 1.29.3, SHA-256 `86366a781de87cae2b672a15ee48d163335e101975e33be0ef8d69da7e688172` según `identity.json`. Se revisaron los protobuf incluidos y el código decompilado/Smali. No hubo ejecución con zapatillas. Las referencias siguientes son fuentes locales, no identificadores de evidencia generados por REA.

## Conclusiones

1. **Comprobación de firmware: implementada y recuperable.** El comando 19 devuelve versión, estado, tamaño y dos checksum de una imagen. El comando 214 devuelve la versión actual MCU. Esto permite exportar un informe de estado, pero no un respaldo binario restaurable.
2. **Copia del firmware desde la zapatilla: no confirmada.** El protocolo incluye IDs de imágenes y mensajes LFT, pero la ruta de recepción efectivamente implementada en `FileTransfer.a` usa `SESSION_PULL_REQUEST` (161), para recuperar sesiones. La ruta de firmware observada envía imágenes desde el teléfono hacia el dispositivo. No se debe presentar la descarga de un paquete de actualización ni un informe de checksum como copia del firmware instalado.
3. **Detección de pisadas y datos MEMS: recepción implementada; activación ausente de esta compilación.** Hay decodificación de eventos de pisada, conteo/cadencia, acelerómetro/giroscopio y actividad, con ID de dispositivo. Sin embargo, `SessionStartRequest` fue vaciada y la API de inicio arroja una excepción: no se puede habilitar streaming solo invocando esa API por reflexión.
4. **Mínimo declarado para inicio de sesiones: firmware 2.3.0.** Es una anotación de la API, no prueba de que el modelo físico del usuario emita todos los datos. La capacidad debe comprobarse mediante ACK y eventos reales antes de habilitar un modo por pisada.
5. **Movimiento izquierdo/derecho:** una notificación con ID de dispositivo permite identificar qué zapatilla emitió una pisada, si se reciben datos. No demuestra una clasificación de giro a izquierda/derecha. Esta requeriría un algoritmo nuevo sobre sensores o usar la orientación del teléfono, presentado explícitamente como tal.
6. **Luces indefinidas:** Lighting 1.x lleva timeout en segundos; Lighting 2.x lleva repeatCount de 16 bits, con comentario explícito que 0 significa una reproducción. No hay evidencia de que cero signifique infinito. Un modo continuo debe renovar ejecuciones y conservar cancelación por sobretemperatura/batería crítica.

## Rutas y firmas verificadas

### Firmware

- `Bigfoot.proto:702`: request `FirmwareUploadImageStatsRequest`, `image_id` campo 1.
- `Bigfoot.proto:706`: response `FirmwareUploadImageStatsAck`, campos versión 1/2/3; estado 7; tamaño 8; descargado 9; checksum imagen 10; checksum datos 11.
- `decompiled/sources/hc/l.java:2530`: método `r(nc.c<mc.k,Integer>)` envía opcode 19 y usa adaptador `h` para construir `mc.k`.
- `decompiled/sources/hc/l.java:435`: adaptador `h`, enum de estado y extracción de la respuesta.
- `decompiled/sources/hc/l.java:2251`: método `e(nc.a<String>)` envía opcode 214.
- `decompiled/sources/rc/b.java:5`: IDs reales de **consulta de imagen**: MCU update=0/gold=1, BLE update=2/gold=3, capsense update=4/gold=5. Son distintos del enum `LFT_fileID` de `Bigfoot.proto:816`; no se deben intercambiar.
- `decompiled/sources/rc/f.java:84`: comprobación de consistencia de versiones MCU/BLE/capsense en slots gold.
- `decompiled/sources/hc/k0.java:124`: recepción `a(id,offset,size)` envía opcode 161, no lectura de memoria firmware.
- `decompiled/sources/hc/k0.java:161`: envío de archivo local con FIRMWARE_AVAILABLE, opcode 10.
- `Firmware.proto:76–157`: anuncio, petición de segmentos, estados de descarga, transferencia y validación. La denominación `PullFirmware` se refiere a que el dispositivo pide segmentos al cliente durante una actualización; no prueba copia desde la zapatilla.

### Recepción de movimiento

- `Sessions.proto:46–78`: tipos de configuración declarados: raw stream=2, step metrics stream=4, aggregate stream=5, activity stream=7. Tasas declaradas 25/1/0.2/0.3/0.5 Hz. No queda el vínculo de llamada que pruebe qué payload utiliza `SESSION_START` en esta compilación.
- `Sessions.proto:109`: métricas por pisada (impacto, impulso, contacto, oscilación, velocidad, longitud y clasificación).
- `Sessions.proto:166`: conteo y cadencia de sesión.
- `Sessions.proto:201–225`: acelerómetro/giroscopio XYZ.
- `Sessions.proto:363`: gesto doble toque, sin clasificador de giro.
- `decompiled/sources/hc/e.java:264`: opcode159 => `mc.y` (pisada).
- `decompiled/sources/hc/e.java:336`: opcode160 => `mc.v` (conteo/cadencia).
- `decompiled/sources/hc/e.java:347`: opcode165 => `mc.c0` (MEMS).
- `decompiled/sources/hc/e.java:371`: opcode171 => clasificación de actividad.
- `decompiled/sources/hc/e.java:421`: opcode182 => gesto doble toque.
- `decompiled/sources/hc/e.java:511`: distribución por LocalBroadcastManager con ID de dispositivo.
- `decompiled/sources/hc/f0.java:85`: acción `com.nike.corerf.update.notification`, extra ID `com.nike.corerf.device.id`. Datos en extras con prefijo de la acción y sufijos `.session_data`, `.session_aggregate_data`, `.session_raw_data`, `.auto_fit_session_activity_classification`, `.gesture_event`.
- `decompiled/sources/mc/c0.java:105`: orden de campos reales Smali: `h` timestamp; `i/j/k` gyro XYZ; `l/m/n` accel XYZ. Las etiquetas se verificaron en `toString`, no se infirieron del orden del proto.
- `decompiled/sources/v9/o6.java:8`: `SessionStartRequest`, mínimo 2.3.0, sin campos de configuración recuperables.
- `decompiled/sources/w9/x.java:2429`: API `c(w9.a,v9.o6)` termina en `throw null`; no envía inicio de sesión.

### Transporte raw disponible, sin confirmar semántica de inicio

Las siguientes firmas permiten agregar una implementación nueva, pero no prueban que un nuevo comando de streaming sea aceptado por hardware:

- `decoded/smali/hc/l.smali:16`: campo público `k:Lhc/e;`; `h` es device ID y `j:Lmc/e;` versión actual (su `toString` devuelve semver).
- `decoded/smali/hc/e.smali:2047`: `i(Lhc/m0;)V`, envía por CoreRF si hay GATT y estado listo. Puede arrojar `kc.f`.
- `decoded/smali/hc/m0.smali:25`: constructor `(BLhc/m0$a;[B)V`; enum `REQUEST`, `ACK`, `NAK`, `EVENT`; campos reales `a` opcode byte, `b` acción, `c` payload.
- `hc.m0.a(byte[])` parsea un mensaje recibido; `hc.m0.b(m0)` lo serializa.
- Mensajes raw recibidos: acción `com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE`, ID en `com.nike.corerf.DEVICE_ID`, bytes en `com.nike.corerf.EXTRA_DATA` (`hc/e.java:190–198`).
- Opcode150 `SESSION_START` y 151 `SESSION_STOP` están declarados en `hc/d.java:108`. No se encontró envío de 150 en `hc/l.java` ni en sus Smali. Usar `EnabledConfigurationGroup` como payload de 150 sería una inferencia que necesita prueba contra dispositivo y tratamiento de NAK/timeout.

## Luces continuas y límites propios del dispositivo

- `Bigfoot.proto:625`: Lighting 1.x `UserAnimationStart.timeout`, segundos; comando236.
- `Bigfoot.proto:658`: Lighting 2.x `UserAnimationMap.repeatCount` rango0..65535 y comentario cero=una ejecución; `cycleLengthMs`, `repeatDelayMs`, reanudación tras animación del sistema.
- `Bigfoot.proto:613` y `:680`: terminación por batería crítica o sobretemperatura. Estas protecciones se declaran en protocolo del dispositivo y deben mantenerse.
- `decompiled/sources/hc/l.java:2395`: inicio de animación 1.x comprueba animación previa, manda timeout; `:2230` inicio 2.x sin payload.

## Cobertura y desconocidos

La evidencia establece código y declaraciones del APK. No establece frecuencia, latencia, soporte de sensores de cada modelo, lectura de firmware, duración máxima real de luces, funcionamiento con pantalla apagada ni acceso a servicios remotos. Se requiere prueba en el teléfono y cada zapatilla para convertir esas inferencias en comportamiento confirmado.
