package o9;

import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import n3.x1;
import x8.d0;
import x8.f0;
import x8.n0;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12517h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(ShoeControllerActivity shoeControllerActivity) {
        super(0);
        this.f12517h = shoeControllerActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        n0 n0Var = this.f12517h.M;
        if (n0Var == null) {
            p4.h.C("rightShoeControllerUiHelper");
            throw null;
        }
        d0 d0Var = d0.MIN_WITH_NO_FPS;
        n0Var.m(d0Var);
        f0 f0Var = this.f12517h.N;
        if (f0Var == null) {
            p4.h.C("leftShoeControllerUiHelper");
            throw null;
        }
        f0Var.m(d0Var);
        ShoeControllerActivity shoeControllerActivity = this.f12517h;
        s sVar = shoeControllerActivity.f5881j0;
        if (sVar != null) {
            x1 x1Var = shoeControllerActivity.f5880i0;
            sVar.b(x1Var, false);
            sVar.b(x1Var, true);
        }
        return fd.o.f7408a;
    }
}
