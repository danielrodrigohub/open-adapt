# Acceso local y consulta de firmware: Nike Adapt 1.29.3

## Resultado entregado

Se implementaron cambios estáticos reproducibles sobre `analysis/decoded`, aplicados mediante `analysis/patch_offline.py`. El soporte nuevo está en `analysis/openadapt/src/com/openadapt/OfflinePairs.java` y debe incluirse como DEX adicional en la reconstrucción. Esta parte no compiló ni ejecutó el APK, no contactó zapatillas y no descargó herramientas.

El inicio utiliza los pares locales auténticos: abre el controlador si el onboarding terminó y hay un par guardado; en una instalación sin par abre el proceso real de emparejamiento. No se inventan cuentas Nike, estados de conexión ni claves Bluetooth. Se mantienen los permisos de Android y la autenticación BLE. La reconexión depende de que existan claves válidas, ambas zapatillas estén disponibles y los permisos estén concedidos.

Se sustituyó la consulta remota de actualizaciones por la petición existente `p8.y`, que comunica las versiones actuales del calzado mediante `GetCurrentFirmwareVersionsResult`. No se declara que el firmware sea el más reciente ni que esté íntegro por leer su versión. Una transferencia de firmware que ya estuviera en curso conserva su ruta de recuperación; las validaciones mínimas de compatibilidad de comandos no se modificaron.

## Evidencia estática y cambios

| Hallazgo observado en el APK decompilado | Cambio aplicado | Límite |
|---|---|---|
| `o7/a0.java:40` decide el inicio por OAuth y puede limpiar preferencias de onboarding sin sesión; `g8/a.java:288` comprueba cuenta/token. | El coroutine inicial delega en `OfflinePairs.route(Activity)`, ejecutado en el hilo de interfaz. Conserva estados parciales y pares reales. | El comportamiento Android y BLE necesita prueba en teléfono. |
| `ui/LoginActivity.java:55` envía al onboarding solo tras sesión Nike. | Su coroutine redirige al inicio local cuando se alcanza por un alias antiguo. Conserva la creación de vistas del Activity para evitar referencias a una vista no inicializada. | La cuenta remota no se simula. |
| `i9/e0.java:330` espera perfil Nike y listado de servidor para preparar la bienvenida. | La bienvenida se prepara localmente y se mantiene la interfaz y secuencia original de emparejamiento físico. | No muestra datos de perfil que no se hayan obtenido. |
| `db/b.java:131,158` escribe y lee pares mediante AccountManager, bajo un ID Nike; sin ID no guarda ni devuelve pares. | Se guardan los registros producidos por el emparejamiento real en preferencias privadas `openadapt_offline_pairs`, utilizando los serializadores originales `f1.b.s/t` y reglas de combinación `db.b.f/g`. El lector de cuenta original se conserva como `eAccount` para una migración posible, sin inventar IDs. | La firma nueva puede impedir acceso a registros de la app original. Si no se puede recuperar una clave real, hay que emparejar físicamente otra vez. |
| `ab/b.java:153,227` mezcla persistencia local y sincronización cloud. | Lectura/listado/actualización/borrado del repositorio terminan a partir de datos locales; se retiran las llamadas a sincronización Nike de esos recorridos. | No sincroniza pares entre teléfonos/cuentas. |
| `w7/c.java` puede iniciar renovación de token y provocar logout cuando no hay token. | Tanto el proveedor de token como el de renovación devuelven únicamente un token real en caché o `null`, sin renovación ni logout. | Los servicios Nike opcionales que requieran sesión pueden rechazar solicitudes; no se fabrican credenciales. |
| `adk/DeviceController.java:718,1268` inicia una comprobación remota al recibir `p8.k`. | Se solicita `requestTo(Shoe.BOTH, p8.y)` para consultar versiones actuales sin servidores de actualización. | Las pantallas antiguas dedicadas a buscar/instalar actualizaciones pueden esperar un tipo distinto de resultado; el control nuevo debe usar lectura de versiones. |

Las referencias anteriores apuntan a `analysis/decompiled/sources/`, que permanece sin modificar y documenta el APK original. Los originales de los diez archivos smali modificados (incluidos los tres ajustes de coexistencia detallados abajo) están en `analysis/offline-originals/`. La identidad del APK de entrada se conserva en `analysis/identity.json`.

