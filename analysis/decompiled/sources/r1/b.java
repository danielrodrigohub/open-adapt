package r1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Objects;
import k1.l;

/* JADX INFO: compiled from: BatteryNotLowTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends c<Boolean> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f14198i = l.e("BatteryNotLowTracker");

    public b(Context context, w1.a aVar) {
        super(context, aVar);
    }

    @Override // r1.d
    public final Object a() {
        Intent intentRegisterReceiver = this.f14204b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            return Boolean.valueOf(intentRegisterReceiver.getIntExtra("status", -1) == 1 || ((float) intentRegisterReceiver.getIntExtra("level", -1)) / ((float) intentRegisterReceiver.getIntExtra("scale", -1)) > 0.15f);
        }
        l.c().b(f14198i, "getInitialState - null intent received", new Throwable[0]);
        return null;
    }

    @Override // r1.c
    public final IntentFilter f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // r1.c
    public final void g(Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        l.c().a(f14198i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        Objects.requireNonNull(action);
        if (action.equals("android.intent.action.BATTERY_OKAY")) {
            c(Boolean.TRUE);
        } else if (action.equals("android.intent.action.BATTERY_LOW")) {
            c(Boolean.FALSE);
        }
    }
}
