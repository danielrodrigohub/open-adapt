package s9;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.DeviceListRepository;
import com.nike.adapt.adk.model.Battery;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.receiver.BatteryAlarmReceiver;
import com.nike.adapt.receiver.BatteryDismissedReceiver;
import com.nike.adapt.receiver.TurnOffLightsReceiver;
import com.nike.adapt.ui.battery.BatteryStateActivity;
import java.util.Objects;

/* JADX INFO: compiled from: BatteryAlarmUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f15180a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h8.c f15181b = h8.c.f8298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v9.t f15182c = v9.t.f16822a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f15183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final fd.h f15184e;

    /* JADX INFO: compiled from: BatteryAlarmUtil.kt */
    public static final class a extends rd.o implements qd.a<g8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f15185h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final g8.a invoke() {
            return BigfootApplication.f5638p.c();
        }
    }

    static {
        f15183d = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
        f15184e = (fd.h) androidx.lifecycle.o.x(a.f15185h);
    }

    public static void d(c cVar, Context context) {
        Objects.requireNonNull(cVar);
        p4.h.j(context, "context");
        o7.x.f12420a.a("Battery Alarm: Starting battery alarm manager with time interval off (ms): 7200000");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 582019, new Intent(context, (Class<?>) BatteryAlarmReceiver.class), f15183d);
        Object systemService = context.getSystemService("alarm");
        p4.h.h(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        ((AlarmManager) systemService).setInexactRepeating(2, SystemClock.elapsedRealtime() + 7200000, 7200000L, broadcast);
    }

    public final boolean a(Battery battery, Battery battery2) {
        return f15181b.m0().getBoolean("PREF_CAN_SHOW_BATTERY_NOTIFICATION_CHARGED", true) && battery.getPercent() >= 80 && battery.getState().isCharging() && battery2.getPercent() >= 80 && battery2.getState().isCharging();
    }

    public final boolean b(Battery battery, Battery battery2) {
        if (f15181b.m0().getBoolean("PREF_CAN_SHOW_BATTERY_NOTIFICATION_CRITICAL", true)) {
            if (battery.getPercent() <= 10 && !battery.getState().isCharging()) {
                return true;
            }
            if (battery2.getPercent() <= 10 && !battery2.getState().isCharging()) {
                return true;
            }
        }
        return false;
    }

    public final boolean c(Battery battery, Battery battery2) {
        if (f15181b.m0().getBoolean("PREF_CAN_SHOW_BATTERY_NOTIFICATION_LOW", true)) {
            int percent = battery.getPercent();
            if ((11 <= percent && percent < 20) && !battery.getState().isCharging()) {
                return true;
            }
            int percent2 = battery2.getPercent();
            if ((11 <= percent2 && percent2 < 20) && !battery2.getState().isCharging()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"WrongConstant"})
    public final int e(Context context, int i10, boolean z10) {
        String strR;
        String strR2;
        androidx.appcompat.widget.o.d(i10, "notificationType");
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            if (z10) {
                TrackManager.INSTANCE.batteryNotificationCriticalBatteryLightsOnSent();
            } else {
                TrackManager.INSTANCE.batteryNotificationCriticalBatterySent();
            }
            f15181b.g0(false);
        } else if (i11 == 1) {
            if (z10) {
                TrackManager.INSTANCE.batteryNotificationLowBatteryLightsOnSent();
            } else {
                TrackManager.INSTANCE.batteryNotificationLowBatterySent();
            }
            f15181b.g(false);
        } else if (i11 == 2) {
            TrackManager.INSTANCE.batteryNotificationFullyChargedSent();
            f15181b.C(false);
        }
        Object systemService = context.getSystemService("notification");
        p4.h.h(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        Intent intent = new Intent(context, (Class<?>) BatteryStateActivity.class);
        intent.putExtra("extra_notification_type", g2.e.b(i10));
        int i12 = f15183d;
        PendingIntent activity = PendingIntent.getActivity(context, 582019, intent, i12);
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0) {
            strR = androidx.lifecycle.o.r(z10 ? R.string.adapt_notification_battery_critical_lights_on_body : R.string.adapt_notification_battery_critical_body);
        } else if (i11 == 1) {
            strR = androidx.lifecycle.o.r(z10 ? R.string.adapt_notification_battery_low_lights_on_body : R.string.adapt_notification_battery_low_body);
        } else {
            if (i11 != 2) {
                throw new j2.a();
            }
            strR = androidx.lifecycle.o.r(R.string.adapt_notification_battery_full_body);
        }
        o7.l lVar = o7.l.f12400a;
        x.o oVar = new x.o(context, o7.l.f12402c);
        oVar.f17662r.icon = R.drawable.ic_shoe_adapt;
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0) {
            strR2 = androidx.lifecycle.o.r(R.string.adapt_notification_battery_critical_title);
        } else if (i11 == 1) {
            strR2 = androidx.lifecycle.o.r(R.string.adapt_notification_battery_low_title);
        } else {
            if (i11 != 2) {
                throw new j2.a();
            }
            strR2 = androidx.lifecycle.o.r(R.string.adapt_notification_battery_full_title);
        }
        oVar.f17649e = x.o.b(strR2);
        oVar.f17650f = x.o.b(strR);
        oVar.f17651g = activity;
        oVar.f17652h = 0;
        oVar.c(16, true);
        Notification notification = oVar.f17662r;
        notification.defaults = -1;
        notification.flags |= 1;
        x.n nVar = new x.n();
        nVar.f17644b = x.o.b(strR);
        if (oVar.f17654j != nVar) {
            oVar.f17654j = nVar;
            if (nVar.f17664a != oVar) {
                nVar.f17664a = oVar;
                oVar.d(nVar);
            }
        }
        Intent intent2 = new Intent(context, (Class<?>) TurnOffLightsReceiver.class);
        intent2.putExtra("extra_notification_type", g2.e.b(i10));
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, i12);
        p4.h.i(broadcast, "getBroadcast(context, 0,…tent, pendingIntentFlags)");
        Intent intent3 = new Intent(context, (Class<?>) BatteryDismissedReceiver.class);
        intent3.putExtra("extra_notification_type", g2.e.b(i10));
        PendingIntent broadcast2 = PendingIntent.getBroadcast(context.getApplicationContext(), 582019, intent3, i12);
        if (z10) {
            if (i10 == 2 || i10 == 1) {
                oVar.f17646b.add(new x.m(androidx.lifecycle.o.r(R.string.adapt_notification_battery_low_critical_lights_on_action_title), broadcast));
                oVar.f17662r.deleteIntent = broadcast2;
            }
        }
        notificationManager.notify(582019, oVar.a());
        return i10;
    }

    @SuppressLint({"WrongConstant"})
    public final void f(Context context) {
        p4.h.j(context, "context");
        o7.x.f12420a.a("Battery Alarm: Stopping battery alarm manager");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 582019, new Intent(context, (Class<?>) BatteryAlarmReceiver.class), f15183d);
        Object systemService = context.getSystemService("alarm");
        p4.h.h(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        ((AlarmManager) systemService).cancel(broadcast);
        broadcast.cancel();
    }

    public final void g(Context context) {
        p4.h.j(context, "context");
        boolean zC = o7.l.f12400a.c(o7.l.f12402c);
        if (!zC) {
            f15181b.o0(false);
        }
        boolean z10 = zC && f15181b.m0().getBoolean("PREF_IS_BATTERY_REMINDERS_ENABLED", true) && ((g8.a) f15184e.getValue()).a() && (DeviceListRepository.INSTANCE.getLocalDevices(f15182c).isEmpty() ^ true);
        boolean z11 = PendingIntent.getBroadcast(context, 582019, new Intent(context, (Class<?>) BatteryAlarmReceiver.class), Build.VERSION.SDK_INT >= 31 ? 570425344 : 536870912) != null;
        if (z10 && !z11) {
            d(this, context);
        } else {
            if (z10 || !z11) {
                return;
            }
            f(context);
        }
    }
}
