package com.openadapt;

/** Integrates yaw rate, with drift rejection and a refractory period. No foot attribution. */
public final class TurnDetector {
    private long lastNs, lastEventMs;
    private double angle;
    public int sample(long ns,float yawRate) {
        if(lastNs==0) { lastNs=ns; return 0; }
        double dt=(ns-lastNs)/1e9; lastNs=ns;
        if(dt<=0 || dt>0.25) { angle=0; return 0; }
        if(Math.abs(yawRate)<0.15) angle*=Math.exp(-dt*4);
        else angle+=yawRate*dt;
        long now=ns/1000000;
        if(Math.abs(angle)>=0.35 && now-lastEventMs>=700) {
            int side=angle>0?0:1; angle=0; lastEventMs=now; return side+1;
        }
        return 0;
    }
}
