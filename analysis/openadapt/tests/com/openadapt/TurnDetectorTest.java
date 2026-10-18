package com.openadapt;

public final class TurnDetectorTest {
    static void check(boolean value,String message) { if(!value) throw new AssertionError(message); }
    public static void main(String[] args) {
        TurnDetector detector=new TurnDetector(); long ns=1000000000L;
        int left=0,right=0;
        for(int i=0;i<60;i++) { ns+=20000000; int e=detector.sample(ns,0.03f); check(e==0,"stationary noise"); }
        for(int i=0;i<25;i++) { ns+=20000000; if(detector.sample(ns,1.0f)==1) left++; }
        check(left==1,"one left turn");
        for(int i=0;i<70;i++) { ns+=20000000; detector.sample(ns,0); }
        for(int i=0;i<25;i++) { ns+=20000000; if(detector.sample(ns,-1.0f)==2) right++; }
        check(right==1,"one right turn");
        ns+=1000000000L; check(detector.sample(ns,10)==0,"sensor gap must reset integration");
        check(detector.sample(ns-1000000,10)==0,"out of order timestamp");
        System.out.println("TurnDetector: stationary noise, left/right, cooldown, sensor gaps passed");
    }
}
