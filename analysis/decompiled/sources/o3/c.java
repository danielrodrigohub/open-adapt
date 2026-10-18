package o3;

import n3.l1;
import n3.o1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements m5.o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f12094c;

    public /* synthetic */ c(Object obj, int i10) {
        this.f12093b = i10;
        this.f12094c = obj;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f12093b) {
            case 0:
                ((b) obj).E0();
                break;
            case 1:
                ((b) obj).j0();
                break;
            default:
                l1 l1Var = (l1) this.f12094c;
                int i10 = n3.k0.f11461m0;
                ((o1.c) obj).z(l1Var.f11528m);
                break;
        }
    }
}
