# Validación de Open Adapt experimental

Fecha: 18 de octubre de 2026. APK base Nike Adapt 1.29.3, Android mínimo 7.0 (API 24), destino API 33. Nuevo paquete com.openadapt.experimental; firma local distinta de Nike.

## Corrección v0.4.1: carga y diagnóstico de luces

- 79 aserciones de LightDispatch: una carga por lado, independencia entre lados, último color distinto, supresión de duplicados, generaciones, fallo, bloqueo, cancelación, plazo y rechazo de callbacks tardíos.
- 14 comprobaciones en Android con las clases del APK real: identificación de cancelación, liberación del consumidor de cola, exclusión de entrada/ejecución, guardas CoreRF de carga/inicio, causa de firmware anidada, cancelación de la carga propia y conservación de otra solicitud. Solo identificadores de prueba, sin conexión Bluetooth solicitada.
- El listener real v9.p0 recibe AnimationStartResult / AnimationStartError con UUID por solicitud; no se desactiva ninguna condición de autenticación o firmware del ADK.
- Se conservan las comprobaciones anteriores de batería, ajuste, diagnóstico y actualizador.
- Prueba visual en el emulador: estado por lado visible al inicio de Luces, selección de color y Aplicar informan honestamente que no hay conexión, Detener cierra el servicio y no se registran excepciones AndroidRuntime. Evidencia: lighting-ui-summary.json y captura interfaz-luces.png.
- La hipótesis física sigue abierta: se confirmó una cancelación entre cargas en el software, pero no se observó el tráfico del teléfono ni las zapatillas del usuario.
- Informe detallado: analysis/lighting-findings-v041.md. Evidencia de clase empaquetada: output/lighting-runtime-summary.json.

## Actualización v0.4.0: ajuste, aviso de batería y correcciones de luces/conexión

- 95 aserciones del controlador manual: selección por lado, secuencia de ambas, límites, respuestas tardías o inválidas, fallos de lectura/movimiento, parada y pérdida de condiciones.
- 21 aserciones de batería, incluidos 14 % bloqueado, 15 % permitido y rechazo de datos ausentes, antiguos o futuros. Las protecciones del motor mantienen 0–40 °C y fuera del cargador.
- Corregido el camino que solo guardaba el color sin enviar una animación con modo continuo desactivado. Selección y aplicación explícitas envían el comando; no se reproduce una prueba al abrir la pantalla.
- Los errores transitorios de conexión/versión no activan el bloqueo reservado para eventos de batería o temperatura del calzado. Estado por lado y diagnóstico incluyen resultado del envío.
- Conectar ejecuta la reconexión inmediatamente para un par guardado. El retorno tras primer emparejamiento solo ocurre desde el controlador original en primer plano con ambos lados autenticados.
- Emulador Android 17: instalación sobre la app existente, navegación de cinco pestañas, envío de prueba de color sin conexión (muestra el motivo real), persistencia de color/modo continuo, controles de ajuste bloqueados sin conexión, diagnóstico, parada del servicio y fuente al 130 %. Sin excepciones AndroidRuntime. Evidencia: dashboard-emulator-summary.json.
- Se conserva la firma, el paquete y los datos locales. No hay teléfono físico conectado al equipo: la corrección de código no demuestra encendido físico ni emparejamiento real.

## Actualización v0.3.1: interfaz nativa y descarga de respaldo

- Panel con cuatro pestañas: Inicio, Luces, Movimiento y Sistema.
- Tarjetas de batería por lado, selección de color visual e imagen de Auto Max generada con IA desde una referencia del usuario y cargada localmente.
- Acciones de aplicar/iniciar y detener accesibles sobre la barra de navegación. Opciones del motor con confirmación conservada.
- Compilación, alineación y firma APK v2/v3 verificadas; se conserva la clave local para actualizar las instalaciones experimentales anteriores.
- 44 aserciones del actualizador: orden de versiones, rechazo de orígenes ajenos y ruta exacta de la copia de respaldo. La copia de Pages coincide en SHA-256 y tamaño con el APK firmado.
- El servicio de Bluetooth, luces, motor y diagnóstico no cambia. Las pruebas físicas siguen pendientes.

## Actualización v0.2.0: batería en porcentaje

