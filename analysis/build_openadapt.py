"""Build a locally signed experimental APK without Gradle or global tool installs."""
from pathlib import Path
import subprocess, zipfile, os, secrets, hashlib, json, sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from runtime import java_home, android_sdk

base=Path(__file__).resolve().parent
work=base/'openadapt'; build=work/'build'; build.mkdir(parents=True,exist_ok=True)
sdk=android_sdk(); bt=sdk/'build-tools/36.0.0'
android=sdk/'platforms/android-36/android.jar'
jhome=java_home()
java=str(jhome/'bin/java')

if not android.is_file() or not bt.is_dir():
    raise SystemExit('Install Android SDK Platform 36 and Build Tools 36.0.0 before building.')
if not (base/'tools/apktool_3.0.3.jar').is_file():
    raise SystemExit('Run python3 scripts/setup_tools.py before building.')

def run(args): subprocess.run([str(a) for a in args],check=True)
run(['python3',base/'patch_offline.py'])
run(['python3',base/'patch_motion.py'])
classes=build/'classes'; classes.mkdir(exist_ok=True)
sources=sorted((work/'src').rglob('*.java'))
run([jhome/'bin/javac','-encoding','UTF-8','--release','8','-classpath',android,'-d',classes,*sources])
jar=build/'openadapt.jar'
with zipfile.ZipFile(jar,'w') as z:
    for f in sorted(classes.rglob('*.class')): z.write(f,f.relative_to(classes))
dex=build/'dex'; dex.mkdir(exist_ok=True)
run([bt/'d8','--min-api','24','--lib',android,'--output',dex,jar])
unsigned=build/'rebuilt.apk'
# Apktool's patched aapt2 supports the original compiler-generated "$" resource names.
run([java,'-jar',base/'tools/apktool_3.0.3.jar','b',base/'decoded','-o',unsigned])
combined=build/'with-controls.apk'
with zipfile.ZipFile(unsigned) as zin,zipfile.ZipFile(combined,'w') as zout:
    for entry in zin.infolist(): zout.writestr(entry,zin.read(entry.filename))
    assert 'classes3.dex' not in zin.namelist()
    zout.writestr('classes3.dex',(dex/'classes.dex').read_bytes())
aligned=build/'aligned.apk'
run([bt/'zipalign','-f','-P','16','4',combined,aligned])
keystore=build/'openadapt-local.p12'; password=build/'keypass.txt'
if not keystore.exists():
    password.write_text(secrets.token_urlsafe(24)); password.chmod(0o600)
    run([jhome/'bin/keytool','-genkeypair','-keystore',keystore,'-storepass:file',password,'-keypass:file',password,
        '-alias','openadapt-local','-keyalg','RSA','-keysize','3072','-validity','3650','-dname','CN=Open Adapt Local Test'])
out=base.parent/'output'; out.mkdir(exist_ok=True)
apk=out/'OpenAdapt-1.29.3-experimental.apk'
run([bt/'apksigner','sign','--ks',keystore,'--ks-key-alias','openadapt-local','--ks-pass','file:'+str(password),
    '--out',apk,aligned])
run([bt/'apksigner','verify','--verbose',apk])
run([bt/'zipalign','-c','-P','16','4',apk])
(out/'build-identity.json').write_text(json.dumps({'apk':apk.name,'sha256':hashlib.sha256(apk.read_bytes()).hexdigest(),
    'source_apk_sha256':'86366a781de87cae2b672a15ee48d163335e101975e33be0ef8d69da7e688172',
    'tested_on_physical_shoes':False,'signature':'local experimental key; different from Nike',
    'package':'com.openadapt.experimental'},indent=2))
print(apk)
