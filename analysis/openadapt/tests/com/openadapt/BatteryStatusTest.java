package com.openadapt;

public final class BatteryStatusTest {
    static int count;
    static void expect(String expected,boolean connected,int percent,long at,long now) {
        count++;
        String actual=BatteryStatus.shoe(connected,percent,at,now);
        if(!expected.equals(actual)) throw new AssertionError(expected+" != "+actual);
    }
    public static void main(String[] args) {
        expect("0 %",true,0,1000,1000);
        expect("100 %",true,100,1000,1000);
        expect("57 %",true,57,1000,61000);
        expect("lectura desactualizada",true,57,1000,61001);
        expect("sin conexión",false,57,1000,1000);
        expect("sin conexión",false,-1,0,1000);
        expect("esperando lectura…",true,-1,1000,1000);
        expect("esperando lectura…",true,101,1000,1000);
        expect("esperando lectura…",true,57,0,1000);
        expect("esperando lectura…",true,57,1001,1000);
        expect("58 %",true,58,70000,70001);
        System.out.println("BatteryStatusTest: "+count+" assertions passed");
    }
}
