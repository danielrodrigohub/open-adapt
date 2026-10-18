package v9;

/* JADX INFO: compiled from: AdaptKitPairedDevicesListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ qd.l<ea.o, fd.o> f16468h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ea.o f16469i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b0(qd.l<? super ea.o, fd.o> lVar, ea.o oVar) {
        super(0);
        this.f16468h = lVar;
        this.f16469i = oVar;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f16468h.invoke(this.f16469i);
        return fd.o.f7408a;
    }
}
