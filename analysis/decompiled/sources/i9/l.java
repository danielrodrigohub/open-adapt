package i9;

import android.animation.Animator;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import q7.o0;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f8920a;

    public l(g gVar) {
        this.f8920a = gVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        p4.h.j(animator, "animation");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animation");
        g gVar = this.f8920a;
        o0 o0Var = gVar.f8890i0;
        if (o0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        o0Var.f13949c.f13899a.setVisibility(8);
        o0 o0Var2 = gVar.f8890i0;
        if (o0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        o0Var2.f13952f.setAlpha(0.0f);
        o0 o0Var3 = gVar.f8890i0;
        if (o0Var3 == null) {
            p4.h.C("binding");
            throw null;
        }
        o0Var3.f13951e.setVisibility(0);
        o0 o0Var4 = gVar.f8890i0;
        if (o0Var4 == null) {
            p4.h.C("binding");
            throw null;
        }
        o0Var4.f13950d.e();
        o0 o0Var5 = gVar.f8890i0;
        if (o0Var5 == null) {
            p4.h.C("binding");
            throw null;
        }
        o0Var5.f13950d.c(new i(gVar));
        BuildersKt__Builders_commonKt.launch$default(gVar.f13342b0, null, null, new j(gVar, null), 3, null).start();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        p4.h.j(animator, "animation");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        p4.h.j(animator, "animation");
    }
}
