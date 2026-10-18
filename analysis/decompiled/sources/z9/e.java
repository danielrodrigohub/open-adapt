package z9;

import rd.o;

/* JADX INFO: compiled from: AdaptKitExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Runnable f19444h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Runnable runnable) {
        super(0);
        this.f19444h = runnable;
    }

    @Override // qd.a
    public final fd.o invoke() {
        try {
            this.f19444h.run();
        } catch (Throwable th) {
            h.a(th);
        }
        return fd.o.f7408a;
    }
}
