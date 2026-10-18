package w9;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ x f17302h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ a f17303i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(x xVar, a aVar) {
        super(0);
        this.f17302h = xVar;
        this.f17303i = aVar;
    }

    @Override // qd.a
    public final fd.o invoke() {
        x xVar = this.f17302h;
        a aVar = this.f17303i;
        xVar.E0(aVar.f17254i, new k0(xVar, aVar));
        return fd.o.f7408a;
    }
}
