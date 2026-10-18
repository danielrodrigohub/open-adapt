package com.openadapt;

import java.util.ArrayDeque;

/** Pure safety predicates and rolling rate limit for an explicitly enabled motor trial. */
final class MotorCycle {
    static int baseline(long value) {
        if(value<2||value>100) throw new IllegalArgumentException("Baseline outside trial range");
        return (int)value;
    }
    static boolean conditions(long now,long batteryAt,int percent,double temperature,int charger) {
        return batteryAt>0&&now>=batteryAt&&now-batteryAt<=30000&&percent>=15&&percent<=100
            &&!Double.isNaN(temperature)&&!Double.isInfinite(temperature)&&temperature>=0&&temperature<=40&&charger==1;
    }
    static final class RateLimit {
        private final ArrayDeque<Long> attempts=new ArrayDeque<Long>();
        private long last=-1;
        boolean allow(long now) {
            if(now<0||(last>=0&&(now<last||now-last<10000))) return false;
            while(!attempts.isEmpty()&&now-attempts.peekFirst()>=60000) attempts.removeFirst();
            if(attempts.size()>=5) return false;
            attempts.addLast(now); last=now;
            return true;
        }
    }
}
