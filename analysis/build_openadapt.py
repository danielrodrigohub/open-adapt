"""Build a locally signed experimental APK without Gradle or global tool installs."""
from pathlib import Path
import subprocess, zipfile, os, secrets, hashlib, json, sys, re, shutil

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

version=json.loads((work/'version.json').read_text())
assert re.fullmatch(r'[0-9]+\.[0-9]+\.[0-9]+',version['projectVersion'])
assert 2017062198 < version['versionCode'] <= 2147483647
assert version['versionName']==version['projectVersion']+'-openadapt'
(work/'src/com/openadapt/BuildInfo.java').write_text('package com.openadapt;\n/** Generated from analysis/openadapt/version.json by the build script. */\npublic final class BuildInfo {\n    public static final String VERSION="'+version['projectVersion']+'";\n    private BuildInfo() {}\n}\n')
yaml=base/'decoded/apktool.yml'
config=yaml.read_text()
config=re.sub(r'(?m)^  versionCode:.*$', '  versionCode: '+str(version['versionCode']),config)
config=re.sub(r'(?m)^  versionName:.*$', '  versionName: '+version['versionName'],config)
yaml.write_text(config)

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
# Recompile the manifest even when only apktool.yml versionInfo changed.
# Apktool otherwise may reuse a cached manifest with an older version.
(base/'decoded/AndroidManifest.xml').touch()
# Apktool's patched aapt2 supports the original compiler-generated "$" resource names.
run([java,'-jar',base/'tools/apktool_3.0.3.jar','b',base/'decoded','-o',unsigned])
combined=build/'with-controls.apk'
with zipfile.ZipFile(unsigned) as zin,zipfile.ZipFile(combined,'w') as zout:
    for entry in zin.infolist(): zout.writestr(entry,zin.read(entry.filename))
    assert 'classes3.dex' not in zin.namelist()
    zout.writestr('classes3.dex',(dex/'classes.dex').read_bytes())
aligned=build/'aligned.apk'
run([bt/'zipalign','-f','-P','16','4',combined,aligned])
signing=base.parent/'.signing'; signing.mkdir(mode=0o700,exist_ok=True)
keystore=signing/'openadapt-local.p12'; password=signing/'keypass.txt'
if not keystore.exists() and (build/'openadapt-local.p12').exists():
    if not (build/'keypass.txt').exists(): raise SystemExit('Existing signing key has no password file; restore it before building.')
    shutil.copy2(build/'openadapt-local.p12',keystore)
    shutil.copy2(build/'keypass.txt',password)
    keystore.chmod(0o600); password.chmod(0o600)
if keystore.exists() and not password.exists(): raise SystemExit('Restore the signing password; do not generate a replacement signing key.')
if not keystore.exists():
    password.write_text(secrets.token_urlsafe(24)); password.chmod(0o600)
    run([jhome/'bin/keytool','-genkeypair','-keystore',keystore,'-storepass:file',password,'-keypass:file',password,
        '-alias','openadapt-local','-keyalg','RSA','-keysize','3072','-validity','3650','-dname','CN=Open Adapt Local Test'])
out=base.parent/'output'; out.mkdir(exist_ok=True)
apk=out/'OpenAdapt-1.29.3-experimental.apk'
run([bt/'apksigner','sign','--ks',keystore,'--ks-key-alias','openadapt-local','--ks-pass','file:'+str(password),
    '--out',apk,aligned])
run([bt/'apksigner','verify','--verbose',apk])
verification=subprocess.check_output([str(bt/'apksigner'),'verify','--print-certs',str(apk)],text=True)
certificate=re.search(r'Signer #1 certificate SHA-256 digest: ([0-9a-f]+)',verification).group(1)
run([bt/'zipalign','-c','-P','16','4',apk])
badging=subprocess.check_output([str(bt/'aapt'),'dump','badging',str(apk)],text=True).splitlines()[0]
if "versionCode='"+str(version['versionCode'])+"'" not in badging or "versionName='"+version['versionName']+"'" not in badging:
    raise SystemExit('Packaged APK version differs from version.json; no release metadata was written.')
(out/'build-identity.json').write_text(json.dumps({'apk':apk.name,'sha256':hashlib.sha256(apk.read_bytes()).hexdigest(),
    'source_apk_sha256':'86366a781de87cae2b672a15ee48d163335e101975e33be0ef8d69da7e688172',
    'tested_on_physical_shoes':False,'signature':'local experimental key; different from Nike',
    'package':'com.openadapt.experimental','project_version':version['projectVersion'],
    'version_code':version['versionCode'],'signer_sha256':certificate},indent=2))
sha=hashlib.sha256(apk.read_bytes()).hexdigest()
(out/'openadapt-update.json').write_text(json.dumps({'schema':1,'version':version['projectVersion'],
    'versionCode':version['versionCode'],'packageName':'com.openadapt.experimental','minSdk':24,
    'apk':apk.name,'size':apk.stat().st_size,'sha256':sha,'signerSha256':certificate},indent=2)+'\n')
(out/'SHA256SUMS.txt').write_text(sha+'  '+apk.name+'\n')
print(apk)
