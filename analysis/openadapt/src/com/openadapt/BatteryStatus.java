package com.openadapt;

/** Presentation of live shoe readings; missing or stale data is never shown as current. */
public final class BatteryStatus {
    private BatteryStatus() {}
    static String shoe(boolean connected,int percent,long readAt,long now) {
        if(!connected) return "sin conexión";
        if(percent<0||percent>100||readAt<=0||now<readAt) return "esperando lectura…";
        if(now-readAt>60000) return "lectura desactualizada";
        return percent+" %";
    }
}