## Verificación realizada

- Se comprobaron firmas y nombres reales en smali para las llamadas de parche, serializadores, campos de modelo, constructores de resultado e interfaces invocadas por reflexión.
- Se revisó el flujo de emparejamiento en `v9/i0.java:170–208`: produce el registro después de las respuestas reales de autenticación de ambas zapatillas y lo entrega al repositorio. No se altera ese flujo ni sus claves.
- El script se ejecutó y se repitió de forma idempotente: la segunda ejecución informó cero cambios sobre diez archivos inspeccionados. `analysis/offline-patch-state.json` contiene hashes de los archivos parcheados.
- Se verificó que el estado de firmware de `o7.f.d()` puede ser `null` sin pares; la navegación contempla expresamente ese caso.
- No se modificaron `PeripheralConnectionManager`, `AndroidManifest.xml`, los servicios de movimiento ni las comprobaciones de compatibilidad de comandos.

Quedan pendientes de la integración general la compilación/firma, la validación del DEX nuevo y las pruebas en Android real: primer emparejamiento sin Internet, cierre/reapertura conservando claves, reconexión de ambas zapatillas y lectura independiente de versiones. La revisión estática no demuestra esos resultados en ejecución.

## Lo que esta parte no establece

No añade extracción/restauración del firmware interno. La lectura de versión es información de identificación; un respaldo verificable exigiría una operación de lectura completa disponible en el protocolo o un acceso de hardware demostrado. Tampoco modifica actuadores, motores, detección de pisadas, iluminación o funcionamiento con pantalla apagada; esas funciones pertenecen a la integración del controlador nuevo.

## Coexistencia como paquete experimental

Revisión acotada posterior: cambiar el paquete instalable a `com.openadapt.experimental` permite mantener el sandbox original, pero requiere aislar el permiso `signature` declarado `com.nike.android.adaptkit.permission.ACCESS_ADAPT_KIT`. Además de la declaración y uso en el manifest, los literales en `wa/a.java:127` y `xa/b.java:102,115` protegen broadcasts internos. El script los sustituye en los dos archivos smali por `com.openadapt.experimental.permission.ACCESS_ADAPT_KIT`; la integración debe declarar y solicitar ese mismo permiso en el manifest. No se encontraron proveedores ni autoridades de ContentProvider en el manifest original. No se cambió el manifest durante esta revisión.

El servicio `OIDCAuthenticationService` declara el mismo tipo de cuenta Nike en `res/xml/authenticator.xml`; el clon offline debe quitar o deshabilitar ese autenticador para no competir por el tipo original. Persisten referencias intencionales a nombres de clases originales; las actividades explícitas utilizan el contexto y la clase, por lo que no necesitan renombrar el espacio de nombres Java. AdaptKit usa `context.getPackageName()` al etiquetar broadcasts (`xa/b.java:89`) y verificar su origen (`wa/a.java:66`); las acciones mantienen nombres Nike pero pueden aislarse por el permiso propio. Las constantes de Play Store, telemetría y cuenta Nike también siguen presentes; no se estableció compatibilidad de los servicios externos de un clon.

Un APK con firma propia no está autorizado a leer credenciales Nike existentes. `OfflinePairs.legacyPairs` contempla exclusivamente una `SecurityException` del lector legado invocado por reflexión y devuelve lista vacía, sin tocar o esconder errores de JSON local. El lector legado `db.b.eAccount` ya conserva su comportamiento original de capturar errores y devolver vacío. Además, `cc/e` inicializa OAuth leyendo `dc/a.get()`, cuyo manejo original vuelve a lanzar errores de AccountManager. El script añade en ese lector una rama que devuelve `null` únicamente si el error es `SecurityException`; los demás errores conservan el registro y propagación originales. No hay cambios en las operaciones de escritura o borrado del almacén de credenciales Nike ni se inventa un token.

Se aconseja el paquete experimental para preservar la instalación original. Conservar `com.nike.adapt` y firmarlo con una clave nueva normalmente impide actualizar sobre la app Nike; desinstalar para instalarlo elimina su almacenamiento privado. La coexistencia de apps no asegura que cambiar las claves físicas durante un emparejamiento deje conectable la app original: esa cuestión depende del protocolo y firmware del calzado y no se probó aquí.
