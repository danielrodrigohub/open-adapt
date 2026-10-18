package n3;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x implements m5.o.a, e4.r.f, q3.h.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11741c;

    public /* synthetic */ x(Object obj, int i10) {
        this.f11740b = i10;
        this.f11741c = obj;
    }

    @Override // e4.r.f
    public final int a(Object obj) {
        s0 s0Var = (s0) this.f11741c;
        e4.n nVar = (e4.n) obj;
        Pattern pattern = e4.r.f6460a;
        try {
            return nVar.e(s0Var) ? 1 : 0;
        } catch (e4.r.b unused) {
            return -1;
        }
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f11740b) {
            case 0:
                ((o1.c) obj).h0(((l1) this.f11741c).f11521f);
                break;
            default:
                ((o1.c) obj).I(k0.this.O);
                break;
        }
    }
}
