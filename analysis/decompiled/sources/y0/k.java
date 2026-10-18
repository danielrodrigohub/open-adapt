package y0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k implements m5.o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f18238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f18239d;

    public /* synthetic */ k(Object obj, Object obj2, int i10) {
        this.f18237b = i10;
        this.f18238c = obj;
        this.f18239d = obj2;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f18237b) {
            case 1:
                ((o3.b) obj).d0();
                break;
            default:
                ((o3.b) obj).f0((o3.b.a) this.f18238c, (p4.u) this.f18239d);
                break;
        }
    }
}
