package com.nike.adapt.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.nike.adapt.analytics.TrackManager;
import g2.e;
import p4.h;
import q.g;

/* JADX INFO: compiled from: BatteryDismissedReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BatteryDismissedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String string;
        h.j(context, "context");
        h.j(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras == null || (string = extras.getString("extra_notification_type")) == null) {
            return;
        }
        int iA = g.a(e.d(string));
        if (iA == 0) {
            TrackManager.INSTANCE.batteryNotificationCriticalBatteryLightsOnDismissed();
        } else {
            if (iA != 1) {
                return;
            }
            TrackManager.INSTANCE.batteryNotificationLowBatteryLightsOnDismissed();
        }
    }
}
