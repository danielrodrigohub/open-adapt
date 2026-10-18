package r1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import k1.l;

/* JADX INFO: compiled from: BroadcastReceiverConstraintTracker.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<T> extends d<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f14199h = l.e("BrdcstRcvrCnstrntTrckr");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f14200g;

    /* JADX INFO: compiled from: BroadcastReceiverConstraintTracker.java */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                c.this.g(intent);
            }
        }
    }

    public c(Context context, w1.a aVar) {
        super(context, aVar);
        this.f14200g = new a();
    }

    @Override // r1.d
    public final void d() {
        l.c().a(f14199h, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f14204b.registerReceiver(this.f14200g, f());
    }

    @Override // r1.d
    public final void e() {
        l.c().a(f14199h, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f14204b.unregisterReceiver(this.f14200g);
    }

    public abstract IntentFilter f();

    public abstract void g(Intent intent);
}
