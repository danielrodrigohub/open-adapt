package n3;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w implements m5.o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11736c;

    public /* synthetic */ w(Object obj, int i10) {
        this.f11735b = i10;
        this.f11736c = obj;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f11735b) {
            case 0:
                l1 l1Var = (l1) this.f11736c;
                ((o1.c) obj).F(l1Var.f11527l, l1Var.f11520e);
                break;
            case 1:
                ((o1.c) obj).o((z4.c) this.f11736c);
                break;
            default:
                ((o3.b) obj).M0();
                break;
        }
    }
}
