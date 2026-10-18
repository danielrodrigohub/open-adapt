# Validación de Open Adapt experimental

Fecha: 18 de octubre de 2026. APK base Nike Adapt 1.29.3, Android mínimo 7.0 (API 24), destino API 33. Nuevo paquete com.openadapt.experimental; firma local distinta de Nike.

## Comprobaciones aprobadas

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

SHA-256 del APK entregado:

```
43891dcd60ede6fa55d765f4a1fd831e1d0f89a01d28df1b67e46f73dcb1beb8
```
