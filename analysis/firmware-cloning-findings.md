# ¿Clonar firmware de derecha a izquierda?

Fecha: 18 de octubre de 2026. Pregunta: igualar versiones de las Nike Adapt Auto Max del usuario mediante una copia entre zapatillas.

## Alcance e identidad

Análisis estático de los protobuf empaquetados y del código decompilado ya conservado de Nike Adapt 1.29.3. APK base SHA-256: `86366a781de87cae2b672a15ee48d163335e101975e33be0ef8d69da7e688172`. No hay zapatillas conectadas ni una imagen completa de su firmware. No se enviaron comandos de escritura ni actualización.

REA no anuncia herramientas en esta sesión. Su diagnóstico 6.7.0 señala `registration:codex = config_drift` y falta del proveedor Android `REA_JADX_MCP_JAR`. No se modificó la configuración. Las referencias de abajo proceden de inspección normal de archivos existentes; no son Evidence IDs de REA.

## Hallazgos

| Pregunta | Estado | Evidencia y límite |
| --- | --- | --- |
| ¿Se pueden leer versiones por zapatilla? | Respondida en el código; ejecución física pendiente | Bridge.read y MotionService.checkFirmware del proyecto consultan 214 y 19 por identificador de dispositivo. snapshot exporta left/right separados. |
| ¿Existe actualización desde el teléfono? | Observada estáticamente | analysis/decompiled/sources/hc/k0.java:161, b(byte[]): analiza un archivo local y anuncia FIRMWARE_AVAILABLE, opcode 10. No prueba disponibilidad de un paquete compatible ni actualización física correcta. |
| ¿La ruta de extracción encontrada obtiene firmware? | No: esa ruta obtiene sesiones | hc/k0.java:124, a(int,int,int): SESSION_PULL_REQUEST, opcode 161. La existencia de esta ruta no descarta otras interfaces no revisadas. |
| ¿Se puede clonar derecha → izquierda por Bluetooth con lo encontrado? | No confirmado | No hay extracción completa de firmware demostrada. Tener versión y checksums no proporciona los bytes de una imagen restaurable. |
| ¿Un paquete sirve indistintamente para ambos lados? | Desconocido | Firmware.proto:43–72 enumera componentes MCU/BLE/capsense, versiones y CRC, sin un campo de lateralidad en ese encabezado. Esa ausencia no demuestra compatibilidad: los binarios y el hardware real no se han inspeccionado. |
| ¿Qué coherencia comprueba la app? | Observada estáticamente | rc/f.java:84 compara MCU/BLE/capsense dentro de los slots gold de un dispositivo, rechazando slots vacíos/parciales o versiones distintas. No es evidencia de una comparación entre pie izquierdo y derecho. |
| ¿Hay comprobación de firma? | Declarada; mecanismo desconocido | Firmware.proto:100 incluye DOWNLOAD_FAILED_SIGNATURE. Esto no prueba algoritmo, claves ni restricciones de rollback. |

## Inferencias y siguientes datos necesarios

- Una diferencia entre versiones podría proceder de una actualización incompleta o situaciones distintas de cada dispositivo; no se ha observado la causa en este par.
- Igualar versiones mediante un paquete de actualización compatible es una investigación distinta de clonar toda la memoria. Se necesitarían el paquete, las versiones y la compatibilidad real del hardware de ambos lados.
- El protocolo declara números de serie y autenticación (Bigfoot.proto:190–237). No sabemos si una copia completa de memoria sobrescribiría identidad, claves o ajustes de cada zapatilla, ni dónde se almacenan esos datos.
- Buscar nombres/extensions de firmware en analysis/decoded/assets y res/raw no devolvió coincidencias para firmware/.bin/.hex/.dfu/.fw/.zip; esta búsqueda acotada no descarta imágenes opacas en otros recursos o archivos externos.
- El siguiente paso es usar «Leer versiones y comprobar estados», esperar la consulta y guardar el JSON. Comparar left/right y sus componentes antes de considerar cualquier escritura. La versión publicada solo diagnostica; no clona ni actualiza firmware.

No hay evidencia suficiente para habilitar un botón de clonación o prometer que restauraría un zapato con una versión distinta.
