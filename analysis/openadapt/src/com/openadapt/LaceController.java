package com.openadapt;

/** One bounded manual operation at a time. No autonomous retries or automatic return. */
final class LaceController {
    interface Port { boolean ready(int side,long now); void read(int side) throws Exception; void move(int side,int target) throws Exception; void stop(int side) throws Exception; }
    final Port port;
    int mask,side=-1,delta,target,phase,completed;
    long deadline,lastStart=-1;
    String message="Conecta tu par para leer el ajuste.";
    LaceController(Port value) { port=value; }
    boolean busy() { return phase!=0; }
    boolean start(int selected,int change,long now) {
        if(busy())return false;
        if(selected<1||selected>3||change==0||change< -5||change>5||now<0) {message="Selecciona un cambio de 1 a 5 puntos.";return false;}
        if(lastStart>=0&&(now<lastStart||now-lastStart<1000)){message="Espera un segundo entre ajustes.";return false;}
        for(int s=0;s<2;s++)if((selected&(1<<s))!=0&&!port.ready(s,now)){message="Ajuste bloqueado: revisa conexión, batería y temperatura de los lados seleccionados.";return false;}
        mask=selected;delta=change;completed=0;lastStart=now;side=-1;
        next(now);return busy();
    }
    void next(long now) {
        side++;
        while(side<2&&(mask&(1<<side))==0)side++;
        if(side>=2){phase=0;side=-1;message=completed>0?"Ajuste confirmado por el calzado.":"El ajuste ya está en el límite seleccionado.";return;}
        if(!port.ready(side,now)){cancel("Ajuste interrumpido: el siguiente lado no está disponible.");return;}
        phase=1;deadline=now+1500;message="Leyendo ajuste "+(side==0?"izquierdo":"derecho")+"…";
        try{port.read(side);}catch(Exception e){cancel("No se pudo consultar el ajuste.");}
    }
    void position(int s,long value,long now) {
        if(phase!=1||s!=side)return;
        if(value<0||value>100||now<lastStart||now>=deadline||!port.ready(s,now)){cancel("Lectura de ajuste inválida o fuera de plazo.");return;}
        int baseline=(int)value;target=Math.max(0,Math.min(100,baseline+delta));
        if(target==baseline){next(now);return;}
        phase=2;deadline=now+4000;message=(delta>0?"Ajustando ":"Aflojando ")+(s==0?"izquierda":"derecha")+" → "+target+" %…";
        try{port.move(s,target);}catch(Exception e){cancel("No se pudo enviar el ajuste.");}
    }
    void moved(int s,long status,long value,long now) {
        if(phase!=2||s!=side)return;
        if(now<lastStart||now>=deadline||status!=0||value!=target||!port.ready(s,now)){cancel("No se confirmó el ajuste solicitado; movimiento detenido.");return;}
        completed++;next(now);
    }
    void tick(long now) {
        if(!busy())return;
        if(now<lastStart||now>=deadline){cancel("Sin confirmación del calzado; ajuste detenido.");return;}
        for(int s=side;s<2;s++)if((mask&(1<<s))!=0&&!port.ready(s,now)){cancel("Ajuste detenido por conexión, batería o temperatura.");return;}
    }
    void cancel(String reason) {
        boolean wasBusy=busy();int selected=mask;phase=0;side=-1;message=reason;
        if(wasBusy)for(int s=0;s<2;s++)if((selected&(1<<s))!=0)try{port.stop(s);}catch(Exception ignored){}
    }
}
