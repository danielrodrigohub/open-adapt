package com.openadapt;

public final class MotorCycleTest {
    static int count;
    static void check(boolean value) { count++; if(!value) throw new AssertionError("Check "+count); }
    public static void main(String[] args) {
        check(MotorCycle.baseline(2)==2);
        check(MotorCycle.baseline(100)==100);
        for(long value:new long[]{-1,0,1,101,4294967346L,Long.MAX_VALUE}) {
            try { MotorCycle.baseline(value); throw new AssertionError("Invalid baseline accepted"); }
            catch(IllegalArgumentException expected) { count++; }
        }
        check(MotorCycle.conditions(31000,1000,15,40,1));
        check(!MotorCycle.conditions(31001,1000,15,40,1));
        check(!MotorCycle.conditions(1000,0,15,40,1));
        check(!MotorCycle.conditions(1000,1001,15,40,1));
        check(!MotorCycle.conditions(1000,1000,14,25,1));
        check(!MotorCycle.conditions(1000,1000,101,25,1));
        check(!MotorCycle.conditions(1000,1000,50,Double.NaN,1));
        check(!MotorCycle.conditions(1000,1000,50,Double.POSITIVE_INFINITY,1));
        check(!MotorCycle.conditions(1000,1000,50,-1,1));
        check(!MotorCycle.conditions(1000,1000,50,40.1,1));
        check(!MotorCycle.conditions(1000,1000,50,25,0));
        check(!MotorCycle.conditions(1000,1000,50,25,2));
        MotorCycle.RateLimit limit=new MotorCycle.RateLimit();
        check(limit.allow(0));
        check(!limit.allow(9999));
        check(limit.allow(10000));
        check(limit.allow(20000));
        check(limit.allow(30000));
        check(limit.allow(40000));
        check(!limit.allow(50000));
        check(!limit.allow(59999));
        check(limit.allow(60000));
        check(!limit.allow(60001));
        check(limit.allow(70000));
        check(!limit.allow(65000));
        System.out.println("MotorCycleTest: "+count+" assertions passed");
    }
}
