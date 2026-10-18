package com.nike.adapt.receiver;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.analytics.TrackManager;
import fe.k;
import g2.e;
import l8.b;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.j0;
import p8.w;
import q.g;

/* JADX INFO: compiled from: TurnOffLightsReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TurnOffLightsReceiver extends b {
    @k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.f10174j) || !(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        c().subscribe(adaptConnectionStatusResult.getDevice());
        c().requestTo(adaptConnectionStatusResult.getShoe(), new w(null, 1, null));
    }

    @k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.f10174j)) {
            return;
        }
        d().d(deviceControllerResult);
        if (!d().a() || !d().c()) {
            if (!d().a() || d().c()) {
                return;
            }
            a();
            return;
        }
        this.f10173i = new t9.b();
        IDeviceController iDeviceControllerC = c();
        Shoe shoe = Shoe.BOTH;
        iDeviceControllerC.requestTo(shoe, j0.f13335a);
        c().requestTo(shoe, new w(null, 1, null));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String string;
        h.j(context, "context");
        h.j(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras != null && (string = extras.getString("extra_notification_type")) != null) {
            int iA = g.a(e.d(string));
            if (iA == 0) {
                TrackManager.INSTANCE.batteryNotificationCriticalBatteryLightsTurnOffTapped();
            } else if (iA == 1) {
                TrackManager.INSTANCE.batteryNotificationLowBatteryLightsTurnOffTapped();
            }
        }
        Object systemService = context.getSystemService("notification");
        h.h(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).cancel(582019);
        e(context);
    }
}
