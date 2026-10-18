package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import k1.l;
import l1.k;
import u1.f;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3074a = l.e("ConstrntProxyUpdtRecvr");

    public class a implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Intent f3075h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Context f3076i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ BroadcastReceiver.PendingResult f3077j;

        public a(Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f3075h = intent;
            this.f3076i = context;
            this.f3077j = pendingResult;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                boolean booleanExtra = this.f3075h.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f3075h.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f3075h.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f3075h.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                l.c().a(ConstraintProxyUpdateReceiver.f3074a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                f.a(this.f3076i, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                f.a(this.f3076i, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                f.a(this.f3076i, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                f.a(this.f3076i, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f3077j.finish();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if ("androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            ((w1.b) k.a(context).f9856d).a(new a(intent, context, goAsync()));
        } else {
            l.c().a(f3074a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
        }
    }
}
