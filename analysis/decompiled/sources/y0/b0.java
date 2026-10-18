package y0;

import java.util.List;
import n3.k0;
import n3.l1;
import n3.o1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b0 implements m5.o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f18147c;

    public /* synthetic */ b0(Object obj, int i10) {
        this.f18146b = i10;
        this.f18147c = obj;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f18146b) {
            case 1:
                l1 l1Var = (l1) this.f18147c;
                int i10 = k0.f11461m0;
                ((o1.c) obj).l0(l1Var.f11524i.f9440d);
                break;
            default:
                ((o1.c) obj).n((List) this.f18147c);
                break;
        }
    }
}
