package com.openadapt.instrumentation;
import android.app.Instrumentation;
import android.os.Bundle;
import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

/** Owned-emulator checks against the actual packaged ADK classes. Never connects a shoe. */
public final class LightingRuntimeCheck extends Instrumentation {
    ClassLoader loader;Class<?> bridge;Method make,call,field;int checks;
    Object type(String n)throws Exception{return Class.forName(n,true,loader);}
    Object create(String n,Object...a)throws Exception{return make.invoke(null,n,a);}
    Object invoke(Object o,String n,Object...a)throws Exception{return call.invoke(null,o,n,a);}
    Object get(Object o,String n)throws Exception{return field.invoke(null,o,n);}
    void set(Object o,String name,Object value)throws Exception{Class<?> c=o.getClass();for(;c!=null;c=c.getSuperclass())try{Field f=c.getDeclaredField(name);f.setAccessible(true);f.set(o,value);return;}catch(NoSuchFieldException e){}throw new NoSuchFieldException(name);}
    void check(boolean value,String name){checks++;if(!value)throw new AssertionError(name);}
    boolean skip(Object command)throws Exception{return (Boolean)bridge.getMethod("skipCancelledAnimation",Object.class).invoke(null,command);}
    void cancelledCore(Object core,String method,Object command)throws Exception{
        try{invoke(core,method,command);throw new AssertionError("Cancelled command executed: "+method);}
        catch(InvocationTargetException e){Throwable t=e;while(t.getCause()!=null)t=t.getCause();check(t instanceof java.util.concurrent.CancellationException,"Core guard "+method);}
    }
    @Override public void onCreate(Bundle args){super.onCreate(args);start();}
    @Override public void onStart(){Bundle result=new Bundle();try{
        waitForIdleSync();
        loader=getTargetContext().getClassLoader();bridge=(Class<?>)type("com.openadapt.Bridge");
        make=bridge.getDeclaredMethod("make",String.class,Object[].class);make.setAccessible(true);
        call=bridge.getDeclaredMethod("call",Object.class,String.class,Object[].class);call.setAccessible(true);
        field=bridge.getDeclaredMethod("field",Object.class,String.class);field.setAccessible(true);
        Object id=create("v9.a",UUID.randomUUID());
        Object device=create("ea.b","fixture","0000","OPENADAPT_TEST_L","00:00:00:00:00:00","0000",100,false);
        Object repo=create("ya.d","OPENADAPT_TEST_PAIR",device);
        Object rgb=create("ba.b",create("ba.g0",37),create("ba.x",199),create("ba.o",255));
        Object frame=create("ba.c",350,Arrays.asList(rgb,rgb,rgb));
        Object animation=create("ba.h",471,0,Arrays.asList(frame),0,true,false);
        Object upload=create("ya.j",repo,id,animation),start=create("ya.z",repo,id);
        check(!skip(upload),"Uncancelled upload preserved");check(!skip(start),"Uncancelled start preserved");
        @SuppressWarnings("unchecked") Set<Object> cancelled=(Set<Object>)get(bridge,"cancelledAnimations");cancelled.add(id);
        check(skip(upload),"Cancelled upload recognized");check((Boolean)invoke(get(upload,"h"),"isDone"),"Cancelled upload releases queue waiter");
        Object queued=create("ya.j",repo,id,animation);invoke(type("ya.d"),"Y",repo,queued);
        check(((Collection<?>)get(repo,"r")).isEmpty(),"Cancelled upload never queued");
        Object executor=create("ya.a0",repo,create("ya.j",repo,id,animation));invoke(executor,"invoke");
        check(get(repo,"w")==null,"Cancelled executor does not start upload");
        cancelledCore(get(repo,"A"),"A",upload);cancelledCore(get(repo,"A"),"d",start);
        Object old=create("mc.e","1.5.0"),required=create("mc.e","2.1.3"),error=create("kc.a",old,required);
        Object wrapped=create("v9.y0","OPENADAPT_TEST_L",id,error);
        Method detail=bridge.getDeclaredMethod("animationError",Object.class);detail.setAccessible(true);
        String message=(String)detail.invoke(null,wrapped);check(message.contains("Firmware no compatible")&&message.contains("1.5.0")&&message.contains("2.1.3"),"Real nested firmware cause preserved");
        final AtomicInteger cancels=new AtomicInteger();
        Object handle=Proxy.newProxyInstance(loader,new Class[]{(Class<?>)type("hc.a")},(p,m,a)->{if(m.getName().equals("a")){cancels.incrementAndGet();return null;}return null;});
        Object listener=Proxy.newProxyInstance(loader,new Class[]{(Class<?>)type("v9.p0")},(p,m,a)->{if(m.getName().equals("hashCode"))return System.identityHashCode(p);if(m.getName().equals("equals"))return p==a[0];return null;});
        Object owner=bridge.newInstance();Class<?> txn=(Class<?>)type("com.openadapt.Bridge$Animation");Constructor<?> ctor=txn.getDeclaredConstructor(long.class,Object.class,Object.class);ctor.setAccessible(true);
        Object active=ctor.newInstance(7L,id,repo);set(active,"listener",listener);invoke(repo,"B",listener);
        ((Object[])get(owner,"animations"))[0]=active;set(repo,"w",upload);set(repo,"c",handle);
        Method cancel=bridge.getDeclaredMethod("cancelAnimation",int.class,long.class);cancel.setAccessible(true);cancel.invoke(owner,0,7L);
        check(cancels.get()==1,"Only owned active animation cancelled");check(((Object[])get(owner,"animations"))[0]==null,"Cancelled transaction detached");check(!((Collection<?>)get(repo,"p")).contains(listener),"Listener removed");
        Object otherId=create("v9.a",UUID.randomUUID()),other=create("ya.j",repo,otherId,animation);
        active=ctor.newInstance(8L,id,repo);set(active,"listener",listener);invoke(repo,"B",listener);((Object[])get(owner,"animations"))[0]=active;set(repo,"w",other);set(repo,"c",handle);cancel.invoke(owner,0,8L);
        check(cancels.get()==1,"Unrelated animation not cancelled");check(!skip(other),"Unrelated identifier remains active");
        result.putString("result","PASS: "+checks+" real-APK reflection, cancellation and error-unwrapping checks; no hardware connection.");finish(-1,result);
    }catch(Throwable e){Throwable t=e;while(t.getCause()!=null)t=t.getCause();result.putString("result","FAIL: "+t);finish(0,result);}}
}
