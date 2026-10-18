"""Reproducible additions for the exact decoded Nike Adapt 1.29.3 APK."""
from pathlib import Path
import re
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parent
decoded = ROOT / 'decoded'

def edit_method(path, signature, change):
    text = path.read_text()
    pattern = re.compile(r'(?ms)^\.method '+re.escape(signature)+r'\n.*?^\.end method')
    match = pattern.search(text)
    if not match: raise RuntimeError(f'Missing method: {path} {signature}')
    original = match.group()
    revised = change(original)
    if revised != original:
        backup = ROOT / 'motion-originals' / path.relative_to(decoded)
        backup.parent.mkdir(parents=True, exist_ok=True)
        if not backup.exists(): backup.write_text(text)
        path.write_text(text[:match.start()]+revised+text[match.end():])

def register(text):
    if 'Lcom/openadapt/Bridge;->registerCore' in text: return text
    assert text.count('    return-void') == 1
    return text.replace('    return-void', '    invoke-static {p0}, Lcom/openadapt/Bridge;->registerCore(Ljava/lang/Object;)V\n\n    return-void')

def background(text):
    if 'Lcom/openadapt/MotionService;->active' in text: return text
    return text.replace('    .locals 4', '''    .locals 4

    sget-boolean v0, Lcom/openadapt/MotionService;->active:Z
    if-eqz v0, :openadapt_normal_stop
    return-void
    :openadapt_normal_stop''',1)

edit_method(decoded/'smali/hc/l.smali','public constructor <init>(Ljava/lang/String;)V',register)
edit_method(decoded/'smali/com/nike/adapt/PeripheralConnectionManager.smali','public final onStop(Landroidx/lifecycle/q;)V',background)

android='http://schemas.android.com/apk/res/android'
ET.register_namespace('android',android)
A='{'+android+'}'
manifest=decoded/'AndroidManifest.xml'
tree=ET.parse(manifest); root=tree.getroot(); app=root.find('application')
root.set('package','com.openadapt.experimental')
for tag in ['uses-permission','permission']:
    for item in root.findall(tag):
        if item.get(A+'name')=='com.nike.android.adaptkit.permission.ACCESS_ADAPT_KIT':
            item.set(A+'name','com.openadapt.experimental.permission.ACCESS_ADAPT_KIT')
for service in app.findall('service'):
    if service.get(A+'name')=='com.nike.authcomponent.oidc.internal.store.OIDCAuthenticationService':
        service.set(A+'enabled','false')
for permission in ['android.permission.FOREGROUND_SERVICE_CONNECTED_DEVICE']:
    if not any(e.get(A+'name')==permission for e in root.findall('uses-permission')):
        ET.SubElement(root,'uses-permission',{A+'name':permission})
app.set(A+'label','Open Adapt · experimental')
# Keep the original entry available through the new local control panel.
for activity in app.findall('activity'):
    if activity.get(A+'name')=='com.nike.adapt.SplashScreenActivity':
        for intent in list(activity.findall('intent-filter')):
            if any(e.get(A+'name')=='android.intent.action.MAIN' for e in intent.findall('action')):
                activity.remove(intent)
if not any(e.get(A+'name')=='com.openadapt.ControlActivity' for e in app.findall('activity')):
    control=ET.SubElement(app,'activity',{A+'name':'com.openadapt.ControlActivity',A+'exported':'true',A+'theme':'@android:style/Theme.Material.Light.NoActionBar'})
    f=ET.SubElement(control,'intent-filter')
    ET.SubElement(f,'action',{A+'name':'android.intent.action.MAIN'})
    ET.SubElement(f,'category',{A+'name':'android.intent.category.LAUNCHER'})
for control in app.findall('activity'):
    if control.get(A+'name')=='com.openadapt.ControlActivity':
        control.set(A+'launchMode','singleTask')
        control.set(A+'taskAffinity','com.openadapt.experimental.controls')
if not any(e.get(A+'name')=='com.openadapt.MotionService' for e in app.findall('service')):
    ET.SubElement(app,'service',{A+'name':'com.openadapt.MotionService',A+'exported':'false',A+'foregroundServiceType':'connectedDevice',A+'stopWithTask':'false'})
serialized=ET.tostring(root,encoding='utf-8',xml_declaration=True)
if manifest.read_bytes()!=serialized:
    manifest.write_bytes(serialized)
print('Motion hooks and manifest prepared.')
