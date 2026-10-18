# Open Adapt experimental

Descarga pública actual: https://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v0.4.1.apk


Versión modificada del APK Nike Adapt 1.29.3 para investigar el control local de unas Nike Adapt Auto Max. Se instala con el paquete `com.openadapt.experimental` y firma local propia, junto a la app original. No desinstales la original para probar esta versión.

## Nuevo panel 0.4.0

- **Inicio:** imagen de Auto Max generada con IA a partir de la referencia aportada, conexión y batería independiente de cada zapatilla.
- **Luces:** selección visual del color, luces continuas y pruebas izquierda/derecha.
- **Movimiento:** giros, eventos de pisada disponibles y opción experimental de cordones.
- **Sistema:** estado de la sesión, consulta de versiones y exportación de diagnóstico.
- **Iniciar control / Aplicar opciones** y **Detener** permanecen accesibles sobre la navegación inferior. Elige las opciones y pulsa Aplicar para enviarlas al servicio.

## Actualizar sin volver a empezar

En **Sistema → Actualizaciones de la app**, usa **Buscar actualizaciones** y después **Descargar e instalar**. La búsqueda automática consulta al abrir, como máximo una vez cada seis horas. Android pedirá confirmar la instalación y puede pedir autorización para instalar desde Open Adapt. La app comprueba paquete, versión, SHA-256 y la misma firma.

Instala encima de la versión experimental existente: no desinstales ni borres datos. Se conservan los ajustes y las claves de emparejamiento guardadas. El control se detiene antes de instalar y, al abrir de nuevo, intenta reconectar con esas claves. El comportamiento con zapatillas físicas sigue pendiente de validación. Este proceso actualiza la app, no el firmware del calzado.

Más detalles y publicación de nuevas versiones: [guía de actualizaciones](../docs/UPDATES.md).

## Opciones implementadas

- Panel local sin registro o inicio de sesión Nike.
- Porcentaje de batería independiente para izquierda y derecha, actualizado aproximadamente cada 20 segundos mientras están conectadas. Si falta la lectura, se pierde la conexión o pasan más de 60 segundos sin respuesta, el panel lo indica sin mostrar un porcentaje como si fuera actual.
- Guardado privado del par y sus claves obtenidas por el emparejamiento real. Reconexión automática al par seleccionado o al último usado; no elimina la autenticación del hardware ni los permisos de Android.
- Supresión de la consulta remota de actualizaciones durante el acceso. Conserva comprobaciones de compatibilidad de comandos y recuperación de transferencias que ya estaban en curso.
- Servicio con notificación para mantener la conexión y detectar giros del teléfono con la pantalla apagada. Lleva el teléfono vertical, fijo y con la pantalla hacia delante. El giro del teléfono no identifica cuál pie está pisando.
- Colores y pruebas independientes izquierda/derecha. El modo continuo mantiene un color fijo, con una animación de 60 segundos renovada cada 45 segundos mientras hay conexión; al desactivarlo se usan los destellos por movimiento. Requiere soporte de animaciones personalizadas del firmware, conservando las comprobaciones de versión del controlador original. No anula cortes por batería o temperatura.
- Movimiento experimental del motor: afloja 1 % y vuelve al ajuste inicial únicamente si se confirma el pequeño recorrido. Desactivado al abrir; máximo cinco ciclos por minuto y uno cada diez segundos. Requiere posición y batería recientes, temperatura válida y estar fuera del cargador. Una respuesta inválida, fallo o pérdida de conexión cancela el ciclo. La parada depende de que llegue el comando Bluetooth. No garantiza un sonido audible.
- Lectura de versiones y estados de las seis ranuras de firmware de cada zapatilla, con exportación de diagnóstico JSON. No escribe firmware. Los checksums son valores declarados por el dispositivo; no equivalen a una verificación criptográfica independiente.

## Funciones que siguen pendientes

- **Pisadas reales por zapatilla:** el APK contiene receptores de esos datos, pero su método de activación fue eliminado del código distribuido. El selector de pisadas solo responde si el calzado ya envía los eventos. No se sustituye por alternancia inventada. Hace falta confirmar soporte del firmware y completar/validar la activación con el par físico.
- **Respaldo binario del firmware:** no se encontró una ruta de lectura completa confirmada. El archivo exportado es un diagnóstico, no una imagen restaurable.
- **Conexión sin primer emparejamiento:** las zapatillas requieren claves y autenticación propias. La versión modificada necesita obtenerlas por un emparejamiento real; no puede leer el almacenamiento privado de la app original.

## Primera prueba

1. Copia e instala `OpenAdapt-1.29.3-experimental.apk` en tu Android. La app original permanece instalada.
2. Abre Open Adapt y concede los permisos de dispositivos cercanos. En Android antiguo puede requerir ubicación.
3. Entra en **Conectar / emparejar mi par** en Inicio y completa el emparejamiento físico. Evita que la app original mantenga una conexión simultánea al mismo par.
4. Vuelve al panel mediante el icono de Open Adapt o su notificación, deja desactivado el motor y prueba primero cada luz y el modo continuo.
5. Activa **Giros del teléfono**, inicia el control y comprueba el comportamiento con la pantalla bloqueada.
6. Lee el firmware y guarda el diagnóstico. La lectura de todas las ranuras puede tardar unos treinta segundos.
7. La prueba del motor requiere validación presencial; empieza con el calzado quieto y fuera de los pies. **Detener** también está disponible en la notificación.

