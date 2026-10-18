package hc;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Runnable f8417h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(Runnable runnable) {
        super(0);
        this.f8417h = runnable;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f8417h.run();
        return fd.o.f7408a;
    }
}
