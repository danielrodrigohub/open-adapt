package i9;

/* JADX INFO: compiled from: CalibrateOrthoticsFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ t f8947h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(t tVar) {
        super(0);
        this.f8947h = tVar;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f8947h.getClass().getSimpleName(), o7.x.f12420a);
        return fd.o.f7408a;
    }
}
