package com.openadapt;

import android.Manifest;
import android.app.*;
import android.content.*;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.*;
import android.graphics.drawable.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import java.io.*;
import java.util.*;

/** Independent native dashboard. All device commands remain in MotionService. */
public final class ControlActivity extends Activity {
    static final int BG=0xfff3f5f6,INK=0xff151a20,MUTED=0xff5d6874,LINE=0xffe1e6ea,ACCENT=0xff007f73;
    final Handler handler=new Handler(Looper.getMainLooper());
    final int[] palette={0x25c7ff,0xff4d5e,0x6aee9e,0xe6b7ff,0xffb347,0xffffff};
    final String[] colorNames={"Azul hielo","Coral","Verde","Lila","Ámbar","Blanco"};
    final LinearLayout[] pages=new LinearLayout[5];
    final ScrollView[] scrolls=new ScrollView[5];
    final TextView[] navLabels=new TextView[5],batteryValues=new TextView[2],batteryHints=new TextView[2];
    final ProgressBar[] batteryBars=new ProgressBar[2];
    final FrameLayout[] swatches=new FrameLayout[6];
    final TextView[] modeTitles=new TextView[3];
    final LinearLayout[] modeCards=new LinearLayout[3];
    final NavIcon[] navIcons=new NavIcon[5];
    TextView state,connection,pairName,colorLabel,batteryAlert,laceStatus,laceChange,lightStatus;
    final TextView[] laceValues=new TextView[2],laceHints=new TextView[2],lacePreviews=new TextView[2];
    final LaceArtwork[] laceArts=new LaceArtwork[2];
    final Button[] laceSelectors=new Button[3];
    Button lacePlus,laceMinus,laceApply,laceStop;
    SeekBar laceSlider;
    int laceMask=3,laceDelta;
    boolean laceDialog;
    Switch continuous,motor;
    Button applyButton,checkUpdates,installUpdate;
    TextView updateStatus,updateBanner;
    AppUpdater updater;
    boolean installAfterDownload,resumed;
    ShoeArtwork artwork;
    boolean ready,pendingMotorDialog;
    int colorIndex,modeIndex,page;

