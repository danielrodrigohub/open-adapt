package com.openadapt;

import android.Manifest;
import android.app.*;
import android.content.*;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.*;
import android.view.*;
import android.widget.*;
import java.io.*;
import java.util.*;

public final class ControlActivity extends Activity {
    final Handler handler=new Handler(Looper.getMainLooper());
    TextView state; Switch continuous,motor; Spinner mode,colors;
    boolean ready,pendingMotorDialog;
    final int[] palette={0x25c7ff,0xff4d5e,0x6aee9e,0xe6b7ff,0xffb347,0xffffff};
    @Override public void onCreate(Bundle saved) {
        super.onCreate(saved);
        getWindow().setStatusBarColor(Color.rgb(15,21,30));
        getWindow().setNavigationBarColor(Color.rgb(15,21,30));
        ScrollView scroll=new ScrollView(this); scroll.setBackgroundColor(Color.rgb(15,21,30));
        LinearLayout root=new LinearLayout(this); root.setOrientation(LinearLayout.VERTICAL); root.setPadding(28,24,28,40); scroll.addView(root);
        label(root,"OPEN ADAPT",32,true);
        label(root,"Auto Max · versión experimental",16,false);
        state=label(root,"Preparando conexión…",15,false); state.setPadding(0,20,0,20);
        button(root,"Controles Adapt / emparejar una vez",v->{
            try { startActivity(new Intent().setClassName(getPackageName(),"com.nike.adapt.SplashScreenActivity").putExtra("PARAM_SPLASH_SCREEN_SHOW",false)); }
            catch(Exception e) { notice("No se pudo abrir el control original."); }
        });
        label(root,"La reconexión usa las claves guardadas del par. Android puede pedir confirmar el primer emparejamiento.",14,false);
        label(root,"Luces",23,true);
        continuous=new Switch(this); continuous.setText("Luces continuas"); style(continuous); root.addView(continuous);
        label(root,"Se renuevan mientras el control esté activo y las zapatillas sigan conectadas. El calzado puede apagarlas por batería o temperatura.",14,false);
        label(root,"Color para ambas zapatillas",15,true);
        colors=spinner(root,new String[]{"Azul hielo","Rojo","Verde","Lila","Naranja","Blanco"});
        label(root,"Activación por movimiento",23,true);
        mode=spinner(root,new String[]{"Giros del teléfono","Pisadas recibidas del calzado","Solo luces continuas / pruebas"});
        label(root,"Giros: lleva el teléfono fijo y vertical, con la pantalla hacia el frente. La dirección del teléfono no identifica qué pie pisa.\nPisadas: esta versión no puede activar su transmisión; solo responderá si el calzado ya envía eventos. Requiere validación en tus Auto Max.",14,false);
        motor=new Switch(this); motor.setText("Pequeño movimiento de cordones (experimental)"); style(motor); root.addView(motor);
        label(root,"Afloja 1 % y regresa al ajuste inicial tras confirmarlo. Máximo 5 ciclos por minuto, separados por 10 segundos. Se desactiva si falta una respuesta. El sonido depende del motor; no se garantiza que sea audible.",14,false);
        motor.setOnCheckedChangeListener((button,checked)->{
            if(checked) { pendingMotorDialog=true; new AlertDialog.Builder(this).setTitle("Prueba de movimiento del motor")
                .setMessage("Primero pruébalo con las zapatillas quietas y fuera de los pies. El motor volverá al ajuste inicial solo si confirma el recorrido. Usa Detener todo para interrumpirlo.")
                .setPositiveButton("Activar prueba",(d,w)->{ pendingMotorDialog=false; apply(); })
                .setNegativeButton("Cancelar",(d,w)->{ pendingMotorDialog=false; motor.setChecked(false); })
                .setOnCancelListener(d->{ pendingMotorDialog=false; motor.setChecked(false); }).show(); }
            else if(ready) apply();
        });
        button(root,"Iniciar / aplicar opciones",v->{ if(hasPermissions()) apply(); else permissions(); });
        LinearLayout tests=new LinearLayout(this); root.addView(tests);
        Button left=new Button(this); left.setText("Probar izquierda"); tests.addView(left,new LinearLayout.LayoutParams(0,-2,1)); left.setOnClickListener(v->command("TEST_LEFT"));
        Button right=new Button(this); right.setText("Probar derecha"); tests.addView(right,new LinearLayout.LayoutParams(0,-2,1)); right.setOnClickListener(v->command("TEST_RIGHT"));
        button(root,"Reactivar luces tras revisar el calzado",v->command("RESET_LIGHTS"));
        Button stop=button(root,"DETENER TODO",v->{
            ready=false;
            motor.setChecked(false);
            ready=true;
            stopService(new Intent(this,MotionService.class));
            state.setText("Detenido");
        }); stop.setTextColor(Color.rgb(190,35,45));
        label(root,"Firmware",23,true);
        button(root,"Leer versiones y comprobar estados",v->{ command("CHECK"); notice("La lectura puede tardar unos 30 segundos. Requiere ambas zapatillas conectadas."); });
        button(root,"Ver diagnóstico",v->new AlertDialog.Builder(this).setTitle("Diagnóstico de las zapatillas").setMessage(MotionService.diagnostic).setPositiveButton("Cerrar",null).show());
        button(root,"Guardar diagnóstico…",v->{
            Intent doc=new Intent(Intent.ACTION_CREATE_DOCUMENT).addCategory(Intent.CATEGORY_OPENABLE).setType("application/json").putExtra(Intent.EXTRA_TITLE,"openadapt-diagnostico.json");
            startActivityForResult(doc,47);
        });
        label(root,"El diagnóstico guarda versiones, estados y checksums leídos. No contiene una copia completa del firmware ni lo modifica.",14,false);
        label(root,"Pantalla apagada",23,true);
        label(root,"Inicia el control antes de bloquear el teléfono. La notificación permite detenerlo. La sesión no vuelve a activar motores si Android cierra la app.",14,false);
        setContentView(scroll);
        android.content.SharedPreferences prefs=getSharedPreferences("openadapt_controls",0);
        continuous.setChecked(prefs.getBoolean("continuous",false)); colors.setSelection(prefs.getInt("color",0)); mode.setSelection(prefs.getInt("mode",0));
        ready=true;
        if(hasPermissions()) apply(); else permissions();
    }
    void style(TextView v) { v.setTextColor(Color.rgb(229,237,246)); v.setTextSize(16); v.setPadding(0,10,0,10); }
    TextView label(LinearLayout root,String text,int size,boolean bold) {
        TextView v=new TextView(this); style(v); v.setText(text); v.setTextSize(size);
        if(bold) v.setTypeface(null,1); root.addView(v); return v;
    }
    Button button(LinearLayout root,String text,View.OnClickListener listener) {
        Button b=new Button(this); b.setText(text); b.setAllCaps(false); b.setOnClickListener(listener); root.addView(b,new LinearLayout.LayoutParams(-1,-2)); return b;
    }
    Spinner spinner(LinearLayout root,String[] entries) {
        Spinner s=new Spinner(this); ArrayAdapter<String> a=new ArrayAdapter<String>(this,android.R.layout.simple_spinner_dropdown_item,entries);
        s.setBackgroundColor(Color.rgb(217,228,241)); s.setAdapter(a); root.addView(s,new LinearLayout.LayoutParams(-1,(int)(56*getResources().getDisplayMetrics().density))); return s;
    }
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
    @Override public void onRequestPermissionsResult(int request,String[] p,int[] results) {
        super.onRequestPermissionsResult(request,p,results);
        if(hasPermissions()) apply(); else state.setText("Permite el acceso a dispositivos cercanos para conectar tus zapatillas.");
    }
    void startControl(String action) {
        Intent i=new Intent(this,MotionService.class); if(action!=null) i.setAction(action);
        if(Build.VERSION.SDK_INT>=26) startForegroundService(i); else startService(i);
    }
    void command(String action) {
        if(!hasPermissions()) { permissions(); return; }
        startControl(action);
    }
    void apply() {
        if(!hasPermissions()) { permissions(); return; }
        int colorIndex=colors.getSelectedItemPosition(),modeIndex=mode.getSelectedItemPosition();
        getSharedPreferences("openadapt_controls",0).edit().putBoolean("continuous",continuous.isChecked()).putInt("color",colorIndex).putInt("mode",modeIndex).apply();
        Intent i=new Intent(this,MotionService.class).setAction("SETTINGS").putExtra("continuous",continuous.isChecked())
            .putExtra("mode",modeIndex==0?1:modeIndex==1?2:0).putExtra("color",palette[colorIndex]).putExtra("motor",motor.isChecked());
        if(Build.VERSION.SDK_INT>=26) startForegroundService(i); else startService(i);
    }
    void notice(String text) { Toast.makeText(this,text,Toast.LENGTH_LONG).show(); }
    final Runnable refresh=new Runnable() { public void run() {
        if(!MotionService.summary.contentEquals(state.getText())) state.setText(MotionService.summary);
        if(!pendingMotorDialog&&motor.isChecked()&&(MotionService.instance==null||!MotionService.instance.motorEnabled)) {
            ready=false; motor.setChecked(false); ready=true;
        }
        handler.postDelayed(this,1000);
    } };
    @Override protected void onResume() { super.onResume(); handler.post(refresh); }
    @Override protected void onPause() { handler.removeCallbacks(refresh); super.onPause(); }
    @Override protected void onActivityResult(int request,int result,Intent data) {
        super.onActivityResult(request,result,data);
        if(request==47&&result==RESULT_OK&&data!=null) {
            try(OutputStream out=getContentResolver().openOutputStream(data.getData())) {
                if(out==null) throw new IOException();
                out.write(MotionService.diagnostic.getBytes("UTF-8")); notice("Diagnóstico guardado.");
            } catch(Exception e) { notice("No se pudo guardar el diagnóstico."); }
        }
    }
}