- Porcentaje de cada zapatilla en el panel principal, con consultas existentes cada 20 segundos aproximadamente.
- 11 aserciones de presentación: 0 %, 100 %, datos ausentes, desconexión, reloj inválido y lectura desactualizada tras 60 segundos.
- Reconstrucción, alineación y firma verificadas para el APK nuevo. Se mantiene la misma clave local para actualizar la instalación existente.
- Emulador Android 17/API 37: actualización instalada sobre la app existente, apertura del panel, título de batería y estados izquierda/derecha sin conexión visibles, sin excepciones AndroidRuntime. Evidencia: battery-emulator-summary.json y pantalla-bateria.png.
- Las pruebas anteriores de navegación y giros corresponden a v0.1.0 y su huella registrada en emulator-summary.json. La lectura real de batería requiere validar con zapatillas físicas.

## Comprobaciones aprobadas en v0.1.0

- Compilación de las clases nuevas, reconstrucción del APK, alineación y firma APK v2/v3 verificadas.
- 43 aserciones del lector de protobuf/diagnóstico: campos, valores por defecto, formatos incorrectos y límites.
- 32 aserciones de las condiciones y límites de frecuencia del motor. Esto no demuestra por sí solo el funcionamiento físico del motor.
- Detección de giros: ruido en reposo, izquierda, derecha, intervalo entre eventos, pérdida de muestras y tiempo fuera de orden.
- 19 firmas de clases, campos y métodos del puente cotejadas con el APK concreto.
- Instalación del original y la modificación simultáneamente en el emulador Android 17/API 37, sin conflicto de paquetes o permisos.
- Apertura del panel nuevo y navegación mediante su botón a la bienvenida del emparejamiento local, sin pantalla de registro Nike.
- Servicio en primer plano activo al bloquear la pantalla (estado Dozing registrado), con bloqueo parcial de CPU. Un giro simulado del giroscopio generó el evento esperado en ese estado.
- Regreso al panel, pulsación de Detener todo, desaparición de MotionService y liberación de su bloqueo parcial de CPU.
- Sin excepciones AndroidRuntime registradas durante la última secuencia de prueba.

La primera configuración del emulador mostró avisos de sistema sin respuesta. Se reinició con aceleración gráfica del equipo; la secuencia final anterior se completó. Durante la prueba también se corrigió la navegación de regreso al panel para separarla de las pantallas antiguas.

## Lo que no se ha probado

No había teléfono ni zapatillas físicas conectados al equipo. No se ha comprobado emparejamiento BLE real, compatibilidad exacta del firmware de tus Auto Max, ejecución de LED, volumen del sonido del motor, repetición prolongada, latencia de pisadas ni comportamiento bajo restricciones de batería de tu teléfono.

El modo por pisadas no puede activar el streaming con la API que conserva este APK. Solo recibe eventos si el calzado ya los emite. El diagnóstico de firmware no es una copia binaria restaurable y no acredita integridad criptográfica completa.

La pantalla antigua de perfil y algunos enlaces Nike pueden seguir requiriendo servicios de Nike. Para estas funciones nuevas se usa el panel Open Adapt y su diagnóstico, no la antigua pantalla de actualización.

## Artefactos y reproducción

- LEEME.md: instalación, funcionamiento y límites.
- emulator-summary.json: resumen del emulador para este APK, sin los volcados completos del sistema local.
- local-tests.json: salida de pruebas locales y huella del APK.
- build-identity.json: identidad del archivo generado y del APK base.
- analysis/build_openadapt.py: recompilación con las herramientas guardadas en el espacio de trabajo y el SDK Android ya instalado.
- analysis/patch_offline.py y analysis/patch_motion.py: cambios reproducibles. Los originales de los archivos modificados quedan en analysis/offline-originals y analysis/motion-originals.

SHA-256 del APK v0.4.1 entregado:

```
1461efefe4053470d8a7e3139c4f0acde1ce0f51333d877482c848c191a6900b
```

## Alcance de la prueba del actualizador

En una versión interna previa instalada en el emulador se descargó y verificó el APK público v0.3.1 y se abrió la autorización de Android para instalar desde esta app (actualizacion-permiso.png). No se completó esa instalación mediante el diálogo; la instalación v0.4.0 del emulador se hizo con las herramientas Android. No equivale a una actualización completa comprobada desde un teléfono físico.