## Evidencia y validación

Los detalles de compilación y pruebas están en `VALIDACION.md`. Ninguna prueba local sustituye el ensayo de Bluetooth, sensores, luces y motor en tus zapatillas. Los servicios de registro y descarga de Nike no se han usado para declarar funciones operativas.

Fuentes locales: `analysis/offline-findings.md`, `analysis/findings-firmware-motion.md`, fuentes nuevas en `analysis/openadapt/src/com/openadapt/`, scripts `analysis/patch_offline.py`, `analysis/patch_motion.py` y `analysis/build_openadapt.py`.

El servicio sigue el mecanismo de conexión en segundo plano descrito por [Android Developers](https://developer.android.com/develop/connectivity/bluetooth/ble/background) y mantiene la CPU activa durante la sesión con un bloqueo parcial acotado y renovable. El sistema o la configuración de batería del fabricante aún pueden finalizar una sesión.

## Nuevo en v0.4.0

- **Ajuste**: elige ambas, izquierda o derecha. Consulta el ajuste real, usa Ajustar +1 / Aflojar −1 o previsualiza hasta cinco puntos con el deslizador y pulsa Aplicar cambio. Detener cordones interrumpe la operación.
- Con batería menor al 15 %, aparece un aviso por lado y se bloquean los movimientos de cordones. Se exigen lecturas recientes de batería, temperatura y posición; tampoco se mueve sobre el cargador.
- En **Luces**, elegir color lo envía a ambas zapatillas; Aplicar opciones lo repite. Las pruebas de luz no mueven los cordones. El estado por lado informa si falta conexión, firmware, confirmación o si el calzado aceptó el inicio.
- **Conectar** reconecta el par guardado dentro de OpenAdapt. El primer emparejamiento real sigue siendo necesario y vuelve al panel al finalizar con ambos lados autenticados.
- Instala encima de la versión anterior; no desinstales ni borres almacenamiento si quieres conservar las claves locales.

Las correcciones se han revisado en código y emulador. El funcionamiento físico de las luces y el motor debe comprobarse con las zapatillas reales.

## Si reinstalaste la app o necesitas emparejar desde cero

Desinstalar o borrar almacenamiento elimina las claves locales. Estar vinculado en los ajustes Bluetooth de Android no sustituye el emparejamiento dentro de OpenAdapt.

1. Activa Bluetooth y permite **Dispositivos cercanos** en los permisos de OpenAdapt. En Android antiguo, autoriza también la ubicación si se solicita.
2. Enciende ambas zapatillas con sus botones. Evita una conexión simultánea desde la app original u otro teléfono.
3. En OpenAdapt, abre **Inicio → Conectar / emparejar mi par**. Sin un par guardado se abre la configuración original de emparejamiento.
4. Sigue sus instrucciones: acerca el teléfono a los botones/luces de una zapatilla, acepta **Emparejar y conectar** si Android lo pide y confirma con el botón de la zapatilla cuando se indique. Repite con la otra. El texto original indica que cada conexión puede tardar un minuto.
5. Una vez completada la configuración y autenticados ambos lados, OpenAdapt intenta regresar al panel. Comprueba el estado de ambos lados y sus lecturas.

Estas instrucciones describen el flujo conservado en el APK; todavía hace falta validación completa con Auto Max físicas. Si no se abre el emparejamiento o se queda detenido, anota la pantalla y el mensaje exactos. No restablezcas el firmware para resolver un problema de descarga o de permisos.

## Si no aparece una actualización

Abre **Sistema → Buscar actualizaciones** para comprobarla manualmente; la búsqueda automática se limita a una cada seis horas. Una publicación no se ofrece hasta que su APK y metadatos terminan de subir. Si ya tienes v0.4.1, no se ofrecerá la misma versión otra vez. Si falla la consulta, revisa el mensaje que aparece en esa sección.

Descarga directa de v0.4.1: https://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v0.4.1.apk . Instálala encima de la app actual. No desinstales para actualizar.

## Corrección de luces v0.4.1

En Luces, el estado de izquierda y derecha aparece ahora arriba, antes de los colores. La app espera a que termine cada carga antes de enviar el último color distinto seleccionado. Los errores del controlador se muestran por lado y se incluyen en el diagnóstico.

Después de actualizar encima de tu instalación actual, selecciona **Solo control manual** en Movimiento, aplica y prueba un color en Luces. Espera la respuesta por lado; no hace falta cambiar de color repetidamente. Si las luces siguen apagadas, copia ambos mensajes de estado o exporta **Sistema → Guardar diagnóstico…**. Esto permite distinguir autenticación, transferencia, firmware y aceptación del inicio.

La condición de cancelación entre cargas se confirmó en el código del APK. Su relación con el fallo de estas zapatillas todavía necesita validación física.
