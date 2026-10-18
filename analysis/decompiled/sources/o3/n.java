package o3;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements m5.o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b.a f12155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12156d;

    public /* synthetic */ n(b.a aVar, Object obj, int i10) {
        this.f12154b = i10;
        this.f12155c = aVar;
        this.f12156d = obj;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f12154b) {
            case 0:
                ((b) obj).N0();
                break;
            default:
                n5.t tVar = (n5.t) this.f12156d;
                b bVar = (b) obj;
                bVar.b(tVar);
                int i10 = tVar.f11986h;
                bVar.K0();
                break;
        }
    }
}
