package w9;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends rd.o implements qd.l<v9.z, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ea.m f17261h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ea.m mVar) {
        super(1);
        this.f17261h = mVar;
    }

    @Override // qd.l
    public final fd.o invoke(v9.z zVar) {
        v9.z zVar2 = zVar;
        p4.h.j(zVar2, "$this$null");
        d3.e.j().b("AdaptKit>PairNoLongerExists", zVar2.f16944k);
        d.a.f17267b.remove(this.f17261h.f6664h);
        return fd.o.f7408a;
    }
}
