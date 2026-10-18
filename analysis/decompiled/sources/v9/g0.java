package v9;

/* JADX INFO: compiled from: AdaptKitPairing.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ya.b f16561h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ g f16562i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(ya.b bVar, g gVar) {
        super(0);
        this.f16561h = bVar;
        this.f16562i = gVar;
    }

    @Override // qd.a
    public final fd.o invoke() throws InterruptedException {
        Thread.sleep(200L);
        this.f16561h.s(this.f16562i.a());
        return fd.o.f7408a;
    }
}
