package com.openadapt;
import java.util.*;
public final class LightDispatchTest {
    static int count;
    static void check(boolean value){count++;if(!value)throw new AssertionError("Light dispatch check "+count);}
    static final class Fake implements LightDispatch.Port {
        final List<String> sends=new ArrayList<>(),cancels=new ArrayList<>();
        boolean sendError,cancelError;
        public void send(int s,int rgb,boolean steady,long id)throws Exception{sends.add(s+":"+rgb+":"+steady+":"+id);if(sendError)throw new Exception();}
        public void cancel(int s,long id)throws Exception{cancels.add(s+":"+id);if(cancelError)throw new Exception();}
    }
    static void invalid(Runnable action){boolean threw=false;try{action.run();}catch(IllegalArgumentException e){threw=true;}check(threw);}
    public static void main(String[] args){
        Fake f=new Fake();LightDispatch c=new LightDispatch(f);
        check(c.request(0,0xff336699,false,100));long first=c.generation(0);
        check(c.pending(0));check(f.sends.get(0).startsWith("0:3368601:false:"));
        for(int i=0;i<20;i++)check(c.request(0,0x336699,false,101+i));
        check(f.sends.size()==1);check(!c.queued(0));
        check(c.request(0,0xff0000,false,200));check(c.queued(0));
        c.request(0,0x00ff00,true,210);c.request(0,0x0000ff,true,220);
        check(f.sends.size()==1);c.complete(0,first,true,300);
        check(f.sends.size()==2);check(f.sends.get(1).startsWith("0:255:true:"));check(c.pending(0));check(!c.queued(0));
        long second=c.generation(0);check(second!=first);
        c.complete(0,first,false,310);check(c.pending(0));check(f.cancels.isEmpty());
        // Feet upload independently; completing one cannot release the other's queue.
        c.request(1,0xeeeeee,false,320);long right=c.generation(1);c.request(1,0xdddddd,false,330);
        check(c.pending(0)&&c.pending(1));check(f.sends.size()==3);
        c.complete(0,second,true,400);check(!c.pending(0));check(c.pending(1));check(f.sends.size()==3);
        c.complete(1,right,true,410);check(f.sends.size()==4);check(f.sends.get(3).startsWith("1:14540253:false:"));
        c.cancelAll();check(!c.pending(0)&&!c.pending(1));
        // Returning to the active intent supersedes an intervening different color.
        c.request(0,100,false,500);first=c.generation(0);c.request(0,200,false,510);c.request(0,100,false,520);
        check(!c.queued(0));int sent=f.sends.size();c.complete(0,first,true,530);check(f.sends.size()==sent);
        // Same color with a different duration is still a meaningful change.
        c.request(0,100,false,600);first=c.generation(0);c.request(0,100,true,610);check(c.queued(0));
        c.complete(0,first,true,620);check(f.sends.get(f.sends.size()-1).contains(":100:true:"));c.cancelAll();
        // Failed upload drops pending intent, requests cancellation, never retries on late success.
        c.request(0,10,false,700);first=c.generation(0);c.request(0,20,false,710);sent=f.sends.size();
        c.complete(0,first,false,720);check(!c.pending(0)&&!c.queued(0));check(!c.error(0).isEmpty());
        c.complete(0,first,true,730);check(f.sends.size()==sent);check(!f.cancels.isEmpty());
        // A queued change must not prolong the in-flight upload deadline.
        c.request(0,30,false,1000);first=c.generation(0);c.request(0,40,false,45999);sent=f.sends.size();
        c.tick(45999);check(c.pending(0));c.tick(46000);check(!c.pending(0)&&!c.queued(0));
        c.complete(0,first,true,46001);check(f.sends.size()==sent);
        // Completion at the deadline cannot run a queued color either.
        c.request(0,50,false,50000);first=c.generation(0);c.request(0,60,false,50001);sent=f.sends.size();
        c.complete(0,first,true,95000);check(f.sends.size()==sent);check(!c.pending(0));
        // A backward clock invalidates the upload rather than extending its lifetime.
        c.request(0,70,false,100000);first=c.generation(0);c.tick(99999);check(!c.pending(0));
        c.complete(0,first,true,100001);check(!c.pending(0));
        // Cancellation invalidates every old callback, including after a new explicit request.
        c.request(0,80,false,110000);first=c.generation(0);c.request(0,90,false,110001);c.cancelAll();
        c.request(0,100,false,110002);second=c.generation(0);sent=f.sends.size();c.complete(0,first,true,110003);
        check(c.pending(0)&&c.generation(0)==second);check(f.sends.size()==sent);
        // A hardware block persists until explicit reset and never replays stale work.
        c.block(0);sent=f.sends.size();check(c.blocked(0));check(!c.request(0,100,false,110004));
        c.complete(0,second,true,110005);check(f.sends.size()==sent);c.reset(0);check(!c.blocked(0));check(!c.pending(0));
        check(c.request(0,100,false,110006));c.cancelAll();
        // A throwing send is cleaned up; a failed cancellation inhibits further requests.
        f.sendError=true;check(!c.request(0,110,false,120000));check(!c.pending(0));check(!c.error(0).isEmpty());
        f.cancelError=true;check(!c.request(1,120,false,120001));check(c.blocked(1));
        f.sendError=false;check(!c.request(1,120,false,120002));f.cancelError=false;c.reset(1);check(c.request(1,120,false,120003));
        LightDispatch tested=c;
        invalid(()->tested.request(-1,0,false,1));invalid(()->tested.request(2,0,false,1));
        invalid(()->tested.request(0,0x88336699,false,1));invalid(()->tested.request(0,0,false,-1));
        invalid(()->tested.complete(0,1,true,-1));invalid(()->tested.tick(-1));
        System.out.println("LightDispatchTest: "+count+" assertions passed");
    }
}
