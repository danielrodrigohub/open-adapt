package com.openadapt;

/** Serial custom-animation uploads per shoe. Call only from the owning service thread. */
final class LightDispatch {
    interface Port {
        void send(int side,int rgb,boolean steady,long generation) throws Exception;
        void cancel(int side,long generation) throws Exception;
    }
    static final long TIMEOUT_MS=45000;
    final Port port;
    private final boolean[] pending=new boolean[2],queued=new boolean[2],blocked=new boolean[2],steady=new boolean[2],queuedSteady=new boolean[2];
    private final int[] color=new int[2],queuedColor=new int[2];
    private final long[] generation=new long[2],started=new long[2];
    private final String[] error={"",""};
    private long sequence;
    LightDispatch(Port value){if(value==null)throw new IllegalArgumentException("port");port=value;}
    static void side(int s){if(s<0||s>1)throw new IllegalArgumentException("side");}
    static void time(long now){if(now<0)throw new IllegalArgumentException("time");}
    static int rgb(int value){int alpha=value>>>24;if(alpha!=0&&alpha!=255)throw new IllegalArgumentException("RGB must be 24-bit or opaque ARGB");return value&0xffffff;}
    boolean pending(int s){side(s);return pending[s];}
    boolean queued(int s){side(s);return queued[s];}
    boolean blocked(int s){side(s);return blocked[s];}
    long generation(int s){side(s);return generation[s];}
    String error(int s){side(s);return error[s];}
    /** True if accepted (including a coalesced change); false if blocked or send failed. */
    boolean request(int s,int value,boolean continuous,long now){
        side(s);time(now);int normalized=rgb(value);
        expire(s,now);
        if(blocked[s])return false;
        if(pending[s]){
            // The latest intent wins, including a return to the in-flight color.
            queued[s]=color[s]!=normalized||steady[s]!=continuous;
            queuedColor[s]=normalized;queuedSteady[s]=continuous;
            return true;
        }
        return send(s,normalized,continuous,now);
    }
    private boolean send(int s,int value,boolean continuous,long now){
        pending[s]=true;queued[s]=false;color[s]=value;steady[s]=continuous;
        started[s]=now;generation[s]=++sequence;error[s]="";
        long id=generation[s];
        try{port.send(s,value,continuous,id);return true;}
        catch(Exception e){
            if(pending[s]&&generation[s]==id){error[s]="No se pudo enviar la animación: "+e.getClass().getSimpleName();cancel(s);}
            return false;
        }
    }
    /** Ignore stale callbacks; only a successful current upload may release a queued color. */
    void complete(int s,long id,boolean success,long now){
        side(s);time(now);
        if(!pending[s]||generation[s]!=id)return;
        if(expire(s,now))return;
        if(!success){error[s]="El calzado no confirmó la animación.";cancel(s);return;}
        boolean again=queued[s];int next=queuedColor[s];boolean continuous=queuedSteady[s];
        pending[s]=false;queued[s]=false;
        if(again&&!blocked[s])send(s,next,continuous,now);
    }
    void tick(long now){time(now);for(int s=0;s<2;s++)expire(s,now);}
    private boolean expire(int s,long now){
        if(!pending[s]||(now>=started[s]&&now-started[s]<TIMEOUT_MS))return false;
        error[s]="Sin confirmación del calzado; animación cancelada.";cancel(s);return true;
    }
    void cancel(int s){
        side(s);boolean active=pending[s];long id=generation[s];
        pending[s]=false;queued[s]=false;generation[s]=++sequence;
        if(active)try{port.cancel(s,id);}catch(Exception e){blocked[s]=true;error[s]="No se pudo cancelar la carga; reconecta antes de reactivar las luces.";}
    }
    void cancelAll(){for(int s=0;s<2;s++)cancel(s);}
    void block(int s){side(s);blocked[s]=true;cancel(s);}
    /** Explicit recovery only; never replay an old queued color. */
    void reset(int s){side(s);cancel(s);blocked[s]=false;error[s]="";}
}
