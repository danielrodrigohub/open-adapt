package com.openadapt;

import android.app.*;
import android.content.*;
import android.hardware.*;
import android.os.*;
import org.json.*;
import java.util.*;

public final class MotionService extends Service implements SensorEventListener {
    public static volatile boolean active;
    public static volatile String summary="Detenido";
    public static volatile String batterySummary="Izquierda: sin conexión\nDerecha: sin conexión";
    public static volatile String diagnostic="Todavía no se han leído las zapatillas.";
    static MotionService instance;
    static final String RAW="com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE";
    static final String UPDATE="com.nike.corerf.update.notification";
    final Handler handler=new Handler(Looper.getMainLooper());
    final Bridge bridge=new Bridge();
    final TurnDetector turns=new TurnDetector();
    final JSONObject[] readings={new JSONObject(),new JSONObject()};
    final long[] lastStep={0,0},lastLight={0,0},batteryAt={0,0},batteryQuery={0,0};
    final int[] battery={-1,-1},charger={-1,-1},pendingImage={-1,-1};
    final int[] lacePosition={-1,-1};
    final long[] lacePositionAt={0,0},positionQueryAt={0,0},positionQuarantine={0,0};
    final boolean[] positionPending={false,false};
    long lacePanelUntil;
    final double[] temperature={Double.NaN,Double.NaN};
    final long[] imageAt={0,0};
    final boolean[] lightBlocked={false,false};
    final String[] lightStatus={"sin prueba enviada","sin prueba enviada"};
    final long[] lightPending={0,0};
    final int[] lightGeneration={0,0};
    Object localBus;
    SensorManager sensors;
    PowerManager.WakeLock wakeLock;
    boolean continuous,motorEnabled,closing;
    int mode=1,color=0x25c7ff;
    long lastConnect,events,lastWake,checkingUntil;
    int motorSide=-1,motorStage,motorBase,motorTarget;
    int motorGeneration;
    final MotorCycle.RateLimit motorRate=new MotorCycle.RateLimit();
    long motorStarted;
    String lastError="",lastMotion="Sin movimiento detectado";

