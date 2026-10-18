"""Dashboard navigation smoke checks, restricted to a local Android emulator."""
from pathlib import Path
import subprocess,time,xml.etree.ElementTree as ET,re,json,hashlib,sys,os,argparse

root=Path(__file__).resolve().parent.parent
sys.path.insert(0,str(root/'scripts'))
from runtime import android_sdk
adb=android_sdk()/'platform-tools'/('adb.exe' if os.name=='nt' else 'adb')
serial=os.environ.get('OPENADAPT_TEST_SERIAL','emulator-5554');pkg='com.openadapt.experimental';out=root/'output'
parser=argparse.ArgumentParser();parser.add_argument('--skip-install',action='store_true');parser.add_argument('--apk',type=Path,default=out/'OpenAdapt-1.29.3-experimental.apk');options=parser.parse_args()
apk=options.apk
records={}
tested_sha=hashlib.sha256(apk.read_bytes()).hexdigest()
def call(*args,binary=False,timeout=120):
    return subprocess.check_output([str(adb),'-s',serial,*map(str,args)],text=not binary,stderr=subprocess.STDOUT,timeout=timeout)
def tree():
    for attempt in range(3):
        call('shell','rm','-f','/sdcard/openadapt-ui.xml')
        dump=call('shell','uiautomator','dump','/sdcard/openadapt-ui.xml')
        if 'UI hier' not in dump:
            time.sleep(1);continue
        xml=call('shell','cat','/sdcard/openadapt-ui.xml');result=ET.fromstring(xml)
        if not any("System UI isn't responding" in n.get('text','') for n in result.iter('node')):return result
        close=next(n for n in result.iter('node') if n.get('resource-id')=='android:id/aerr_close')
        a=list(map(int,re.findall(r'\d+',close.get('bounds'))))
        call('shell','input','tap',(a[0]+a[2])//2,(a[1]+a[3])//2)
        records['system_ui_anr_dismissals']=records.get('system_ui_anr_dismissals',0)+1
        print('Restarted unresponsive emulator System UI',flush=True)
    raise AssertionError('A fresh UI hierarchy could not be captured')
def norm(value):
    return re.sub(r"\s+"," ",value.replace(chr(92)+"n"," ")).casefold()
def match(t,label):
    switches={'Luces continuas','Movimiento de cordones','Buscar al abrir la app'}
    return next((n for n in t.iter("node") if norm(n.get("text",""))==norm(label) or norm(n.get("content-desc",""))==norm(label) or (label in switches and n.get('class','').endswith('Switch') and norm(n.get('text','')).startswith(norm(label)))),None)
def tap(label,search=False):
    for _ in range(6 if search else 1):
        t=tree(); n=match(t,label)
        if n is not None:
            a=list(map(int,re.findall(r'\d+',n.get('bounds',''))))
            if len(a)==4 and a[2]>a[0] and a[3]>a[1]:
                call('shell','input','tap',(a[0]+a[2])//2,(a[1]+a[3])//2);return
        call('shell','input','swipe',width//2,int(height*.7),width//2,int(height*.3),350)
    raise AssertionError('UI item not found: '+label)
def has(label):
    t=tree()
    if match(t,label) is None:
        (root/'analysis/openadapt/build/dashboard-failure.xml').write_bytes(ET.tostring(t))
        (root/'analysis/openadapt/build/dashboard-failure.png').write_bytes(call('exec-out','screencap','-p',binary=True))
        raise AssertionError(label+': '+repr([n.get('text') for n in t.iter('node') if n.get('text')]))

def screenshot(name):
    (out/name).write_bytes(call('exec-out','screencap','-p',binary=True))
def record(key,value=True):
    records[key]=value;print(key+': '+str(value),flush=True)
for _ in range(40):
    try:
        if call('shell','getprop','sys.boot_completed',timeout=5).strip()=='1':break
    except subprocess.SubprocessError:pass
    time.sleep(2)
else:raise RuntimeError('Emulator not ready')
assert call('shell','getprop','ro.kernel.qemu').strip()=='1','Only emulator testing is permitted'
if 'Override density' in call('shell','wm','density'):call('shell','wm','density','reset')
if call('shell','settings','get','system','font_scale').strip() not in ['1.0','1']:call('shell','settings','put','system','font_scale','1.0')
width,height=map(int,re.findall(r'(\d+)x(\d+)',call('shell','wm','size'))[-1])
if options.skip_install:
    installed=call('shell','pm','path',pkg).strip().split('package:')[1]
    assert call('shell','sha256sum',installed).split()[0]==tested_sha
    record('install','existing APK hash verified')
else:
    record('install',call('install','-r','--no-streaming',apk,timeout=180).strip().splitlines()[-1])
for permission in ['BLUETOOTH_CONNECT','BLUETOOTH_SCAN','POST_NOTIFICATIONS']:
    call('shell','pm','grant',pkg,'android.permission.'+permission)
call('shell','input','keyevent',224);call('shell','wm','dismiss-keyguard')
call('shell','am','force-stop',pkg);call('logcat','-c')
call('shell','am','start','-W','-n',pkg+'/com.openadapt.ControlActivity');time.sleep(3)
tap('Inicio');has('Tu par.\nA tu manera.');has('IZQUIERDA');has('DERECHA')
record('home_battery_cards_visible');screenshot('interfaz-inicio.png')
tap('Luces');has('Dale luz.');screenshot('interfaz-luces.png');record('lights_page_visible')
tap('Lila');has('Lila · ambas zapatillas');time.sleep(2);has('Izquierda: sin conexión autenticada\nDerecha: sin conexión autenticada');record('color_selection_attempts_light_on_both_without_fake_success')
if match(tree(),'Luces continuas').get('checked')!='true':tap('Luces continuas')
tap('Aplicar opciones');time.sleep(3)
call('shell','am','force-stop',pkg);call('shell','am','start','-W','-n',pkg+'/com.openadapt.ControlActivity');time.sleep(2)
tap('Luces');has('Lila · ambas zapatillas');assert match(tree(),'Luces continuas').get('checked')=='true'
record('color_and_continuous_settings_survive_restart')
tap('Azul hielo');tap('Luces continuas');tap('Aplicar opciones')
tap('Movimiento');has('Sigue el ritmo.');screenshot('interfaz-movimiento.png');record('movement_page_visible')
tap('Solo control manual',search=True);tap('Aplicar opciones')
tap('Movimiento de cordones',search=True);has('Activar prueba');tap('Cancelar');assert match(tree(),'Activar prueba') is None
record('motor_confirmation_cancelled_without_enabling')
for _ in range(2):call('shell','input','swipe',width//2,int(height*.3),width//2,int(height*.7),350)
tap('Giros del teléfono');tap('Aplicar opciones')
tap('Ajuste');has('A tu medida.');has('Ambas');has('Sin conexión autenticada');screenshot('interfaz-ajuste.png');record('manual_fit_page_visible_and_disconnected_controls_disabled')
assert match(tree(),'Ajustar +1').get('enabled')=='false'
assert match(tree(),'Aflojar −1').get('enabled')=='false'
tap('Sistema');has('Conoce tu par.');screenshot('interfaz-sistema.png');record('system_page_visible')
tap('Ver diagnóstico',search=True);has('Diagnóstico de las zapatillas');tap('Cerrar');record('diagnostic_dialog_opens')
tap('Guardar diagnóstico…',search=True)
for _ in range(8):
    if any('openadapt-diagnostico' in n.get('text','') for n in tree().iter('node')):break
    time.sleep(1)
else:raise AssertionError('Diagnostic export picker did not open')
call('shell','input','keyevent',4);record('diagnostic_export_picker_opens')
for _ in range(3):
    if match(tree(),'Detener') is not None:break
    call('shell','input','keyevent',4)
tap('Detener');time.sleep(2)
service=call('shell','dumpsys','activity','services',pkg)
assert 'ServiceRecord' not in service or 'com.openadapt.MotionService' not in service
record('persistent_stop_action_stops_service')
call('shell','settings','put','system','font_scale','1.3')
try:
    call('shell','am','force-stop',pkg);call('shell','am','start','-W','-n',pkg+'/com.openadapt.ControlActivity');time.sleep(2)
    tap('Luces');has('Dale luz.');tap('Movimiento');has('Sigue el ritmo.');tap('Sistema');has('Conoce tu par.')
    record('navigation_at_font_scale_1_3');screenshot('interfaz-texto-grande.png')
finally:
    call('shell','settings','put','system','font_scale','1.0');call('shell','am','force-stop',pkg)
crashes=call('logcat','-d','-s','AndroidRuntime:E');assert 'FATAL EXCEPTION' not in crashes,crashes
records.update({'android_release':call('shell','getprop','ro.build.version.release').strip(),'apk_sha256':tested_sha,'android_runtime_exceptions_recorded':False,'physical_shoes_tested':False,'project_version':json.loads((root/'analysis/openadapt/version.json').read_text())['projectVersion']})
(out/'dashboard-emulator-summary.json').write_text(json.dumps(records,ensure_ascii=False,indent=2)+'\n')
print('Dashboard smoke checks passed',flush=True)
