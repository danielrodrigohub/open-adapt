package o3;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l0 implements m5.o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b.a f12147c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12148d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f12149e;

    public /* synthetic */ l0(b.a aVar, Object obj, Object obj2, int i10) {
        this.f12146b = i10;
        this.f12147c = aVar;
        this.f12148d = obj;
        this.f12149e = obj2;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f12146b) {
            case 0:
                ((b) obj).V();
                break;
            default:
                b bVar = (b) obj;
                bVar.a();
                bVar.Y();
                bVar.x0();
                break;
        }
    }
}
