package z9;

import gd.q;
import java.util.Map;

/* JADX INFO: compiled from: AdaptKitExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements eb.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Throwable f19446h;

    public g(Throwable th) {
        this.f19446h = th;
    }

    @Override // eb.d
    public final String b() {
        String str;
        Throwable cause = this.f19446h.getCause();
        if (cause != null) {
            str = ", moreInfo: " + cause.getClass().getSimpleName() + ", message: " + cause.getMessage();
        } else {
            str = "";
        }
        return a1.f.d(k1.a.a("ADK_FATAL_ERROR prevented: ", Thread.currentThread().getName(), ": ", g.class.getSimpleName(), ", message: "), this.f19446h.getMessage(), str);
    }

    @Override // eb.d
    public final Map<String, Object> m() {
        return q.f8071h;
    }
}
