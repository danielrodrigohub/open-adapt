# Funciones de Nike Adapt: análisis estático del APK

Identidad: com.nike.adapt_1.29.3-2017062198_minAPI24(nodpi)_apkmirror.com.apk
SHA-256: 86366a781de87cae2b672a15ee48d163335e101975e33be0ef8d69da7e688172

## Evidencia y límites
Se extrajeron con herramientas locales las cadenas de resources.arsc y los archivos .proto incluidos en el APK. No se ejecutó la app ni se conectaron zapatillas. No se generaron Evidence IDs de REA: sus herramientas MCP no están conectadas y falta el proveedor JADX. La versión 1.29.3 procede del nombre del archivo, no de una comprobación del manifiesto. Los textos describen funciones previstas y no demuestran que estén activas para un modelo o firmware específico.

## Funciones descritas en los textos de la interfaz
- Luces: encender/apagar, paleta de 12 colores, uno o dos colores, efectos intermitentes, estroboscópicos y degradado; packs de luces y combinaciones preseleccionadas.
- Duraciones: 5, 30 y 60 minutos; pulsación prolongada para cambiar duración de intermitentes.
- Ajuste: apretar/aflojar, controles L/R, aflojar por completo, calibrar y recalibrar.
- Modos: guardar hasta tres ajustes y combinaciones de color; renombrar, ordenar y eliminar modos.
- Ajuste automático al ponerse el calzado y elección del ajuste objetivo.
- GestureAdapt: activar/desactivar gestos; toque doble con el talón contra el interior del otro pie para desajustar. Los textos indican que puede volver a ajustarse tras 15 segundos si se mantiene puesto.
- Batería: estado y recordatorios de batería baja y carga completa.
- Emparejamiento Bluetooth; identificación mediante NFC; selección y gestión del par.
- Firmware: consultar versión y actualizar; reiniciar y restablecer calzado.
- Calibración para plantillas ortopédicas, tutoriales y ayuda.

Fuentes: resource-strings.txt, bloque en español de líneas 14480–15100. Son textos empaquetados, no comprobación de ejecución.

## Capacidad técnica declarada en el protocolo
Bigfoot.proto: AnimationColor y AnimationSetBrightness (líneas 535–578); UserAnimationSetAnimation, UserAnimationStart y AnimationLine/UserAnimationMap (580–668); SetLEDBase (788–807). Declaran RGB, brillo 0–4, tiempos de animación y fotogramas para tres LED RGB. No prueban que exista un editor libre de animaciones o control de brillo en la interfaz.

## Condiciones descritas
Algunas funciones requieren firmware actualizado. El APK describe suspensión de efectos por batería crítica o temperatura. Los textos asocian acceso completo con una cuenta Nike. No se verificó la disponibilidad actual de servicios, inicio de sesión o descarga de firmware.
