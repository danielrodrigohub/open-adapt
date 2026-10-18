package com.openadapt;

import android.content.*;
import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

/** Adapter for the exact 1.29.3 artifact. Names here are verified smali symbols. */
public final class Bridge {
    static final Map<String,Object> cores = new ConcurrentHashMap<>();
    Object pair, requester;
    private static final Set<Object> cancelledAnimations=ConcurrentHashMap.newKeySet();
    final Animation[] animations=new Animation[2];
    static final class Animation {
        final long generation;final Object identifier,repository;final java.util.concurrent.atomic.AtomicBoolean done=new java.util.concurrent.atomic.AtomicBoolean();
        Object listener;
        Animation(long g,Object id,Object repo){generation=g;identifier=id;repository=repo;}
    }
    // Hooks cover queued commands and the race between cancelling and starting the transfer.
    public static boolean skipCancelledAnimation(Object command){
        if(command==null||!(command.getClass().getName().equals("ya.j")||command.getClass().getName().equals("ya.z")))return false;
        try{
            if(!cancelledAnimations.contains(call(command,"n")))return false;
            call(field(command,"h"),"complete",Boolean.TRUE);return true;
        }catch(Exception e){throw new IllegalStateException("Unable to check animation cancellation",e);}
    }
    public static void requireActiveAnimation(Object command){
        if(command!=null&&(command.getClass().getName().equals("ya.j")||command.getClass().getName().equals("ya.z"))){
            try{if(cancelledAnimations.contains(call(command,"n")))throw new java.util.concurrent.CancellationException("OpenAdapt animation cancelled");}
            catch(java.util.concurrent.CancellationException e){throw e;}catch(Exception e){throw new IllegalStateException(e);}
        }
    }
    String[] ids = new String[2];
    public static void registerCore(Object core) {
        try { cores.put((String)field(core,"h"),core); } catch (Exception ignored) {}
    }
    static Class<?> cls(String name) throws Exception { return Class.forName(name); }
    static Object field(Object obj,String name) throws Exception {
        Class<?> c = obj instanceof Class ? (Class<?>)obj : obj.getClass();
        for (;c!=null;c=c.getSuperclass()) {
            try { Field f=c.getDeclaredField(name); f.setAccessible(true); return f.get(obj instanceof Class?null:obj); }
            catch(NoSuchFieldException ignored) {}
        }
        throw new NoSuchFieldException(name);
    }
    static boolean accepts(Class<?> t,Object value) {
        if(value==null) return !t.isPrimitive();
        if(t==int.class) return value instanceof Integer;
        if(t==byte.class) return value instanceof Byte;
        if(t==boolean.class) return value instanceof Boolean;
        return t.isInstance(value);
    }
    static boolean matches(Class<?>[] types,Object[] args) {
        if(types.length!=args.length) return false;
        for(int i=0;i<types.length;i++) if(!accepts(types[i],args[i])) return false;
        return true;
    }
    static Object make(String name,Object...args) throws Exception {
        for(Constructor<?> c:cls(name).getConstructors()) if(matches(c.getParameterTypes(),args)) return c.newInstance(args);
        throw new NoSuchMethodException(name+" constructor/"+args.length);
    }
    static Object call(Object obj,String name,Object...args) throws Exception {
        Class<?> c=obj instanceof Class?(Class<?>)obj:obj.getClass();
        for(Method m:c.getMethods()) if(m.getName().equals(name)&&matches(m.getParameterTypes(),args)) {
            m.setAccessible(true); return m.invoke(obj instanceof Class?null:obj,args);
        }
        throw new NoSuchMethodException(c.getName()+"."+name+"/"+args.length);
    }
    static Object constant(String type,String name) throws Exception { return field(cls(type),name); }
    interface Callback { void accept(Object value); }
    static Object callback(final Callback cb) throws Exception {
        return Proxy.newProxyInstance(Bridge.class.getClassLoader(),new Class[]{cls("qd.l")},(proxy,method,args)->{
            if(method.getName().equals("invoke")) { cb.accept(args[0]); return constant("fd.o","a"); }
            if(method.getName().equals("hashCode")) return System.identityHashCode(proxy);
            if(method.getName().equals("equals")) return proxy==args[0];
            return "OpenAdaptCallback";
        });
    }
    boolean bind() throws Exception {
        if(requester!=null) return true;
        Object repo=constant("com.nike.adapt.adk.DeviceListRepository","INSTANCE");
        List<?> pairs=(List<?>)call(cls("com.nike.adapt.adk.DeviceListRepository"),"getLocalDevices$default",repo,null,1,null);
        if(pairs.isEmpty()) return false;
        // Prefer the user's current selection; otherwise the most recently used local pair.
        pair=constant("com.nike.adapt.PeripheralConnectionManager","i");
        if(pair==null) {
            long newest=Long.MIN_VALUE;
            for(Object candidate:pairs) {
                long used=((Number)field(candidate,"s")).longValue();
                if(used>newest) { pair=candidate; newest=used; }
            }
        }
        ids[0]=(String)field(field(pair,"k"),"j"); ids[1]=(String)field(field(pair,"l"),"j");
        requester=make("v9.l",pair);
        return true;
    }
    void request(int side,Object request) throws Exception {
        if(!bind()) throw new IllegalStateException("Empareja tus zapatillas una vez en Controles Adapt.");
        call(requester,"e",constant("w9.u1",side==0?"LEFT":side==1?"RIGHT":"BOTH"),request);
    }
    void connect() throws Exception { if(bind()) request(2,make("v9.c2")); }
    String pairName() { try { return bind()?(String)field(pair,"i"):"Sin par guardado"; } catch(Exception e) { return "Par no disponible"; } }
    String state(int side) {
        try {
            if(!bind()) return "SIN_PAR";
            Object connection=call(requester,"a");
            return ((Enum<?>)field(field(connection,side==0?"h":"i"),"h")).name();
        } catch(Exception e) { return "NO_DISPONIBLE"; }
    }
    boolean connected(int side) { return state(side).startsWith("CONNECTED_AND_AUTHENTICATED"); }
    int side(String id) {
        if(id==null) return -1;
        for(int i=0;i<2;i++) if(id.equalsIgnoreCase(ids[i])) return i;
        return -1;
    }
    void read(int side,int opcode,int image) throws Exception {
        if(opcode!=19 && opcode!=214 && opcode!=81 && opcode!=4) throw new IllegalArgumentException("Not a diagnostic read");
        if(!connected(side)) throw new IllegalStateException("Zapatilla sin conexión autenticada");
        Object core=cores.get(ids[side]);
        if(core==null) throw new IllegalStateException("Esperando conexión del calzado");
        byte[] payload=opcode==19?new byte[]{8,(byte)image}:null;
        Object msg=make("hc.m0",(byte)opcode,constant("hc.m0$a","REQUEST"),payload);
        call(field(core,"k"),"i",msg);
    }
    void animation(final int side,int rgb,boolean continuous,long generation,Callback result) throws Exception {
        if(!bind()||!connected(side))throw new IllegalStateException("Zapatilla sin conexión autenticada");
        if(animations[side]!=null)throw new IllegalStateException("An animation is still pending");
        Object identifier=make("v9.a",UUID.randomUUID());
        Object commandRequester=make("v9.l",pair,identifier);
        Object controller=call(commandRequester,"c");
        Object repository=call(controller,side==0?"A0":"B0");
        final Animation active=new Animation(generation,identifier,repository);animations[side]=active;
        active.listener=Proxy.newProxyInstance(Bridge.class.getClassLoader(),new Class[]{cls("v9.p0")},(proxy,method,args)->{
            String name=method.getName();
            if(name.equals("hashCode"))return System.identityHashCode(proxy);
            if(name.equals("equals"))return proxy==args[0];
            if(name.equals("toString"))return "OpenAdaptAnimationListener";
            if((name.equals("a")||name.equals("b"))&&args!=null&&args.length==1){
                Object value=args[0];String type=value.getClass().getName();
                if((type.equals("v9.a1")||type.equals("v9.y0"))&&identifier.equals(call(value,"a"))&&active.done.compareAndSet(false,true))result.accept(value);
            }
            return null;
        });
        try{
            call(repository,"B",active.listener);
            Object fail=callback(error->{if(active.done.compareAndSet(false,true))result.accept(error);});
            List<Object> frames=new ArrayList<>();
            frames.add(frame(continuous?60000:350,rgb));if(!continuous)frames.add(frame(150,0));
            Object animation=make("ba.h",471,0,frames,0,true,false);
            // The original ADK and CoreRF firmware, authentication and thermal checks remain.
            call(commandRequester,"e",constant("w9.u1",side==0?"LEFT":"RIGHT"),make("v9.x0",animation,fail,fail));
        }catch(Exception e){finishAnimation(side,generation);throw e;}
    }
    void finishAnimation(int side,long generation)throws Exception{
        Animation active=animations[side];if(active==null||active.generation!=generation)return;
        if(active.listener!=null)call(active.repository,"h",active.listener);
        active.done.set(true);animations[side]=null;
    }
    void cancelAnimation(int side,long generation)throws Exception{
        Animation active=animations[side];if(active==null||active.generation!=generation)return;
        cancelledAnimations.add(active.identifier);active.done.set(true);
        try{
            Object command=field(active.repository,"w");
            if(command!=null&&active.identifier.equals(call(command,"n"))&&command.getClass().getName().equals("ya.j")){
                Object handle=field(active.repository,"c");if(handle!=null)call(handle,"a");
            }
        }finally{finishAnimation(side,generation);}
        if(connected(side))request(side,make("v9.d1",callback(v->{}),callback(v->{})));
    }
    static String animationError(Object value){
        try{
            if(value.getClass().getName().equals("v9.p"))return "Firmware "+field(value,"k")+"; requiere "+field(value,"l");
            Throwable cause=value.getClass().getName().equals("v9.y0")?(Throwable)call(value,"d"):(value instanceof Throwable?(Throwable)value:(Throwable)call(value,"d"));
            while(cause.getCause()!=null)cause=cause.getCause();
            String message=cause.getMessage();
            if(cause.getClass().getName().equals("kc.a"))return "Firmware no compatible: "+message;
            return "Error de animación: "+cause.getClass().getSimpleName()+(message==null?"":": "+message.substring(0,Math.min(160,message.length())));
        }catch(Exception e){return "No se pudo completar la animación: "+value.getClass().getSimpleName();}
    }
    Object frame(int ms,int rgb) throws Exception {
        Object color=make("ba.b",make("ba.g0",(rgb>>16)&255),make("ba.x",(rgb>>8)&255),make("ba.o",rgb&255));
        return make("ba.c",ms,Arrays.asList(color,color,color));
    }
    void stopLights() throws Exception {
        request(2,make("v9.d1",callback(v->{}),callback(v->{})));
    }
    void position(int side,int percent,Callback error) throws Exception {
        if(percent<0 || percent>100) throw new IllegalArgumentException("Position out of range");
        if(side<0||side>1||!connected(side)) throw new IllegalStateException("Zapatilla sin conexión autenticada");
        Object core=cores.get(ids[side]);
        if(core==null) throw new IllegalStateException("Esperando conexión del calzado");
        // Only MotionService calls this, serially from its main-thread state machine.
        // Bypass the ADK coroutine queue: a later STOP must follow this command in
        // the same CoreRF single-thread executor (hc.l.G creates that executor).
        // Hardware faults/NAKs remain observed by MotionService; no retry is sent.
        call(field(core,"k"),"i",make("hc.m0",(byte)3,constant("hc.m0$a","REQUEST"),new byte[]{8,(byte)percent}));
    }
    void stopMotor(int side) throws Exception {
        // STOP follows any already-enqueued position command in the same CoreRF executor.
        if(!connected(side)) return;
        Object core=cores.get(ids[side]);
        if(core!=null) call(field(core,"k"),"i",make("hc.m0",(byte)0,constant("hc.m0$a","REQUEST"),new byte[]{8,8}));
    }
}
