package v9;

/* JADX INFO: compiled from: AdaptKitPairing.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ya.b f16578h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ g f16579i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(ya.b bVar, g gVar) {
        super(0);
        this.f16578h = bVar;
        this.f16579i = gVar;
    }

    @Override // qd.a
    public final fd.o invoke() throws InterruptedException {
        Thread.sleep(200L);
        this.f16578h.s(this.f16579i.a());
        return fd.o.f7408a;
    }
}
