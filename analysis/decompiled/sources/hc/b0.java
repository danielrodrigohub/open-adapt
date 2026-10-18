package hc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f8414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ nc.a<mc.j0> f8415b;

    public b0(l lVar, nc.a<mc.j0> aVar) {
        this.f8414a = lVar;
        this.f8415b = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        char c10;
        char c11;
        p4.h.j(context, "context");
        p4.h.j(intent, "intent");
        int intExtra = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", 10);
        if (intExtra != 11) {
            c10 = intExtra != 12 ? (char) 1 : (char) 3;
        } else {
            c10 = 2;
        }
        int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", 10);
        if (intExtra2 != 11) {
            c11 = intExtra2 != 12 ? (char) 1 : (char) 3;
        } else {
            c11 = 2;
        }
        if (this.f8414a.f8557r.get()) {
            try {
                context.unregisterReceiver(this);
            } catch (Throwable unused) {
            }
        } else if (c10 == 1 && c11 == 2) {
            this.f8415b.j(mc.j0.USER_DID_NO_ACTION);
        } else if (c10 == 3) {
            try {
                context.unregisterReceiver(this);
            } catch (Throwable unused2) {
            }
        }
    }
}
