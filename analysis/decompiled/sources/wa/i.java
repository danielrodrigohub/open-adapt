package wa;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.o;
import v9.o0;

/* JADX INFO: compiled from: AdaptKitRequirementsReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o0 f17579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final fd.h f17580b = (fd.h) o.x(a.f17581h);

    /* JADX INFO: compiled from: AdaptKitRequirementsReceiver.kt */
    public static final class a extends rd.o implements qd.a<j> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f17581h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final j invoke() {
            int i10 = j.f17582a;
            return k.f17583b;
        }
    }

    public i(o0 o0Var) {
        this.f17579a = o0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && p4.h.c(this.f17579a, ((i) obj).f17579a);
    }

    public final int hashCode() {
        return this.f17579a.hashCode();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int intExtra;
        p4.h.j(context, "context");
        p4.h.j(intent, "intent");
        if (this.f17579a.b()) {
            boolean zC = p4.h.c(intent.getAction(), "android.bluetooth.adapter.action.STATE_CHANGED");
            boolean zC2 = p4.h.c(intent.getAction(), "android.location.PROVIDERS_CHANGED");
            if (zC || zC2) {
                boolean z10 = true;
                if (zC && (intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1)) != 10 && intExtra != 12) {
                    z10 = false;
                }
                if (z10) {
                    ja.b bVarA = ((j) this.f17580b.getValue()).a(context);
                    if (bVarA.f()) {
                        this.f17579a.a();
                    } else {
                        this.f17579a.c(bVarA);
                    }
                }
            }
        }
    }

    public final String toString() {
        return "AdaptKitRequirementsReceiver(adaptKitRequirementsListener=" + this.f17579a + ")";
    }
}
