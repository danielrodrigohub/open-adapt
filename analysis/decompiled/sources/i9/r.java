package i9;

import android.widget.LinearLayout;
import q7.o0;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends rd.o implements qd.a<LinearLayout> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ g f8926h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(g gVar) {
        super(0);
        this.f8926h = gVar;
    }

    @Override // qd.a
    public final LinearLayout invoke() {
        o0 o0Var = this.f8926h.f8890i0;
        if (o0Var != null) {
            return o0Var.f13956j.f13938b;
        }
        p4.h.C("binding");
        throw null;
    }
}
