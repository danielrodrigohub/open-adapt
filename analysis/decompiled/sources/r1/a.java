package r1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import k1.l;

/* JADX INFO: compiled from: BatteryChargingTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends c<Boolean> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f14197i = l.e("BatteryChrgTracker");

    public a(Context context, w1.a aVar) {
        super(context, aVar);
    }

    @Override // r1.d
    public final Object a() {
        Intent intentRegisterReceiver = this.f14204b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            l.c().b(f14197i, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
        return Boolean.valueOf(intExtra == 2 || intExtra == 5);
    }

    @Override // r1.c
    public final IntentFilter f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.CHARGING");
        intentFilter.addAction("android.os.action.DISCHARGING");
        return intentFilter;
    }

    @Override // r1.c
    public final void g(Intent intent) {
        String action = intent.getAction();
        if (action == null) {
        }
        byte b10 = 1;
        l.c().a(f14197i, String.format("Received %s", action), new Throwable[0]);
        switch (action.hashCode()) {
            case -1886648615:
                b10 = !action.equals("android.intent.action.ACTION_POWER_DISCONNECTED") ? (byte) -1 : (byte) 0;
                break;
            case -54942926:
                if (!action.equals("android.os.action.DISCHARGING")) {
                    b10 = -1;
                }
                break;
            case 948344062:
                b10 = !action.equals("android.os.action.CHARGING") ? (byte) -1 : (byte) 2;
                break;
            case 1019184907:
                b10 = !action.equals("android.intent.action.ACTION_POWER_CONNECTED") ? (byte) -1 : (byte) 3;
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
                c(Boolean.FALSE);
                break;
            case 1:
                c(Boolean.FALSE);
                break;
            case 2:
                c(Boolean.TRUE);
                break;
            case 3:
                c(Boolean.TRUE);
                break;
        }
    }
}
