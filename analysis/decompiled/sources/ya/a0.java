package ya;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f18739h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ h0<?> f18740i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(d dVar, h0<?> h0Var) {
        super(0);
        this.f18739h = dVar;
        this.f18740i = h0Var;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f18739h.f18780w = this.f18740i;
        v9.d.a.a(d3.e.j(), "THREAD_WATCH_CMD", a0.d.c(this.f18740i.p(), ".start ", Thread.currentThread().getName()), null, 4, null);
        h0<?> h0Var = this.f18740i;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", "Pre-Command: " + h0Var.t(), null, 4, null);
            h0Var.f19034k = true;
            h0Var.o().invoke();
            v9.d.a.a(d3.e.j(), "QUEUE_BIGFOOT", "Post-Command: " + h0Var.t(), null, 4, null);
        } catch (Throwable th) {
            h0Var.k(th);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        v9.d.a.a(d3.e.j(), "THREAD_WATCH_CMD", this.f18740i.p() + ".end " + Thread.currentThread().getName() + " duration: " + jCurrentTimeMillis2, null, 4, null);
        return fd.o.f7408a;
    }
}
