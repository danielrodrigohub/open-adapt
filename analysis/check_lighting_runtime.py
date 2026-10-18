"""Build a private instrumentation fixture and run it only on the owned emulator."""
from pathlib import Path
import sys,subprocess,zipfile,json,hashlib,os
root=Path(__file__).resolve().parents[1];sys.path.insert(0,str(root/'scripts'))
from runtime import java_home,android_sdk
sdk=android_sdk();bt=sdk/'build-tools/36.0.0';android=sdk/'platforms/android-36/android.jar';jdk=java_home();adb=sdk/'platform-tools/adb'
serial=os.environ.get('OPENADAPT_TEST_SERIAL','emulator-5556');pkg='com.openadapt.experimental';work=root/'analysis/openadapt/build/lighting-instrumentation';work.mkdir(exist_ok=True)
def run(a):return subprocess.check_output(list(map(str,a)),stderr=subprocess.STDOUT,text=True,timeout=120)
assert run([adb,'-s',serial,'shell','getprop','ro.kernel.qemu']).strip()=='1','Only the owned Android emulator is permitted'
apk=root/'output/OpenAdapt-1.29.3-experimental.apk';installed=run([adb,'-s',serial,'shell','pm','path',pkg]).strip().split('package:')[1]
sha=hashlib.sha256(apk.read_bytes()).hexdigest();assert run([adb,'-s',serial,'shell','sha256sum',installed]).split()[0]==sha
manifest=work/'AndroidManifest.xml';manifest.write_text('''<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="com.openadapt.instrumentation"><uses-sdk android:minSdkVersion="24" android:targetSdkVersion="33"/><application android:label="OpenAdapt owned emulator checks" android:testOnly="true"/><instrumentation android:name="com.openadapt.instrumentation.LightingRuntimeCheck" android:targetPackage="com.openadapt.experimental"/></manifest>''')
classes=work/'classes';classes.mkdir(exist_ok=True)
print(run([jdk/'bin/javac','--release','8','-classpath',android,'-d',classes,root/'analysis/openadapt/instrumentation/LightingRuntimeCheck.java']))
jar=work/'test.jar'
with zipfile.ZipFile(jar,'w') as z:
 for f in classes.rglob('*.class'):z.write(f,f.relative_to(classes))
dex=work/'dex';dex.mkdir(exist_ok=True);run([bt/'d8','--min-api','24','--lib',android,'--output',dex,jar])
base=work/'base.apk';run([bt/'aapt','package','-f','-M',manifest,'-I',android,'-F',base])
with zipfile.ZipFile(base,'a') as z:z.writestr('classes.dex',(dex/'classes.dex').read_bytes())
aligned=work/'aligned.apk';run([bt/'zipalign','-f','4',base,aligned]);signed=work/'test.apk'
run([bt/'apksigner','sign','--ks',root/'.signing/openadapt-local.p12','--ks-key-alias','openadapt-local','--ks-pass','file:'+str(root/'.signing/keypass.txt'),'--out',signed,aligned])
print(run([adb,'-s',serial,'install','-t','-r','--no-streaming',signed]))
output=run([adb,'-s',serial,'shell','am','instrument','-w','com.openadapt.instrumentation/com.openadapt.instrumentation.LightingRuntimeCheck']);print(output)
run([adb,'-s',serial,'shell','am','force-stop',pkg])
run([adb,'-s',serial,'uninstall','com.openadapt.instrumentation'])
assert 'PASS:' in output and 'FAIL:' not in output,output
(root/'output/lighting-runtime-summary.json').write_text(json.dumps({'apk_sha256':sha,'version':json.loads((root/'analysis/openadapt/version.json').read_text())['projectVersion'],'result':output.strip(),'physical_shoes_tested':False,'scope':'Packaged ADK classes and cancellation hooks using owned emulator fixtures; no Bluetooth connection requested'},indent=2)+'\n')