    @Override public void onCreate(Bundle saved) {
        super.onCreate(saved);
        getWindow().setStatusBarColor(BG); getWindow().setNavigationBarColor(Color.WHITE);
        getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR|(Build.VERSION.SDK_INT>=26?View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR:0));
        SharedPreferences prefs=getSharedPreferences("openadapt_controls",0);
        colorIndex=clamp(saved==null?prefs.getInt("color",0):saved.getInt("color"),6);
        modeIndex=clamp(saved==null?prefs.getInt("mode",0):saved.getInt("mode"),3);
        LinearLayout shell=column(); shell.setBackgroundColor(BG);
        LinearLayout top=row(); top.setPadding(dp(22),dp(15),dp(22),dp(12));
        TextView brand=text("OPEN ADAPT",17,true,INK); brand.setLetterSpacing(.09f); top.addView(brand,new LinearLayout.LayoutParams(0,-2,1));
        TextView badge=text("EXPERIMENTAL",10,true,ACCENT); badge.setLetterSpacing(.07f); badge.setPadding(dp(10),dp(7),dp(10),dp(7)); badge.setBackground(shape(0xffe0f2ed,20,0)); top.addView(badge); shell.addView(top);
        updateBanner=text("",13,true,ACCENT); updateBanner.setGravity(Gravity.CENTER); updateBanner.setPadding(dp(16),dp(10),dp(16),dp(10)); updateBanner.setBackgroundColor(0xffe1f3ef); updateBanner.setVisibility(View.GONE); updateBanner.setOnClickListener(v->showPage(3)); shell.addView(updateBanner);
        batteryAlert=text("",12,true,0xffa0332d);batteryAlert.setPadding(dp(20),dp(10),dp(20),dp(10));batteryAlert.setBackgroundColor(0xffffe7df);batteryAlert.setVisibility(View.GONE);shell.addView(batteryAlert);
        FrameLayout content=new FrameLayout(this); shell.addView(content,new LinearLayout.LayoutParams(-1,0,1));
        for(int i=0;i<pages.length;i++) {
            scrolls[i]=new ScrollView(this); scrolls[i].setFillViewport(true); scrolls[i].setClipToPadding(false);
            pages[i]=column(); pages[i].setFocusableInTouchMode(true); pages[i].setPadding(dp(20),dp(8),dp(20),dp(24));
            scrolls[i].addView(pages[i],new ScrollView.LayoutParams(-1,-2)); content.addView(scrolls[i]);
        }
        buildHome(); buildLights(); buildMotion(); buildSystem(); buildLaces();
        continuous.setChecked(saved==null?prefs.getBoolean("continuous",false):saved.getBoolean("continuous"));
        motor.setOnCheckedChangeListener((button,checked)->{
            if(!ready) return;
            if(checked) {
                pendingMotorDialog=true;
                dialog().setTitle("Movimiento de cordones")
                    .setMessage("Pruébalo primero con las zapatillas quietas y fuera de los pies. Afloja 1 % y vuelve al ajuste inicial solo si confirma el recorrido. El sonido depende del motor. Usa Detener para interrumpirlo.")
                    .setPositiveButton("Activar prueba",(d,w)->{ pendingMotorDialog=false; apply(); })
                    .setNegativeButton("Cancelar",(d,w)->cancelMotor())
                    .setOnCancelListener(d->cancelMotor()).show();
            } else apply();
        });
        LinearLayout actions=row(); actions.setPadding(dp(20),dp(12),dp(20),dp(10)); actions.setBackgroundColor(Color.WHITE);
        applyButton=styledButton("Iniciar control",true,v->{if(page==4)command("LACE_READ");else apply(page==1);}); actions.addView(applyButton,new LinearLayout.LayoutParams(0,dp(52),1));
        Button stop=styledButton("Detener",false,v->stopControl()); stop.setTextColor(0xffaf3342); LinearLayout.LayoutParams stopParams=new LinearLayout.LayoutParams(dp(104),dp(52)); stopParams.leftMargin=dp(10); actions.addView(stop,stopParams); shell.addView(actions);
        LinearLayout nav=row(); nav.setBackgroundColor(Color.WHITE); nav.setPadding(dp(8),0,dp(8),dp(8));
        String[] titles={"Inicio","Luces","Movimiento","Sistema","Ajuste"};
        for(int i=0;i<pages.length;i++) {
            final int index=i; LinearLayout tab=column(); tab.setGravity(Gravity.CENTER); tab.setPadding(0,dp(5),0,dp(5));
            navIcons[i]=new NavIcon(i); tab.addView(navIcons[i],new LinearLayout.LayoutParams(dp(22),dp(22)));
            navLabels[i]=text(titles[i],11,true,MUTED); navLabels[i].setGravity(Gravity.CENTER); navLabels[i].setPadding(0,dp(4),0,0); tab.addView(navLabels[i]);
            tab.setContentDescription(titles[i]); tab.setFocusable(true); tab.setOnClickListener(v->showPage(index)); nav.addView(tab,new LinearLayout.LayoutParams(0,dp(60+40*Math.max(0,getResources().getConfiguration().fontScale-1)),1));
        }
        shell.addView(nav); setContentView(shell); ready=true;
        ready=false; selectColor(colorIndex); ready=true; selectMode(modeIndex); showPage(saved==null?0:clamp(saved.getInt("page"),pages.length));
        if(hasPermissions()) apply(); else permissions();
        updater=new AppUpdater(this,(message,offer,downloaded,busy)->{
            updateText(updateStatus,message); checkUpdates.setEnabled(!busy); installUpdate.setEnabled(!busy);
            installUpdate.setVisibility(offer==null?View.GONE:View.VISIBLE); installUpdate.setText(downloaded?"Instalar actualización":"Descargar e instalar");
            updateBanner.setVisibility(offer==null?View.GONE:View.VISIBLE);
            if(offer!=null)updateText(updateBanner,"Nueva versión "+offer.version+" · Ver actualización");
            if(downloaded&&!busy&&installAfterDownload&&resumed){installAfterDownload=false;updater.install(this);}
            else if(!busy&&!downloaded)installAfterDownload=false;
        });
        updater.checkAutomatically();
    }
    void buildHome() {
        LinearLayout root=pages[0];
        label(root,"Tu par.\nA tu manera.",34,true,INK);
        TextView intro=label(root,"NIKE ADAPT AUTO MAX",11,true,MUTED); intro.setLetterSpacing(.13f); space(root,16);
        LinearLayout hero=card(root,0xffe7ecee); hero.setPadding(dp(18),dp(14),dp(18),dp(16));
        LinearLayout meta=row(); pairName=text("Tu par Adapt",14,true,INK); meta.addView(pairName,new LinearLayout.LayoutParams(0,-2,1));
        connection=text("Sin conexión",11,true,MUTED); meta.addView(connection); hero.addView(meta);
        artwork=new ShoeArtwork(this); hero.addView(artwork,new LinearLayout.LayoutParams(-1,dp(168)));
        label(hero,"Un nuevo paso para tus Adapt.",13,false,MUTED);
        space(root,18); section(root,"Batería de tu par","Lecturas independientes de cada zapatilla.");
        LinearLayout batteries=row();
        for(int side=0;side<2;side++) {
            LinearLayout c=column(); c.setPadding(dp(16),dp(18),dp(16),dp(18)); c.setBackground(shape(Color.WHITE,22,0));
            LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(0,-2,1); if(side==0) lp.rightMargin=dp(6); else lp.leftMargin=dp(6); batteries.addView(c,lp);
            label(c,side==0?"IZQUIERDA":"DERECHA",10,true,MUTED).setLetterSpacing(.1f);
            batteryValues[side]=label(c,"—",32,true,INK);
            batteryBars[side]=new ProgressBar(this,null,android.R.attr.progressBarStyleHorizontal); batteryBars[side].setMax(100); batteryBars[side].setProgressTintList(ColorStateList.valueOf(ACCENT)); batteryBars[side].setProgressBackgroundTintList(ColorStateList.valueOf(LINE)); c.addView(batteryBars[side],new LinearLayout.LayoutParams(-1,dp(5)));
            space(c,8); batteryHints[side]=label(c,"Sin conexión",12,false,MUTED);
        }
        root.addView(batteries); space(root,14);
        button(root,"Conectar / emparejar mi par",false,v->openPairing());
        button(root,"Ajustar o aflojar cordones",false,v->showPage(4));
        label(root,"El primer emparejamiento se realiza con tus zapatillas. Después se reutilizan las claves guardadas.",12,false,MUTED);
        space(root,16); LinearLayout note=card(root,Color.WHITE);
        label(note,"Diseñado para seguirte",17,true,INK);
        label(note,"Elige luces, color y movimiento desde las pestañas. Inicia el control antes de bloquear la pantalla; puedes detenerlo desde la notificación.",14,false,MUTED);
    }
    void buildLights() {
        LinearLayout root=pages[1]; section(root,"Dale luz.","Un color para ambas. Un destello en cada prueba."); space(root,10);
        lightStatus=label(root,"Conecta tu par para probar las luces.",14,true,ACCENT);space(root,12);
        LinearLayout c=card(root,Color.WHITE); label(c,"ELIGE TU COLOR",11,true,MUTED).setLetterSpacing(.1f); space(c,14);
        LinearLayout choices=row();
        for(int i=0;i<6;i++) {
            final int index=i; FrameLayout hit=new FrameLayout(this); hit.setContentDescription(colorNames[i]); hit.setFocusable(true);
            View dot=new View(this); dot.setBackground(shape(0xff000000|palette[i],30,palette[i]==0xffffff?LINE:0)); FrameLayout.LayoutParams d=new FrameLayout.LayoutParams(dp(30),dp(30),Gravity.CENTER); hit.addView(dot,d);
            hit.setOnClickListener(v->{selectColor(index);if(ready)apply(true);}); swatches[i]=hit; choices.addView(hit,new LinearLayout.LayoutParams(0,dp(52),1));
        }
        c.addView(choices); space(c,10); colorLabel=label(c,"Azul hielo · ambas zapatillas",15,true,INK);
        label(c,"Elige un color para enviarlo a ambas. Aplicar opciones repite la prueba sin mover los cordones.",12,false,MUTED);
        space(root,14); LinearLayout steady=card(root,Color.WHITE); continuous=toggle(steady,"Luces continuas");
        label(steady,"Mantén un color fijo mientras el control esté activo y el par conectado.",14,false,MUTED);
        label(steady,"Se renuevan cada 45 segundos. La protección por batería y temperatura del calzado sigue activa.",12,false,MUTED);
        space(root,12);
        space(root,20); section(root,"Prueba tu par","Pruebas de luz independientes; no mueven los cordones.");
        LinearLayout tests=row(); Button left=styledButton("Probar izquierda",false,v->applyLightTest("LIGHT_LEFT")); Button right=styledButton("Probar derecha",false,v->applyLightTest("LIGHT_RIGHT"));
        LinearLayout.LayoutParams l=new LinearLayout.LayoutParams(0,dp(56),1); l.rightMargin=dp(5); tests.addView(left,l); LinearLayout.LayoutParams r=new LinearLayout.LayoutParams(0,dp(56),1); r.leftMargin=dp(5); tests.addView(right,r); root.addView(tests);
        space(root,10); button(root,"Reactivar luces",false,v->new AlertDialog.Builder(this).setTitle("¿Revisaste el calzado?").setMessage("Comprueba batería y temperatura antes de reactivar las luces.").setPositiveButton("Reactivar",(d,w)->command("RESET_LIGHTS")).setNegativeButton("Cancelar",null).show());
        label(root,"Cada zapatilla carga una animación a la vez. Espera la confirmación; si hay un error, aparecerá arriba. Se conserva la comprobación de firmware del controlador original.",12,false,MUTED);
    }
    void buildMotion() {
        LinearLayout root=pages[2]; section(root,"Sigue el ritmo.","Elige qué activa los efectos de tu par."); space(root,20);
        String[] titles={"Giros del teléfono","Pisadas del calzado","Solo control manual"};
        String[] details={"Lleva el teléfono fijo y vertical, con la pantalla hacia delante. El giro indica dirección; no identifica qué pie pisa.","Solo responde si las zapatillas ya envían eventos. Esta versión todavía no puede activar su transmisión.","Usa las luces continuas o los botones de prueba, sin activar efectos por movimiento."};
        for(int i=0;i<3;i++) {
            final int index=i; LinearLayout c=card(root,Color.WHITE); modeCards[i]=c; modeTitles[i]=label(c,titles[i],17,true,INK); label(c,details[i],14,false,MUTED); c.setFocusable(true); c.setOnClickListener(v->selectMode(index)); space(root,10);
        }
        space(root,10); LinearLayout lace=card(root,Color.WHITE); label(lace,"EXPERIMENTAL",10,true,ACCENT).setLetterSpacing(.1f); motor=toggle(lace,"Movimiento de cordones");
        label(lace,"Un pequeño recorrido del motor para acompañar el movimiento. Su sonido puede no ser audible.",14,false,MUTED);
        label(lace,"Afloja 1 % y regresa solo tras confirmación. Máximo 5 ciclos por minuto, separados por 10 segundos. Se desactiva si falta una respuesta. Primero pruébalo fuera de los pies.",12,false,MUTED);
        space(root,12); label(root,"Con pantalla apagada, la notificación mantiene el control accesible. Si Android cierra la sesión, el motor no se reactiva solo.",12,false,MUTED);
    }
    void buildSystem() {
        LinearLayout root=pages[3]; section(root,"Conoce tu par.","Conexión, versiones y diagnóstico."); space(root,20);
        LinearLayout updates=card(root,Color.WHITE); label(updates,"Actualizaciones de la app",22,true,INK);
        label(updates,"Open Adapt "+BuildInfo.VERSION+" · canal experimental",13,true,ACCENT);
        updateStatus=label(updates,"Consulta las versiones publicadas en open-adapt.",14,false,MUTED);
        Switch automatic=toggle(updates,"Buscar al abrir la app"); automatic.setChecked(getSharedPreferences("openadapt_updates",0).getBoolean("automatic",true));
        automatic.setOnCheckedChangeListener((v,enabled)->{if(updater!=null)updater.automatic(enabled);});
        label(updates,"Comprobación automática cada 6 horas al abrir. Incluye versiones experimentales del repositorio público.",12,false,MUTED);
        checkUpdates=button(updates,"Buscar actualizaciones",false,v->{if(updater!=null)updater.check();});
        installUpdate=button(updates,"Descargar e instalar",true,v->{if(updater!=null){if(updater.ready)updater.install(this);else{installAfterDownload=true;updater.download();}}}); installUpdate.setVisibility(View.GONE);
        label(updates,"Android te pedirá confirmar la instalación. Se comprueban el archivo, el paquete y la firma. Al instalar se detiene el control; al abrir de nuevo se reconecta con las claves guardadas. No desinstales la app ni borres sus datos.",12,false,MUTED);
        space(root,14); LinearLayout status=card(root,Color.WHITE); label(status,"ESTADO DE LA SESIÓN",11,true,MUTED).setLetterSpacing(.1f); state=label(status,MotionService.summary,14,false,INK);
        space(root,14); LinearLayout firmware=card(root,Color.WHITE); label(firmware,"Firmware",22,true,INK);
        label(firmware,"Consulta las versiones y los estados de cada zapatilla sin modificar su firmware.",14,false,MUTED);
        button(firmware,"Leer versiones y comprobar estados",true,v->{command("CHECK");notice("La lectura tarda unos 30 segundos y requiere ambas zapatillas conectadas.");});
        button(firmware,"Ver diagnóstico",false,v->dialog().setTitle("Diagnóstico de las zapatillas").setMessage(MotionService.diagnostic).setPositiveButton("Cerrar",null).show());
        button(firmware,"Guardar diagnóstico…",false,v->{Intent doc=new Intent(Intent.ACTION_CREATE_DOCUMENT).addCategory(Intent.CATEGORY_OPENABLE).setType("application/json").putExtra(Intent.EXTRA_TITLE,"openadapt-diagnostico.json"); startActivityForResult(doc,47);});
        label(firmware,"El archivo contiene versiones, estados y checksums. No es un respaldo completo, no clona firmware ni acredita su integridad criptográfica.",12,false,MUTED);
        space(root,16); label(root,"Open Adapt · "+BuildInfo.VERSION+" experimental",13,true,INK);
        label(root,"Proyecto independiente, sin afiliación con Nike. Conexión Bluetooth, luces, batería y motor pendientes de validación con zapatillas físicas.",12,false,MUTED);
    }
    void buildLaces() {
        LinearLayout root=pages[4];section(root,"A tu medida.","Elige tu lado. Ajusta poco a poco.");space(root,16);
        LinearLayout selection=row();String[] names={"Ambas","Izq.","Der."};int[] masks={3,1,2};
        for(int i=0;i<3;i++){final int mask=masks[i];Button b=styledButton(names[i],false,v->chooseLaceSides(mask));b.setTextSize(13);laceSelectors[i]=b;LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(0,dp(46),1);if(i>0)lp.leftMargin=dp(7);selection.addView(b,lp);}root.addView(selection);space(root,14);
        LinearLayout visual=card(root,Color.WHITE);label(visual,"AJUSTE CONFIRMADO POR CADA ZAPATILLA",10,true,MUTED).setLetterSpacing(.04f);LinearLayout pair=row();pair.setGravity(Gravity.TOP);
        for(int side=0;side<2;side++){final int chosen=side;LinearLayout shoe=column();shoe.setGravity(Gravity.CENTER);laceArts[side]=new LaceArtwork(this,side);laceArts[side].setOnClickListener(v->chooseLaceSides(1<<chosen));shoe.addView(laceArts[side],new LinearLayout.LayoutParams(-1,dp(120)));label(shoe,side==0?"IZQUIERDA":"DERECHA",10,true,MUTED).setGravity(Gravity.CENTER);laceValues[side]=label(shoe,"—",28,true,INK);laceValues[side].setGravity(Gravity.CENTER);lacePreviews[side]=label(shoe,"Objetivo —",12,true,ACCENT);lacePreviews[side].setGravity(Gravity.CENTER);laceHints[side]=label(shoe,"Sin lectura",11,false,MUTED);laceHints[side].setGravity(Gravity.CENTER);pair.addView(shoe,new LinearLayout.LayoutParams(0,-2,1));}
        visual.addView(pair);label(visual,"0 % más flojo · 100 % más firme. El esquema muestra una vista previa; los números grandes solo cambian con una lectura del calzado.",11,false,MUTED);space(root,14);
        LinearLayout change=card(root,Color.WHITE);label(change,"TU SIGUIENTE AJUSTE",10,true,MUTED).setLetterSpacing(.08f);laceChange=label(change,"Desliza para elegir un cambio",18,true,INK);
        laceSlider=new SeekBar(this);laceSlider.setMax(10);laceSlider.setProgress(5);laceSlider.setProgressTintList(ColorStateList.valueOf(ACCENT));laceSlider.setThumbTintList(ColorStateList.valueOf(ACCENT));laceSlider.setContentDescription("Cambio de ajuste, de menos cinco a más cinco puntos");change.addView(laceSlider,new LinearLayout.LayoutParams(-1,dp(48)));
        LinearLayout limits=row();TextView loose=text("−5 · Aflojar",11,false,MUTED),tight=text("Ajustar · +5",11,false,MUTED);limits.addView(loose,new LinearLayout.LayoutParams(0,-2,1));tight.setGravity(Gravity.END);limits.addView(tight,new LinearLayout.LayoutParams(0,-2,1));change.addView(limits);
        laceSlider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){public void onProgressChanged(SeekBar bar,int value,boolean user){laceDelta=value-5;refreshLacesUI();}public void onStartTrackingTouch(SeekBar bar){bar.performHapticFeedback(HapticFeedbackConstants.KEYBOARD_TAP);}public void onStopTrackingTouch(SeekBar bar){}});
        space(change,12);LinearLayout quick=row();laceMinus=styledButton("Aflojar −1",false,v->requestLaces(-1));lacePlus=styledButton("Ajustar +1",false,v->requestLaces(1));LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(0,dp(52),1);lp.rightMargin=dp(5);quick.addView(laceMinus,lp);LinearLayout.LayoutParams rp=new LinearLayout.LayoutParams(0,dp(52),1);rp.leftMargin=dp(5);quick.addView(lacePlus,rp);change.addView(quick);
        laceApply=button(change,"Aplicar cambio",true,v->requestLaces(laceDelta));laceStatus=label(change,"Conecta tu par y espera las lecturas.",13,false,MUTED);
        laceStop=button(root,"Detener cordones",false,v->command("LACE_STOP"));laceStop.setTextColor(0xffaf3342);
        label(root,"Cada acción cambia hasta 5 puntos, con un segundo entre acciones. Requiere al menos 15 % de batería, temperatura válida y estar fuera del cargador. El efecto automático de cordones se pausa al entrar aquí.",12,false,MUTED);
        label(root,"Control experimental: realiza la primera prueba con las zapatillas fuera de los pies. Ante un error se detiene y no se reintenta solo.",12,false,MUTED);chooseLaceSides(3);
    }
    void chooseLaceSides(int mask){laceMask=mask;if(laceSlider!=null)laceSlider.performHapticFeedback(HapticFeedbackConstants.KEYBOARD_TAP);refreshLacesUI();}
    void requestLaces(int delta){
        if(delta==0)return;
        MotionService service=MotionService.instance;long now=SystemClock.elapsedRealtime();
        if(service==null){notice("Inicia el control y espera la conexión.");return;}
        for(int side=0;side<2;side++)if((laceMask&(1<<side))!=0){String reason=service.laceBlock(side,now);if(reason!=null){notice((side==0?"Izquierda: ":"Derecha: ")+reason);return;}}
        final int mask=laceMask;
        Runnable send=()->{Intent intent=new Intent(this,MotionService.class).setAction("LACE_ADJUST").putExtra("sides",mask).putExtra("delta",delta);if(Build.VERSION.SDK_INT>=26)startForegroundService(intent);else startService(intent);laceSlider.setProgress(5);};
        if(!getSharedPreferences("openadapt_controls",0).getBoolean("manual_lace_acknowledged",false)){
            if(laceDialog)return;laceDialog=true;
            dialog().setTitle("Primera prueba de ajuste").setMessage("Haz la primera prueba fuera de los pies. Cada acción mueve hasta cinco puntos; Detener cordones interrumpe el movimiento. La respuesta física de tus Auto Max todavía no está validada.").setPositiveButton("Entendido, ajustar",(d,w)->{laceDialog=false;getSharedPreferences("openadapt_controls",0).edit().putBoolean("manual_lace_acknowledged",true).apply();send.run();}).setNegativeButton("Cancelar",(d,w)->laceDialog=false).setOnCancelListener(d->laceDialog=false).show();
        }else send.run();
    }
    void refreshLacesUI(){
        if(laceApply==null||page!=4)return;MotionService service=MotionService.instance;long now=SystemClock.elapsedRealtime();
        if(page==4&&resumed&&service!=null)service.lacePanelUntil=now+5000;
        boolean busy=service!=null&&service.laces.busy();String block=null;
        for(int i=0;i<3;i++){boolean selected=laceMask==(i==0?3:i==1?1:2);if(laceSelectors[i].isSelected()!=selected){laceSelectors[i].setBackground(shape(selected?0xffd9f0e8:Color.WHITE,14,selected?ACCENT:LINE));laceSelectors[i].setSelected(selected);}laceSelectors[i].setEnabled(!busy);laceSelectors[i].setTextColor(selected?ACCENT:MUTED);}
        for(int side=0;side<2;side++){
            boolean selected=(laceMask&(1<<side))!=0,connected=service!=null&&service.bridge.connected(side);
            int actual=connected&&service.lacePositionAt[side]>0?service.lacePosition[side]:-1;
            String reason=service==null?"Sin conexión":service.laceBlock(side,now);
            if(selected&&reason!=null&&block==null)block=(side==0?"Izquierda: ":"Derecha: ")+reason;
            int preview=actual<0?-1:Math.max(0,Math.min(100,actual+(selected?laceDelta:0)));
            if(busy&&side==service.laces.side&&service.laces.phase==2)preview=service.laces.target;
            laceArts[side].state(actual,preview,selected,busy&&side==service.laces.side,reason!=null&&!busy);laceArts[side].setEnabled(!busy);
            updateText(laceValues[side],actual<0?"—":actual+" %");updateText(lacePreviews[side],preview<0?"Objetivo —":"Objetivo "+preview+" %");
            updateText(laceHints[side],reason==null?"Lectura confirmada":reason);laceHints[side].setTextColor(connected&&BatteryStatus.low(true,service.battery[side],service.batteryAt[side],now)?0xffaf3342:MUTED);
        }
        boolean allowed=block==null&&!busy;lacePlus.setEnabled(allowed);laceMinus.setEnabled(allowed);laceSlider.setEnabled(allowed);laceApply.setEnabled(allowed&&laceDelta!=0);laceStop.setEnabled(service!=null);
        updateText(laceChange,laceDelta==0?"Desliza para elegir un cambio":(laceDelta>0?"Ajustar +":"Aflojar ")+laceDelta+" puntos");
        updateText(laceApply,laceDelta==0?"Aplicar cambio":(laceDelta>0?"Aplicar +":"Aplicar ")+laceDelta+" a "+(laceMask==3?"ambas":laceMask==1?"izquierda":"derecha"));
        String progress=service==null?"Conecta tu par y espera las lecturas.":service.laces.message;
        updateText(laceStatus,busy?progress:block!=null?block:progress);
    }
    void openPairing() {
        if(!hasPermissions()){permissions();return;}
        try {
            Bridge bridge=MotionService.instance==null?new Bridge():MotionService.instance.bridge;
            if(bridge.bind()){command("CONNECT");showPage(0);notice(bridge.connected(0)&&bridge.connected(1)?"Tu par ya está conectado.":"Comprobando y reconectando tu par guardado…");return;}
            command("CONNECT");PairingReturn.arm(getApplication());
            startActivity(new Intent().setClassName(getPackageName(),"com.nike.adapt.SplashScreenActivity").putExtra("PARAM_SPLASH_SCREEN_SHOW",false)); }
        catch(Exception e) { notice("No se pudo abrir el emparejamiento."); }
    }
    void showPage(int selected) {
        page=selected;
        for(int i=0;i<pages.length;i++) { scrolls[i].setVisibility(i==page?View.VISIBLE:View.GONE); navLabels[i].setTextColor(i==page?ACCENT:MUTED); navIcons[i].selected=i==page; navIcons[i].invalidate(); ((View)navLabels[i].getParent()).setSelected(i==page); }
        applyButton.setText(page==0?"Iniciar control":page==4?"Leer ajuste":"Aplicar opciones");
        if(selected==4&&ready)command("LACE_READ");
        pages[selected].requestFocus(); scrolls[selected].post(()->scrolls[selected].scrollTo(0,0));
    }
    void selectColor(int selected) {
        colorIndex=selected;
        for(int i=0;i<swatches.length;i++) { swatches[i].setBackground(shape(i==selected?0xffe1f3ef:Color.WHITE,14,i==selected?ACCENT:0)); swatches[i].setSelected(i==selected); }
        if(colorLabel!=null) colorLabel.setText(colorNames[selected]+" · ambas zapatillas");
        artwork.rgb=palette[selected]; artwork.invalidate();
    }
    void selectMode(int selected) {
        modeIndex=selected;
        for(int i=0;i<3;i++) { boolean on=i==selected; modeCards[i].setBackground(shape(on?0xffe1f3ef:Color.WHITE,22,on?ACCENT:0)); modeCards[i].setSelected(on); modeTitles[i].setTextColor(on?ACCENT:INK); modeCards[i].setContentDescription(modeTitles[i].getText()+(on?", seleccionado":"")); }
    }
    int clamp(int value,int count) { return Math.max(0,Math.min(count-1,value)); }
    int dp(float value) { return (int)(value*getResources().getDisplayMetrics().density+.5f); }
    LinearLayout column() { LinearLayout v=new LinearLayout(this); v.setOrientation(LinearLayout.VERTICAL); return v; }
    LinearLayout row() { LinearLayout v=new LinearLayout(this); v.setOrientation(LinearLayout.HORIZONTAL); v.setGravity(Gravity.CENTER_VERTICAL); return v; }
    GradientDrawable shape(int color,int radius,int stroke) { GradientDrawable d=new GradientDrawable(); d.setColor(color); d.setCornerRadius(dp(radius)); if(stroke!=0) d.setStroke(dp(1),stroke); return d; }
    TextView text(String value,int size,boolean bold,int color) { TextView t=new TextView(this); t.setText(value); t.setTextSize(size); t.setTextColor(color); t.setFontFeatureSettings("kern"); t.setTypeface(Typeface.create(bold?"sans-serif-medium":"sans-serif",Typeface.NORMAL)); t.setIncludeFontPadding(false); t.setLineSpacing(dp(3),1); return t; }
    TextView label(LinearLayout root,String value,int size,boolean bold,int color) { TextView t=text(value,size,bold,color); LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2); lp.topMargin=dp(5); lp.bottomMargin=dp(7); root.addView(t,lp); return t; }
    void section(LinearLayout root,String title,String subtitle) { label(root,title,30,true,INK); label(root,subtitle,14,false,MUTED); }
    void space(LinearLayout root,int size) { root.addView(new View(this),new LinearLayout.LayoutParams(1,dp(size))); }
    LinearLayout card(LinearLayout root,int color) { LinearLayout c=column(); c.setPadding(dp(18),dp(16),dp(18),dp(16)); c.setBackground(shape(color,24,0)); root.addView(c,new LinearLayout.LayoutParams(-1,-2)); return c; }
    Button styledButton(String value,boolean primary,View.OnClickListener action) {
        Button b=new Button(this); b.setText(value); b.setTextSize(14); b.setAllCaps(false); b.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL)); b.setTextColor(primary?Color.WHITE:INK); b.setMinHeight(dp(48)); b.setMinimumHeight(dp(48)); b.setPadding(dp(12),dp(8),dp(12),dp(8)); b.setStateListAnimator(null);
        b.setBackground(new RippleDrawable(ColorStateList.valueOf(0x22007f73),shape(primary?INK:0xffedf1f3,18,0),null)); b.setOnClickListener(action); return b;
    }
    Button button(LinearLayout root,String value,boolean primary,View.OnClickListener action) { Button b=styledButton(value,primary,action); LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2); lp.topMargin=dp(6); lp.bottomMargin=dp(6); root.addView(b,lp); return b; }
    Switch toggle(LinearLayout root,String value) {
        Switch s=new Switch(this); s.setText(value); s.setTextColor(INK); s.setTextSize(16); s.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL)); s.setSwitchPadding(dp(12)); s.setPadding(0,dp(8),0,dp(8)); s.setMinHeight(dp(52));
        s.setThumbTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked},new int[]{}},new int[]{ACCENT,0xff7f8b97}));
        s.setTrackTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked},new int[]{}},new int[]{0xffa7d9ce,LINE})); root.addView(s,new LinearLayout.LayoutParams(-1,-2)); return s;
    }
    AlertDialog.Builder dialog() { return new AlertDialog.Builder(this); }
    void cancelMotor() { pendingMotorDialog=false; boolean wasReady=ready; ready=false; motor.setChecked(false); ready=wasReady; }
    void stopControl() { ready=false; motor.setChecked(false); ready=true; stopService(new Intent(this,MotionService.class)); state.setText("Detenido"); notice("Sesión detenida."); }
    boolean hasPermissions() {
        if(Build.VERSION.SDK_INT>=31) return checkSelfPermission(Manifest.permission.BLUETOOTH_CONNECT)==PackageManager.PERMISSION_GRANTED&&checkSelfPermission(Manifest.permission.BLUETOOTH_SCAN)==PackageManager.PERMISSION_GRANTED;
        return checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION)==PackageManager.PERMISSION_GRANTED;
    }
    void permissions() {
        ArrayList<String> p=new ArrayList<>();
        if(Build.VERSION.SDK_INT>=31) { p.add(Manifest.permission.BLUETOOTH_CONNECT); p.add(Manifest.permission.BLUETOOTH_SCAN); }
        else p.add(Manifest.permission.ACCESS_FINE_LOCATION);
        if(Build.VERSION.SDK_INT>=33) p.add(Manifest.permission.POST_NOTIFICATIONS);
        requestPermissions(p.toArray(new String[0]),41);
    }
    @Override public void onRequestPermissionsResult(int request,String[] p,int[] results) { super.onRequestPermissionsResult(request,p,results); if(hasPermissions()) apply(); else state.setText("Permite el acceso a dispositivos cercanos para conectar tus zapatillas."); }
    void command(String action) {
        if(!hasPermissions()) { permissions(); return; }
        Intent i=new Intent(this,MotionService.class).setAction(action); if(Build.VERSION.SDK_INT>=26) startForegroundService(i); else startService(i);
    }
    void applyLightTest(String action){apply();command(action);}
    void apply(){apply(false);}
    void apply(boolean preview) {
        if(!hasPermissions()) { permissions(); return; }
        if(pendingMotorDialog) return;
        getSharedPreferences("openadapt_controls",0).edit().putBoolean("continuous",continuous.isChecked()).putInt("color",colorIndex).putInt("mode",modeIndex).apply();
        Intent i=new Intent(this,MotionService.class).setAction("SETTINGS").putExtra("continuous",continuous.isChecked()).putExtra("mode",modeIndex==0?1:modeIndex==1?2:0).putExtra("color",palette[colorIndex]).putExtra("motor",motor.isChecked()).putExtra("preview",preview);
        if(Build.VERSION.SDK_INT>=26) startForegroundService(i); else startService(i);
    }
    void notice(String message) { Toast.makeText(this,message,Toast.LENGTH_LONG).show(); }
    void updateText(TextView view,String value) { if(!value.contentEquals(view.getText())) view.setText(value); }
    void refreshBatteries() {
        String[] parts=MotionService.batterySummary.split("\n");MotionService service=MotionService.instance;long now=SystemClock.elapsedRealtime();StringBuilder warning=new StringBuilder();
        for(int side=0;side<2;side++) {
            String value=parts.length>side?parts[side].replaceFirst("^[^:]+: ",""):"sin conexión";boolean numeric=value.matches("\\d+ %");
            boolean low=service!=null&&BatteryStatus.low(service.bridge.connected(side),service.battery[side],service.batteryAt[side],now);
            updateText(batteryValues[side],numeric?value:"—");batteryValues[side].setTextColor(low?0xffaf3342:INK);
            updateText(batteryHints[side],low?"Batería baja · motor bloqueado":numeric?"Lectura del calzado":value.substring(0,1).toUpperCase(Locale.ROOT)+value.substring(1));batteryHints[side].setTextColor(low?0xffaf3342:MUTED);
            batteryBars[side].setProgress(numeric?Integer.parseInt(value.replace(" %","")):0);batteryBars[side].setProgressTintList(ColorStateList.valueOf(low?0xffaf3342:ACCENT));
            if(low){if(warning.length()>0)warning.append("\n");warning.append(side==0?"Izquierda":"Derecha").append(" · ").append(service.battery[side]).append(" %: ajuste y movimiento de cordones bloqueados.");}
        }
        if(warning.length()>0)warning.append("\nRecarga el lado indicado para volver a mover los cordones.");
        updateText(batteryAlert,warning.toString());int visibility=warning.length()==0?View.GONE:View.VISIBLE;if(batteryAlert.getVisibility()!=visibility)batteryAlert.setVisibility(visibility);
    }
    final Runnable refresh=new Runnable() { public void run() {
        if(!MotionService.summary.contentEquals(state.getText())) state.setText(MotionService.summary);
        refreshBatteries();refreshLacesUI();
        MotionService service=MotionService.instance;
        updateText(lightStatus,service==null?"Conecta tu par para probar las luces.":"Izquierda: "+service.lightStatus[0]+"\nDerecha: "+service.lightStatus[1]);
        boolean connected=service!=null&&service.bridge.connected(0)&&service.bridge.connected(1);
        updateText(connection,connected?"Par conectado":service!=null?"Buscando tu par…":"Sin conexión");
        int connectionColor=connected?ACCENT:MUTED; if(connection.getCurrentTextColor()!=connectionColor) connection.setTextColor(connectionColor);
        updateText(pairName,service==null?"Tu par Adapt":service.bridge.pairName());
        if(!pendingMotorDialog&&motor.isChecked()&&(service==null||!service.motorEnabled)) { ready=false; motor.setChecked(false); ready=true; }
        handler.postDelayed(this,1000);
    } };
    @Override protected void onResume() { super.onResume(); resumed=true; handler.post(refresh); if(updater!=null)updater.checkAutomatically(); }
    @Override protected void onPause() { resumed=false; installAfterDownload=false; handler.removeCallbacks(refresh); super.onPause(); }
    @Override protected void onDestroy() { if(updater!=null)updater.close(); super.onDestroy(); }
    @Override protected void onSaveInstanceState(Bundle out) { super.onSaveInstanceState(out); out.putInt("page",page); out.putInt("color",colorIndex); out.putInt("mode",modeIndex); out.putBoolean("continuous",continuous.isChecked()); }
    @Override protected void onActivityResult(int request,int result,Intent data) {
        super.onActivityResult(request,result,data);
        if(request==47&&result==RESULT_OK&&data!=null) {
            try(OutputStream out=getContentResolver().openOutputStream(data.getData())) { if(out==null) throw new IOException(); out.write(MotionService.diagnostic.getBytes("UTF-8")); notice("Diagnóstico guardado."); }
            catch(Exception e) { notice("No se pudo guardar el diagnóstico."); }
        }
    }
    final class NavIcon extends View {
        final int icon; boolean selected; final Paint p=new Paint(3);
        NavIcon(int index) { super(ControlActivity.this); icon=index; setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO); }
        @Override protected void onDraw(Canvas canvas) {
            super.onDraw(canvas); canvas.save(); canvas.scale(getWidth()/24f,getHeight()/24f); p.setColor(selected?ACCENT:MUTED); p.setStyle(Paint.Style.STROKE); p.setStrokeWidth(1.8f); p.setStrokeJoin(Paint.Join.ROUND); p.setStrokeCap(Paint.Cap.ROUND);
            Path path=new Path();
            if(icon==0) { path.moveTo(3,11);path.lineTo(12,3);path.lineTo(21,11);path.moveTo(5,10);path.lineTo(5,21);path.lineTo(10,21);path.lineTo(10,15);path.lineTo(14,15);path.lineTo(14,21);path.lineTo(19,21);path.lineTo(19,10);canvas.drawPath(path,p); }
            if(icon==1) { canvas.drawCircle(12,10,5,p);canvas.drawLine(9,17,15,17,p);canvas.drawLine(10,21,14,21,p);canvas.drawLine(12,1,12,2,p);canvas.drawLine(3,7,5,8,p);canvas.drawLine(19,8,21,7,p); }
            if(icon==2) { path.moveTo(2,13);path.lineTo(6,13);path.lineTo(9,5);path.lineTo(14,20);path.lineTo(17,10);path.lineTo(20,13);path.lineTo(23,13);canvas.drawPath(path,p); }
            if(icon==3) { canvas.drawRoundRect(3,4,21,20,3,3,p);canvas.drawLine(7,8,17,8,p);canvas.drawLine(7,12,13,12,p);canvas.drawCircle(17,16,1,p); }
            if(icon==4){canvas.drawLine(6,3,6,21,p);canvas.drawLine(18,3,18,21,p);for(int y=4;y<19;y+=5){canvas.drawLine(6,y,18,y+4,p);canvas.drawLine(18,y,6,y+4,p);}}
            canvas.restore();
        }
    }
}
