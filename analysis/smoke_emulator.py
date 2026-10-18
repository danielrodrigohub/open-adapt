"""Smoke test only on the named local emulator; never selects a physical phone."""
from pathlib import Path
import subprocess,time,xml.etree.ElementTree as ET,re,json,sys

base=Path(__file__).resolve().parent; out=base.parent/'output'
adb=Path.home()/'Library/Android/sdk/platform-tools/adb'
serial='emulator-5554'; pkg='com.openadapt.experimental'
records={}

def call(*args, binary=False):
    return subprocess.check_output([str(adb),'-s',serial,*map(str,args)],text=not binary,stderr=subprocess.STDOUT)
def record(name,value):
    records[name]=value; print(name+': '+str(value),flush=True)
def hierarchy(name):
    call('shell','uiautomator','dump','/sdcard/openadapt-ui.xml')
    text=call('shell','cat','/sdcard/openadapt-ui.xml')
    (out/name).write_text(text)
    return ET.fromstring(text)
def screenshot(name):
    (out/name).write_bytes(call('exec-out','screencap','-p',binary=True))
def tap_label(tree,label):
    for node in tree.iter('node'):
        if label in node.get('text',''):
            n=list(map(int,re.findall(r'\d+',node.get('bounds',''))))
            if len(n)==4:
                call('shell','input','tap',str((n[0]+n[2])//2),str((n[1]+n[3])//2));return True
    return False

assert call('shell','getprop','ro.kernel.qemu').strip()=='1','Not an emulator'
record('android_release',call('shell','getprop','ro.build.version.release').strip())
if '--skip-install' not in sys.argv:
    record('install_clone',call('install','-r','--no-streaming',out/'OpenAdapt-1.29.3-experimental.apk').strip())
display=call('shell','wm','size')
width,height=map(int,re.findall(r'(\d+)x(\d+)',display)[-1])
for permission in ['BLUETOOTH_CONNECT','BLUETOOTH_SCAN','POST_NOTIFICATIONS']:
    call('shell','pm','grant',pkg,'android.permission.'+permission)
call('logcat','-c')
call('shell','am','start','-W','-n',pkg+'/com.openadapt.ControlActivity')
time.sleep(4)
tree=hierarchy('ui-control.xml');screenshot('pantalla-control.png')
record('control_visible',any(n.get('text')=='OPEN ADAPT' for n in tree.iter('node')))
record('coexists_with_original',all(p in call('shell','pm','list','packages') for p in ['package:com.nike.adapt','package:'+pkg]))
record('open_original_controls',tap_label(tree,'Controles Adapt'))
time.sleep(3)
tree=hierarchy('ui-onboarding.xml');screenshot('pantalla-emparejamiento.png')
record('onboarding_text',[n.get('text') for n in tree.iter('node') if n.get('text')])
call('shell','am','start','-W','-n',pkg+'/com.openadapt.ControlActivity')
time.sleep(1)
call('shell','input','keyevent','223')
time.sleep(1)
record('screen_off_power',call('shell','dumpsys','power'))
record('service_screen_off',call('shell','dumpsys','activity','services',pkg))
record('sensor_turn_command',call('emu','sensor','set','gyroscope','0:1.2:0').strip())
time.sleep(0.7)
call('emu','sensor','set','gyroscope','0:0:0')
time.sleep(1)
record('motion_log',call('logcat','-d','-s','OpenAdapt:I','AndroidRuntime:E'))
call('shell','input','keyevent','224')
call('shell','wm','dismiss-keyguard')
time.sleep(1)
for attempt in range(5):
    tree=hierarchy('ui-final.xml')
    if tap_label(tree,'DETENER TODO'):
        record('stop_button_tapped',True);break
    call('shell','input','swipe',str(width//2),str(height*8//10),str(width//2),str(height*2//10),'400')
time.sleep(2)
record('service_after_stop',call('shell','dumpsys','activity','services',pkg))
record('crashes',call('logcat','-d','-s','AndroidRuntime:E'))
(out/'emulator-smoke.json').write_text(json.dumps(records,ensure_ascii=False,indent=2))
