package w9;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends rd.o implements qd.l<v9.j, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a f17292h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ x f17293i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(a aVar, x xVar) {
        super(1);
        this.f17292h = aVar;
        this.f17293i = xVar;
    }

    @Override // qd.l
    public final fd.o invoke(v9.j jVar) {
        p4.h.j(jVar, "$this$generateConnectionRequiredConditionalCheck");
        u1 u1Var = this.f17292h.f17254i;
        if (u1Var == u1.LEFT) {
            this.f17293i.A0().i(fa.k.m.f7215h);
        } else if (u1Var == u1.RIGHT) {
            this.f17293i.B0().i(fa.k.m.f7215h);
        }
        return fd.o.f7408a;
    }
}
