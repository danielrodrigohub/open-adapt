package com.openadapt;
import java.util.*;
public final class LaceControllerTest {
    static int count;
    static void check(boolean v){count++;if(!v)throw new AssertionError("Lace check "+count);}
    static final class Fake implements LaceController.Port {
        final List<String> sent=new ArrayList<>();boolean[] ready={true,true};boolean readError,moveError,stopError;
        public boolean ready(int s,long now){return ready[s];}
        public void read(int s)throws Exception{sent.add("read"+s);if(readError)throw new Exception();}
        public void move(int s,int p)throws Exception{sent.add("move"+s+":"+p);if(moveError)throw new Exception();}
        public void stop(int s)throws Exception{sent.add("stop"+s);if(stopError)throw new Exception();}
    }
    static void single(int mask,int side,int baseline,int delta,int target){
        Fake f=new Fake();LaceController c=new LaceController(f);check(c.start(mask,delta,1000));check(f.sent.equals(Arrays.asList("read"+side)));
        c.position(side,baseline,1100);
        if(target!=baseline){check(c.busy());check(f.sent.contains("move"+side+":"+target));c.moved(side,0,target,1200);}
        else check(!f.sent.toString().contains("move"));
        check(!c.busy());check(!f.sent.toString().contains("stop"));
    }
    public static void main(String[] args){
        single(1,0,50,1,51);single(2,1,50,-1,49);single(1,0,98,5,100);single(2,1,2,-5,0);single(1,0,100,1,100);single(2,1,0,-1,0);
        Fake f=new Fake();LaceController c=new LaceController(f);check(c.start(3,3,1000));c.position(0,40,1100);check(!f.sent.contains("read1"));c.moved(1,0,43,1150);check(c.side==0);c.moved(0,0,43,1200);check(f.sent.contains("read1"));c.position(1,60,1300);c.moved(1,0,63,1400);check(!c.busy());check(f.sent.equals(Arrays.asList("read0","move0:43","read1","move1:63")));
        for(int[] invalid:new int[][]{{0,1},{4,1},{1,0},{1,6},{1,-6}}){f=new Fake();c=new LaceController(f);check(!c.start(invalid[0],invalid[1],1000));check(f.sent.isEmpty());}
        f=new Fake();f.ready[1]=false;c=new LaceController(f);check(!c.start(3,1,1000));check(f.sent.isEmpty());check(c.start(1,1,1000));check(!c.start(1,1,1100));check(f.sent.size()==1);c.cancel("Stop");check(!c.busy());check(f.sent.contains("stop0"));c.position(0,50,1200);check(!f.sent.toString().contains("move"));
        f=new Fake();c=new LaceController(f);c.start(3,1,1000);c.tick(2500);check(!c.busy());check(f.sent.containsAll(Arrays.asList("stop0","stop1")));c.position(0,50,2600);check(!f.sent.toString().contains("move"));
        f=new Fake();c=new LaceController(f);c.start(1,1,1000);c.position(0,50,1100);c.tick(5100);check(!c.busy());check(f.sent.contains("stop0"));c.moved(0,0,51,5200);check(!c.busy());
        for(int status:new int[]{1,2,3,4,5,6}){f=new Fake();c=new LaceController(f);c.start(1,1,1000);c.position(0,50,1100);c.moved(0,status,51,1200);check(!c.busy());check(f.sent.contains("stop0"));}
        f=new Fake();c=new LaceController(f);c.start(1,1,1000);c.position(0,50,1100);c.moved(0,0,49,1200);check(!c.busy());check(f.sent.contains("stop0"));
        for(int invalid:new int[]{-1,101}){f=new Fake();c=new LaceController(f);c.start(1,1,1000);c.position(0,invalid,1100);check(!c.busy());check(!f.sent.toString().contains("move"));}
        f=new Fake();c=new LaceController(f);c.start(3,1,1000);c.position(0,50,1100);f.ready[1]=false;c.tick(1200);check(!c.busy());check(f.sent.containsAll(Arrays.asList("stop0","stop1")));check(!f.sent.contains("read1"));
        f=new Fake();c=new LaceController(f);c.start(1,1,1000);c.position(0,50,1100);f.ready[0]=false;c.moved(0,0,51,1200);check(!c.busy());check(c.completed==0);
        f=new Fake();c=new LaceController(f);c.start(1,1,1000);c.position(0,50,1100);c.moved(0,0,51,1200);check(!c.start(1,1,1500));check(c.start(1,1,2000));
        f=new Fake();f.readError=true;f.stopError=true;c=new LaceController(f);c.start(3,1,1000);check(!c.busy());check(f.sent.containsAll(Arrays.asList("stop0","stop1")));
        f=new Fake();f.moveError=true;c=new LaceController(f);c.start(1,1,1000);c.position(0,50,1100);check(!c.busy());check(f.sent.contains("stop0"));
        check(!MotorCycle.conditions(1000,1000,14,25,1));check(MotorCycle.conditions(1000,1000,15,25,1));
        System.out.println("LaceControllerTest: "+count+" assertions passed");
    }
}
