package com.nike.adapt.receiver;

import android.content.Context;
import android.content.Intent;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetBatteryPercentResult;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.model.Battery;
import com.nike.adapt.adk.model.BatteryState;
import fe.k;
import l8.b;
import o7.x;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.g;
import p8.w;
import s9.c;

/* JADX INFO: compiled from: BatteryAlarmReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BatteryAlarmReceiver extends b {
    @k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.f10174j) || !(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        c().subscribe(adaptConnectionStatusResult.getDevice());
        c().requestTo(adaptConnectionStatusResult.getShoe(), g.f13328a);
        c().requestTo(adaptConnectionStatusResult.getShoe(), new w(null, 1, null));
    }

    @k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.f10174j)) {
            return;
        }
        d().d(deviceControllerResult);
        if (deviceControllerResult instanceof GetBatteryPercentResult) {
            GetBatteryPercentResult getBatteryPercentResult = (GetBatteryPercentResult) deviceControllerResult;
            (getBatteryPercentResult.getShoe().isRight() ? InMemoryCache.INSTANCE.getRightDevice() : InMemoryCache.INSTANCE.getLeftDevice()).setBattery(getBatteryPercentResult.getBattery());
            if (d().b()) {
                x xVar = x.f12420a;
                xVar.a("Battery Alarm: Successfully got connection & received battery results");
                c cVar = c.f15180a;
                Battery battery = d().f15572c;
                Battery battery2 = d().f15573d;
                if (battery != null && battery2 != null) {
                    if (battery.getPercent() < 80 || battery2.getPercent() < 80) {
                        xVar.a("Battery Alarm: User can see a full charge notification again");
                        c.f15181b.C(true);
                    } else if (battery.getPercent() >= 80 && battery2.getPercent() >= 80) {
                        xVar.a("Battery Alarm: User can see a low or critically low charge notification again");
                        h8.c cVar2 = c.f15181b;
                        cVar2.g0(true);
                        cVar2.g(true);
                    }
                }
            }
        }
        if (d().b() && d().a()) {
            x xVar2 = x.f12420a;
            xVar2.a("Battery Alarm: Successfully got connection, battery results, & animation state");
            c cVar3 = c.f15180a;
            Context context = this.f10172h;
            if (context == null) {
                h.C("context");
                throw null;
            }
            Battery battery3 = d().f15572c;
            Battery battery4 = d().f15573d;
            boolean zC = d().c();
            if (battery3 != null && battery4 != null) {
                int percent = battery3.getPercent();
                BatteryState state = battery3.getState();
                int percent2 = battery4.getPercent();
                BatteryState state2 = battery3.getState();
                h8.c cVar4 = c.f15181b;
                xVar2.a("Battery Alarm: Info Dump:\nLeft Battery: " + percent + " State: " + state + "\nRight Battery: " + percent2 + " State: " + state2 + "\nIs Animation Running: " + zC + "\nCritical Notification Flag: " + cVar4.m0().getBoolean("PREF_CAN_SHOW_BATTERY_NOTIFICATION_CRITICAL", true) + " Can show notification based on battery & flag: " + cVar3.b(battery3, battery4) + "\nLow Notification Flag: " + cVar4.m0().getBoolean("PREF_CAN_SHOW_BATTERY_NOTIFICATION_LOW", true) + " Can show notification based on battery & flag: " + cVar3.c(battery3, battery4) + "\nFull Notification Flag: " + cVar4.m0().getBoolean("PREF_CAN_SHOW_BATTERY_NOTIFICATION_CHARGED", true) + " Can show notification based on battery & flag: " + cVar3.a(battery3, battery4));
                if (cVar3.b(battery3, battery4)) {
                    xVar2.a("Battery Alarm: User will now see a critical notification");
                    cVar3.e(context, 1, zC);
                } else if (cVar3.c(battery3, battery4)) {
                    xVar2.a("Battery Alarm: User will now see a low notification");
                    cVar3.e(context, 2, zC);
                } else if (cVar3.a(battery3, battery4)) {
                    xVar2.a("Battery Alarm: User will now see a fully charged notification");
                    cVar3.e(context, 3, zC);
                }
            }
            a();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        h.j(context, "context");
        h.j(intent, "intent");
        x xVar = x.f12420a;
        xVar.a("Battery Alarm: onReceive called by OS");
        BigfootApplication.e eVar = BigfootApplication.f5638p;
        if (BigfootApplication.f5646x) {
            xVar.a("Battery Alarm: Exited early. App was in foreground");
        } else {
            xVar.a("Battery Alarm: App In Background, will continue battery alarm process");
            e(context);
        }
    }
}
