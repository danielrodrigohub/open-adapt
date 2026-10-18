# Actualizaciones desde GitHub y conservación del emparejamiento

La versión 0.3.0 incorpora el actualizador en **Sistema → Actualizaciones de la app**. Esta primera versión debe instalarse sobre la experimental anterior; después permite buscar, descargar y solicitar la instalación de versiones nuevas sin ir a buscar el APK en el navegador.

## Uso

1. Activa **Buscar al abrir la app** para consultar GitHub al iniciar, con un intervalo mínimo de seis horas. También puedes usar **Buscar actualizaciones** en cualquier momento.
2. Si hay una versión más nueva compatible, el panel muestra **Descargar e instalar**.
3. La app descarga desde el repositorio público `danielrodrigohub/open-adapt`, comprueba el tamaño, SHA-256, paquete, versión y certificado de firma frente a la instalación actual.
4. Android puede pedir autorizar instalaciones de Open Adapt. Concede esa autorización y vuelve para pulsar **Instalar actualización**. La instalación requiere confirmación del sistema; no es silenciosa.
5. El control de luces y motor se detiene antes de abrir el instalador. Vuelve a abrir la app después de actualizar para reconectar.

La consulta admite releases experimentales y estables con tags `vX.Y.Z-experimental` o `vX.Y.Z`. Solo se instalan versiones de proyecto y códigos Android superiores. Una comprobación sin Internet no bloquea el control local de las zapatillas.

## Datos que se conservan

La actualización reemplaza el APK de `com.openadapt.experimental` con otro firmado por la misma clave. No desinstala, no borra preferencias y no modifica la base de emparejamiento. `OfflinePairs` sigue usando `openadapt_offline_pairs` y su clave `pairs_v1`; los ajustes se mantienen en `openadapt_controls`. El actualizador solo escribe sus preferencias y un APK en su caché.

La conexión Bluetooth puede interrumpirse mientras Android sustituye el proceso. Al abrir la app, la reconexión usa las claves locales existentes. Conservar el emparejamiento no significa mantener el mismo enlace Bluetooth abierto durante la instalación.

Desinstalar, borrar los datos de la app o perder/cambiar la clave de firma impide este flujo de conservación. Un APK con otra firma es rechazado. Los datos privados de la app Nike original siguen separados.

La prueba en emulador verifica conservación de ajustes y actualización de paquete; no sustituye una actualización con un par físico autenticado. No se generan claves Bluetooth falsas para simular ese resultado.

## Publicar la siguiente versión

Conserva fuera del repositorio una copia segura de `.signing/openadapt-local.p12` y `.signing/keypass.txt`. La reconstrucción migra la clave local anterior desde `analysis/openadapt/build/` cuando existe. Las claves y contraseñas están excluidas de Git. Crear otra clave rompe la continuidad con las instalaciones publicadas.

```sh
python3 scripts/set_version.py 0.4.0
python3 analysis/build_openadapt.py
python3 scripts/run_tests.py
```

Actualiza `RELEASE_NOTES.md`, revisa y confirma los cambios de fuentes, versión e identidad del artefacto, y súbelos a `main`. Después:

```sh
python3 scripts/publish_release.py --dry-run
python3 scripts/publish_release.py
```

El publicador comprueba el APK, su metadata, el commit remoto y la continuidad del certificado con la release anterior que incluye metadata. Publica tres archivos: el APK, `openadapt-update.json` y `SHA256SUMS.txt`. No sube la clave privada. Requiere GitHub CLI autenticado con permiso de publicación en el repositorio.

El archivo `openadapt-update.json` se genera automáticamente al construir. No reutilices la metadata de otro APK y no publiques una nueva actualización con el mismo `versionCode`. Las releases antiguas sin metadata siguen disponibles para descarga manual; no se ofrecen como actualizaciones internas.

## Alcance

Este actualizador es de la aplicación Android. No instala firmware en las zapatillas ni restaura las consultas obligatorias de Nike que se eliminaron del acceso local.

Referencias de Android: [firma de aplicaciones](https://developer.android.com/studio/publish/app-signing) y [permiso de instalación por aplicación](https://developer.android.com/reference/android/content/pm/PackageManager#canRequestPackageInstalls()).
