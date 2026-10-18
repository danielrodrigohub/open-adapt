package com.openadapt;

/** Presentation of live shoe readings; missing or stale data is never shown as current. */
public final class BatteryStatus {
    private BatteryStatus() {}
    static boolean low(boolean connected,int percent,long readAt,long now) {
        return connected&&percent>=0&&percent<15&&readAt>0&&now>=readAt&&now-readAt<=60000;
    }
    static String shoe(boolean connected,int percent,long readAt,long now) {
        if(!connected) return "sin conexión";
        if(percent<0||percent>100||readAt<=0||now<readAt) return "esperando lectura…";
        if(now-readAt>60000) return "lectura desactualizada";
        return percent+" %";
    }
}
