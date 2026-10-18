package v9;

/* JADX INFO: compiled from: AdaptKitPairedDevicesListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ qd.l<Object, fd.o> f16487h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f16488i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(qd.l<Object, fd.o> lVar, Object obj) {
        super(0);
        this.f16487h = lVar;
        this.f16488i = obj;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f16487h.invoke(this.f16488i);
        return fd.o.f7408a;
    }
}