    final LaceController laces=new LaceController(new LaceController.Port() {
        public boolean ready(int side,long now){return !closing&&motorStage==0&&now>=positionQuarantine[side]&&bridge.connected(side)&&motorConditions(side,now);}
        public void read(int side)throws Exception{positionPending[side]=true;positionQueryAt[side]=SystemClock.elapsedRealtime();bridge.read(side,4,0);}
        public void move(int side,int target)throws Exception{bridge.position(side,target,error->{});}
        public void stop(int side)throws Exception{positionPending[side]=false;positionQuarantine[side]=SystemClock.elapsedRealtime()+3000;bridge.stopMotor(side);}
    });
    final Runnable laceMonitor=new Runnable(){public void run(){if(closing)return;laces.tick(SystemClock.elapsedRealtime());if(laces.busy())handler.postDelayed(this,100);}};
    void prepareLaces(){
        long now=SystemClock.elapsedRealtime();lacePanelUntil=now+5000;motorEnabled=false;
        if(motorStage!=0){abortMotor("Efecto automático pausado para ajuste manual");for(int s=0;s<2;s++)positionQuarantine[s]=now+3000;}
        for(int s=0;s<2;s++)if(!positionPending[s]&&now-positionQueryAt[s]>=1000)positionQueryAt[s]=0;
        readLaces(now);
    }
    void readLaces(long now){
        if(closing||laces.busy()||motorStage!=0)return;
        for(int s=0;s<2;s++)if(bridge.connected(s)&&!positionPending[s]&&now>=positionQuarantine[s]&&(positionQueryAt[s]==0||now-positionQueryAt[s]>=10000)){
            try{positionPending[s]=true;positionQueryAt[s]=now;bridge.read(s,4,0);}catch(Exception e){positionPending[s]=false;positionQuarantine[s]=now+3000;}
        }
    }
    String laceBlock(int side,long now){
        if(!bridge.connected(side))return "Sin conexión autenticada";
        if(BatteryStatus.low(true,battery[side],batteryAt[side],now))return "Bloqueada: batería bajo 15 %. Recarga esta zapatilla.";
        if(batteryAt[side]<=0||now<batteryAt[side]||now-batteryAt[side]>30000)return "Esperando una lectura reciente de batería";
        if(charger[side]!=1)return "Retira la zapatilla del cargador";
        if(!Double.isFinite(temperature[side])||temperature[side]<0||temperature[side]>40)return "Temperatura no disponible o fuera de 0–40 °C";
        if(now<positionQuarantine[side]||positionPending[side])return "Esperando confirmación de posición";
        if(lacePositionAt[side]<=0||now<lacePositionAt[side]||now-lacePositionAt[side]>20000)return "Esperando lectura del ajuste";
        if(laces.busy()||motorStage!=0)return "Movimiento en curso";
        if(laces.lastStart>=0&&(now<laces.lastStart||now-laces.lastStart<1000))return "Espera un segundo entre ajustes";
        return null;
    }
    void manualLaces(int mask,int delta){
        long now=SystemClock.elapsedRealtime();
        if(mask<1||mask>3||delta==0||delta< -5||delta>5)return;
        if(laces.busy()){lastError="Espera a que termine el ajuste actual.";return;}
        for(int side=0;side<2;side++)if((mask&(1<<side))!=0){String reason=laceBlock(side,now);if(reason!=null){laces.message=(side==0?"Izquierda: ":"Derecha: ")+reason;return;}}
        motorEnabled=false;
        if(laces.start(mask,delta,now)){lastError="";handler.removeCallbacks(laceMonitor);handler.post(laceMonitor);}
    }
    void stopLaces(){
        laces.cancel("Ajuste detenido.");abortMotor("Movimiento de cordones detenido");motorEnabled=false;
        for(int side=0;side<2;side++)try{bridge.stopMotor(side);}catch(Exception ignored){}
    }
    final BroadcastReceiver receiver=new BroadcastReceiver() {
        @Override public void onReceive(Context context,Intent intent) {
            if(closing) return;
            try { receive(intent); } catch(Exception e) {
                if(motorStage!=0) abortMotor("Respuesta inválida; movimiento detenido");
                if(laces.busy()) laces.cancel("Respuesta inválida; ajuste detenido.");
                fail("No se pudo interpretar la respuesta",e);
            }
        }
    };
    @Override public void onCreate() {
        super.onCreate(); instance=this; active=true;
        NotificationManager nm=(NotificationManager)getSystemService(NOTIFICATION_SERVICE);
        if(Build.VERSION.SDK_INT>=26) nm.createNotificationChannel(new NotificationChannel("openadapt","Luces y movimiento",NotificationManager.IMPORTANCE_LOW));
        startForeground(471,notification());
        try {
            localBus=Bridge.call(Bridge.cls("w0.a"),"b",this);
            IntentFilter filter=new IntentFilter(RAW); filter.addAction(UPDATE);
            Bridge.call(localBus,"c",receiver,filter);
            sensors=(SensorManager)getSystemService(SENSOR_SERVICE);
            Sensor gyro=sensors.getDefaultSensor(Sensor.TYPE_GYROSCOPE);
            if(gyro!=null) sensors.registerListener(this,gyro,SensorManager.SENSOR_DELAY_GAME);
            else lastError="Este teléfono no tiene giroscopio; el modo por giros no está disponible.";
            PowerManager pm=(PowerManager)getSystemService(POWER_SERVICE);
            wakeLock=pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,"OpenAdapt:Movimiento");
            wakeLock.acquire(10*60*1000L);
        } catch(Exception e) { fail("No se pudo iniciar el control",e); }
        handler.post(tick);
    }
    Notification notification() {
        Intent open=new Intent(this,ControlActivity.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_CLEAR_TOP|Intent.FLAG_ACTIVITY_SINGLE_TOP);
        PendingIntent pi=PendingIntent.getActivity(this,0,open,PendingIntent.FLAG_UPDATE_CURRENT|PendingIntent.FLAG_IMMUTABLE);
        PendingIntent stop=PendingIntent.getService(this,1,new Intent(this,MotionService.class).setAction("STOP"),PendingIntent.FLAG_UPDATE_CURRENT|PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder builder=Build.VERSION.SDK_INT>=26?new Notification.Builder(this,"openadapt"):new Notification.Builder(this);
        return builder.setSmallIcon(android.R.drawable.ic_lock_idle_alarm).setContentTitle("Open Adapt activo")
            .setContentText("Luces y movimiento · toca para abrir").setOngoing(true).setContentIntent(pi)
            .addAction(new Notification.Action.Builder(null,"Detener",stop).build()).build();
    }
    @Override public int onStartCommand(Intent intent,int flags,int startId) {
        if(closing) return START_NOT_STICKY;
        if(intent!=null) {
            String action=intent.getAction();
            if("STOP".equals(action)) { stopSelf(); return START_NOT_STICKY; }
            if("SETTINGS".equals(action)) {
                boolean hadContinuous=continuous;
                continuous=intent.getBooleanExtra("continuous",false);
                mode=intent.getIntExtra("mode",1); color=intent.getIntExtra("color",0x25c7ff);
                boolean enable=intent.getBooleanExtra("motor",false);
                if(!enable && motorStage!=0) abortMotor("Movimiento de cordones detenido");
                motorEnabled=enable&&!laces.busy();
                if(hadContinuous&&!continuous) try { bridge.stopLights(); } catch(Exception e) { fail("No se pudieron apagar las luces",e); }
                for(int s=0;s<2;s++) lastLight[s]=0;
                if(intent.getBooleanExtra("preview",false))for(int s=0;s<2;s++)try{light(s,continuous);}catch(Exception e){lightStatus[s]="no se pudo enviar";fail("No se pudo enviar el color",e);}
            }
            if("CONNECT".equals(action)){
                try{lastConnect=SystemClock.elapsedRealtime();bridge.connect();lastError="";}catch(Exception e){fail("No se pudo reconectar",e);}
            }
            if("LIGHT_LEFT".equals(action)||"LIGHT_RIGHT".equals(action)){int side="LIGHT_LEFT".equals(action)?0:1;try{light(side,continuous);}catch(Exception e){lightStatus[side]="no se pudo enviar";fail("No se pudo probar la luz",e);}}
            if("LACE_READ".equals(action))prepareLaces();
            if("LACE_ADJUST".equals(action))manualLaces(intent.getIntExtra("sides",0),intent.getIntExtra("delta",0));
            if("LACE_STOP".equals(action))stopLaces();
            if("CHECK".equals(action)) checkFirmware();
            if("TEST_LEFT".equals(action)) motion(0,"Prueba izquierda");
            if("TEST_RIGHT".equals(action)) motion(1,"Prueba derecha");
            if("RESET_LIGHTS".equals(action)) { lightBlocked[0]=lightBlocked[1]=false; lastLight[0]=lastLight[1]=0; for(int side=0;side<2;side++)try{light(side,continuous);}catch(Exception e){fail("No se pudo reactivar la luz",e);} }
        }
        // A killed process never resumes motor movements without the user's explicit action.
        return START_NOT_STICKY;
    }
    void fail(String message,Exception error) {
        Throwable cause=error;
        while(cause.getCause()!=null) cause=cause.getCause();
        lastError=message+": "+cause.getClass().getSimpleName();
        android.util.Log.w("OpenAdapt",lastError);
    }
    final Runnable tick=new Runnable() {
        @Override public void run() {
            if(closing) return;
            long now=SystemClock.elapsedRealtime();
            try {
                boolean bound=bridge.bind();
                if(bound && (lastConnect==0||now-lastConnect>=20000)) {
                    lastConnect=now;
                    if(!bridge.connected(0)||!bridge.connected(1)) bridge.connect();
                }
                for(int s=0;s<2;s++) {
                    if(lightPending[s]>0&&now-lightPending[s]>10000){lightPending[s]=0;lightGeneration[s]++;lightStatus[s]="sin confirmación del calzado; vuelve a probar";}
                    if(positionPending[s]&&now-positionQueryAt[s]>=1500){positionPending[s]=false;positionQuarantine[s]=now+3000;}
                    if(!bridge.connected(s)) {
                        if(lightPending[s]>0){lightStatus[s]="se perdió la conexión";lightPending[s]=0;lightGeneration[s]++;}
                        battery[s]=-1; batteryAt[s]=0; batteryQuery[s]=0;lacePosition[s]=-1;lacePositionAt[s]=0;positionPending[s]=false;
                        if(motorSide==s&&motorStage!=0) abortMotor("Se perdió la conexión durante el movimiento");
                        continue;
                    }
                    if((batteryQuery[s]==0||now-batteryQuery[s]>20000)) {
                        batteryQuery[s]=now;
                        bridge.read(s,81,0);
                        // Stamp only in receive(); avoid flooding while waiting for the first response.
                    }
                    if(continuous&&!lightBlocked[s]&&(lastLight[s]==0||now-lastLight[s]>45000)) light(s,true);
                }
                if(now<lacePanelUntil)readLaces(now);
                laces.tick(now);
            } catch(Exception e) { fail("Esperando conexión",e); }
            // Refresh the bounded wake lock periodically; release it as soon as the session ends.
            if(wakeLock!=null&&(!wakeLock.isHeld()||now-lastWake>300000)) {
                if(wakeLock.isHeld()) wakeLock.release();
                wakeLock.acquire(10*60*1000L);
                lastWake=now;
            }
            summary=bridge.pairName()+"\nIzquierda: "+friendly(bridge.state(0))+" · Derecha: "+friendly(bridge.state(1))
                +"\n"+lastMotion+" · eventos: "+events+"\n"+(continuous?"Luces continuas activadas":"Luces por movimiento")
                +(motorEnabled?" · motor experimental activo":"")+(lastError.isEmpty()?"":"\n"+lastError);
            updateBatterySummary(now);
            diagnostic=snapshot();
            handler.postDelayed(this,2000);
        }
    };
    void updateBatterySummary(long now) {
        batterySummary="Izquierda: "+BatteryStatus.shoe(bridge.connected(0),battery[0],batteryAt[0],now)
            +"\nDerecha: "+BatteryStatus.shoe(bridge.connected(1),battery[1],batteryAt[1],now);
    }
    static String friendly(String state) {
        if(state.startsWith("CONNECTED_AND_AUTHENTICATED")) return "conectada";
        if(state.equals("SIN_PAR")) return "sin emparejar";
        if(state.contains("AUTHENTICATION")) return "requiere autenticación";
        if(state.contains("BOND")||state.contains("INTERVENTION")) return "confirma el emparejamiento";
        if(state.equals("CONNECTING")) return "conectando";
        return "desconectada";
    }
    void light(final int side,boolean steady) throws Exception {
        if(!bridge.connected(side)){lightStatus[side]="sin conexión autenticada";return;}
        if(lightBlocked[side]){lightStatus[side]="suspendida por batería o temperatura; revisa el calzado";return;}
        long now=SystemClock.elapsedRealtime();
        if(lightPending[side]>0&&now-lightPending[side]<1000)return;
        final int generation=++lightGeneration[side];
        lightPending[side]=now;lightStatus[side]="enviando color; esperando al calzado…";
        bridge.animation(side,color,steady,error->handler.post(()->{
            if(closing||generation!=lightGeneration[side])return;
            lightPending[side]=0;
            // A lost connection or a firmware-version check is not a thermal/battery lock.
            String detail="conexión no disponible; vuelve a conectar";
            try{if(error.getClass().getName().equals("v9.p"))detail="firmware "+Bridge.field(error,"k")+"; requiere "+Bridge.field(error,"l");}catch(Exception ignored){}
            lightStatus[side]=detail;
            lastError="Luz "+(side==0?"izquierda: ":"derecha: ")+detail;
        }));
        lastLight[side]=now;
    }
    void motion(int side,String source) {
        if(closing||side<0||side>1) return;
        long now=SystemClock.elapsedRealtime();
        if(now-lastStep[side]<500) return;
        lastStep[side]=now; events++; lastMotion=source;
        android.util.Log.i("OpenAdapt","Movimiento: "+source);
        try { if(!continuous) light(side,false); if(motorEnabled) startMotor(side); }
        catch(Exception e) { fail("No se pudo ejecutar el efecto",e); }
    }
    @Override public void onSensorChanged(SensorEvent e) {
        if(mode!=1) return;
        // A phone turn is a direction estimate, never labelled as a left/right foot strike.
        int direction=turns.sample(e.timestamp,e.values[1]);
        if(direction>0) motion(direction-1,direction==1?"Giro del teléfono a la izquierda":"Giro del teléfono a la derecha");
    }
    @Override public void onAccuracyChanged(Sensor sensor,int accuracy) {}
    void receive(Intent intent) throws Exception {
        if(closing) return;
        if(UPDATE.equals(intent.getAction())) {
            int side=bridge.side(intent.getStringExtra("com.nike.corerf.device.id"));
            if(side<0) return;
            if(mode==2 && intent.hasExtra(UPDATE+".session_data")) motion(side,"Pisada recibida del calzado "+(side==0?"izquierdo":"derecho"));
            return;
        }
        int side=bridge.side(intent.getStringExtra("com.nike.corerf.DEVICE_ID"));
        if(side<0) return;
        byte[] bytes=intent.getByteArrayExtra("com.nike.corerf.EXTRA_DATA");
        if(bytes==null) return;
        Object msg=Bridge.call(Bridge.cls("hc.m0"),"a",bytes);
        if(msg==null) return;
        int op=((Number)Bridge.field(msg,"a")).byteValue()&255;
        String type=((Enum<?>)Bridge.field(msg,"b")).name();
        if(op!=214&&op!=81&&op!=19&&op!=4&&op!=3&&op!=0&&op!=5&&op!=234&&op!=236&&op!=237&&op!=235&&op!=238) return;
        long now=SystemClock.elapsedRealtime();
        if(motorStage!=0&&now-motorStarted>=4000) abortMotor("Confirmación del motor fuera de plazo");
        if(type.equals("NAK")) {
            if(op==234||op==236){lightPending[side]=0;lightGeneration[side]++;lightStatus[side]="el calzado rechazó la animación ("+op+")";lastError=lightStatus[side];}
            if(motorStage!=0&&motorSide==side&&(op==3||op==4||op==0)) abortMotor("El calzado rechazó el movimiento");
            if((op==3||op==4||op==0)&&laces.busy()&&laces.side==side)laces.cancel("El calzado rechazó el ajuste.");
            if(op==4){positionPending[side]=false;positionQuarantine[side]=now+3000;}
            if(op==19) { pendingImage[side]=-1; lastError="La lectura de esa imagen de firmware no está disponible."; }
            return;
        }
        byte[] payload=(byte[])Bridge.field(msg,"c");
        if(payload==null) payload=new byte[0];
        Map<Integer,Long> n=FirmwareCheck.numbers(payload);
        if(type.equals("ACK")) {
            if(op==236&&lightPending[side]>0){lightPending[side]=0;lightGeneration[side]++;lightStatus[side]="inicio de luz aceptado por el calzado";}
            if(op==214) readings[side].put("firmwareVersion",FirmwareCheck.version(payload)).put("versionReadAt",System.currentTimeMillis());
            if(op==81) {
                long percent=FirmwareCheck.unsigned32(payload,4),charge=FirmwareCheck.unsigned32(payload,1);
                if(percent>100||charge>3) throw new IllegalArgumentException("Invalid battery state");
                battery[side]=(int)percent; charger[side]=(int)charge;
                temperature[side]=n.containsKey(3)?FirmwareCheck.fixedDouble(payload,3):Double.NaN; batteryAt[side]=now;
                readings[side].put("battery",new JSONObject(FirmwareCheck.battery(payload)));
                updateBatterySummary(now);laces.tick(now);
                if(!motorConditions(side,now)&&motorSide==side&&motorStage!=0) abortMotor("Motor detenido por batería o temperatura");
            }
            if(op==19 && pendingImage[side]>=0 && now-imageAt[side]<4000) {
                JSONObject images=readings[side].optJSONObject("images");
                if(images==null) { images=new JSONObject(); readings[side].put("images",images); }
                images.put(String.valueOf(pendingImage[side]),new JSONObject(FirmwareCheck.image(payload,pendingImage[side])));
                pendingImage[side]=-1;
            }
            if(op==4){
                long position=FirmwareCheck.unsigned32(payload,1);positionPending[side]=false;
                if(position>100){if(laces.busy())laces.cancel("Posición inválida del calzado.");throw new IllegalArgumentException("Invalid lace position");}
                lacePosition[side]=(int)position;lacePositionAt[side]=now;
                laces.position(side,position,now);
            }
            if(op==4&&motorSide==side&&motorStage==1&&now-motorStarted<1500) {
                long baseline=FirmwareCheck.unsigned32(payload,1);
                if(baseline<2||baseline>100) { abortMotor("Ajuste inicial fuera del rango de prueba"); return; }
                motorBase=MotorCycle.baseline(baseline);
                motorTarget=motorBase-1; motorStage=2;
                final int generation=motorGeneration;
                bridge.position(side,motorTarget,error->handler.post(()->{
                    if(!closing&&generation==motorGeneration&&motorStage!=0) abortMotor("El calzado rechazó el ajuste");
                }));
            }
        }
        if(type.equals("EVENT")&&op==5){
            long status=FirmwareCheck.unsigned32(payload,1),position=FirmwareCheck.unsigned32(payload,2);
            if(position>100){if(laces.busy())laces.cancel("Posición inválida del calzado.");throw new IllegalArgumentException("Invalid lace position");}
            lacePosition[side]=status==0?(int)position:-1;lacePositionAt[side]=status==0?now:0;
            laces.moved(side,status,position,now);
        }
        if(type.equals("EVENT")&&op==5&&motorSide==side&&motorStage>=2) {
            long status=FirmwareCheck.unsigned32(payload,1),position=FirmwareCheck.unsigned32(payload,2);
            if(position>100) { abortMotor("Posición de motor fuera de rango"); return; }
            if(status!=0) { abortMotor("El motor informó un fallo"); return; }
            if(motorStage==2) {
                if(position!=motorTarget) { abortMotor("El motor no confirmó el pequeño recorrido"); return; }
                motorStage=3;
                final int generation=motorGeneration;
                handler.postDelayed(()->{
                    if(closing||!motorEnabled||generation!=motorGeneration||motorStage!=3||motorSide!=side) return;
                    try {
                        long returnAt=SystemClock.elapsedRealtime();
                        if(returnAt-motorStarted>=4000||!bridge.connected(side)||!motorConditions(side,returnAt)) {
                            abortMotor("Regreso cancelado por conexión, batería o temperatura"); return;
                        }
                        motorStage=4;
                        bridge.position(side,motorBase,error->handler.post(()->{
                            if(!closing&&generation==motorGeneration&&motorStage!=0) abortMotor("No se confirmó el regreso al ajuste");
                        }));
                    } catch(Exception e) { abortMotor("No se pudo regresar al ajuste inicial"); }
                },200);
            } else if(motorStage==4) {
                if(position!=motorBase) { abortMotor("El ajuste final no coincide con el inicial"); return; }
                motorStage=0; motorSide=-1; motorGeneration++;
            }
        }
        if(type.equals("EVENT")&&(op==235||op==238)) {
            long reason=FirmwareCheck.unsigned32(payload,4);
            if(reason==3||reason==4) {
                lightBlocked[side]=true;lightPending[side]=0;lightGeneration[side]++;lightStatus[side]="suspendida por batería o temperatura";
                lastError="Luces suspendidas por temperatura o batería. Revisa el calzado antes de reactivarlas.";
            }
        }
    }
    void startMotor(int side) throws Exception {
        long now=SystemClock.elapsedRealtime();
        if(closing||!motorEnabled||motorStage!=0||laces.busy()||!bridge.connected(side)) return;
        if(!motorConditions(side,now)) {
            lastError="Motor en espera: requiere batería reciente, temperatura válida y calzado fuera del cargador."; return;
        }
        if(!motorRate.allow(now)) return;
        motorSide=side; motorStage=1; motorStarted=now;
        final int generation=++motorGeneration;
        try { bridge.read(side,4,0); }
        catch(Exception e) { abortMotor("No se pudo consultar el ajuste inicial"); throw e; }
        handler.postDelayed(()->{ if(!closing&&generation==motorGeneration&&motorStage!=0&&SystemClock.elapsedRealtime()-motorStarted>=4000) abortMotor("Sin confirmación del motor; prueba desactivada"); },4100);
    }
    boolean motorConditions(int side,long now) {
        return MotorCycle.conditions(now,batteryAt[side],battery[side],temperature[side],charger[side]);
    }
    void abortMotor(String reason) {
        int side=motorSide; motorStage=0; motorSide=-1; motorEnabled=false; motorGeneration++; lastError=reason;
        if(side>=0) try { bridge.stopMotor(side); } catch(Exception ignored) {}
    }
    void checkFirmware() {
        long now=SystemClock.elapsedRealtime();
        if(now<checkingUntil) { lastError="La comprobación de firmware sigue en curso."; return; }
        checkingUntil=now+32000;
        for(int side=0;side<2;side++) {
            final int s=side;
            try { readings[s]=new JSONObject(); bridge.read(s,214,0); } catch(Exception e) { fail("Conecta ambas zapatillas para comprobarlas",e); continue; }
            for(int image=0;image<6;image++) {
                final int id=image;
                handler.postDelayed(()->{
                    if(closing) return;
                    // Only one unresolved image query per shoe: an untagged late ACK must not be attributed to a different slot.
                    if(pendingImage[s]>=0) { lastError="Lectura de firmware incompleta: falta una respuesta."; return; }
                    try { pendingImage[s]=id; imageAt[s]=SystemClock.elapsedRealtime(); bridge.read(s,19,id); }
                    catch(Exception e) { fail("No se pudo leer el firmware",e); }
                },500L+image*4500L);
            }
        }
    }
    String snapshot() {
        try {
            JSONObject obj=new JSONObject();
            obj.put("app","Open Adapt experimental").put("capturedAt",System.currentTimeMillis());
            obj.put("binaryFirmwareBackup",false).put("fullIntegrityVerified",false);
            obj.put("note","Lectura de versiones y estados; no contiene una copia binaria ni prueba criptográfica del firmware.");
            for(int side=0;side<2;side++)readings[side].put("connection",bridge.state(side)).put("lightingStatus",lightStatus[side]).put("lightingHardwareBlocked",lightBlocked[side]);
            obj.put("left",new JSONObject(readings[0].toString())).put("right",new JSONObject(readings[1].toString()));
            return obj.toString(2);
        } catch(Exception e) { return "No se pudo generar el diagnóstico."; }
    }
    @Override public void onDestroy() {
        closing=true; active=false; handler.removeCallbacksAndMessages(null);
        laces.cancel("Ajuste detenido.");
        abortMotor("Detenido");
        try { bridge.stopLights(); } catch(Exception ignored) {}
        try { if(localBus!=null) Bridge.call(localBus,"e",receiver); } catch(Exception ignored) {}
        if(sensors!=null) sensors.unregisterListener(this);
        if(wakeLock!=null&&wakeLock.isHeld()) wakeLock.release();
        try { if(bridge.requester!=null) bridge.request(2,Bridge.constant("v9.o2","b")); } catch(Exception ignored) {}
        summary="Detenido"; batterySummary="Izquierda: sin conexión\nDerecha: sin conexión"; instance=null;
        stopForeground(true); super.onDestroy();
    }
    @Override public IBinder onBind(Intent intent) { return null; }
}
