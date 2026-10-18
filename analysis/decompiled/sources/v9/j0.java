package v9;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: InjectionKtx.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends rd.o implements qd.a<Handler> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ k0 f16649h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(k0 k0Var) {
        super(0);
        this.f16649h = k0Var;
    }

    @Override // qd.a
    public final Handler invoke() {
        if (this.f16649h.f16665a) {
            return new Handler(Looper.getMainLooper());
        }
        return null;
    }
}
