package ic;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Runnable f9036h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Runnable runnable) {
        super(0);
        this.f9036h = runnable;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f9036h.run();
        return fd.o.f7408a;
    }
}
