package o3;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j0 implements m5.o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b.a f12136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12137d;

    public /* synthetic */ j0(b.a aVar, Object obj, int i10) {
        this.f12135b = i10;
        this.f12136c = aVar;
        this.f12137d = obj;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f12135b) {
            case 0:
                ((b) obj).B0();
                break;
            case 1:
                ((b) obj).s0();
                break;
            case 2:
                ((b) obj).I();
                break;
            default:
                ((b) obj).c0();
                break;
        }
    }
}
