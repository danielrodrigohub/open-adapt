package com.nike.adapt.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import o7.x;
import p4.h;
import s9.c;

/* JADX INFO: compiled from: BatteryStateListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BatteryStateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        h.j(context, "context");
        h.j(intent, "intent");
        if (h.c(intent.getAction(), "android.intent.action.BOOT_COMPLETED") || h.c(intent.getAction(), "android.intent.action.MY_PACKAGE_REPLACED")) {
            if (h.c(intent.getAction(), "android.intent.action.BOOT_COMPLETED")) {
                x.f12420a.a("Battery Alarm: Phone was rebooted. Checking if we need to start battery alarm");
            } else if (h.c(intent.getAction(), "android.intent.action.MY_PACKAGE_REPLACED")) {
                x.f12420a.a("Battery Alarm: App was upgraded to the next version. Checking if we need to start battery alarm");
            }
            c.f15180a.g(context);
        }
    }
}
