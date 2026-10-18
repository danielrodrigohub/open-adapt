package o3;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y implements m5.o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b.a f12261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12262d;

    public /* synthetic */ y(b.a aVar, Object obj, int i10) {
        this.f12260b = i10;
        this.f12261c = aVar;
        this.f12262d = obj;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f12260b) {
            case 0:
                ((b) obj).t0();
                break;
            default:
                ((b) obj).I0();
                break;
        }
    }
}
