package i9;

import android.widget.LinearLayout;
import q7.o0;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends rd.o implements qd.a<LinearLayout> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ g f8925h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(g gVar) {
        super(0);
        this.f8925h = gVar;
    }

    @Override // qd.a
    public final LinearLayout invoke() {
        o0 o0Var = this.f8925h.f8890i0;
        if (o0Var != null) {
            return o0Var.f13956j.f13937a;
        }
        p4.h.C("binding");
        throw null;
    }
}
