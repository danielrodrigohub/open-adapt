package i9;

import android.animation.Animator;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f8916a;

    public i(g gVar) {
        this.f8916a = gVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        p4.h.j(animator, "animation");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animation");
        ((h8.a) this.f8916a.I0.getValue()).s(true);
        o8.d dVar = this.f8916a.f8902u0;
        if (dVar != null) {
            dVar.O(o8.a.COMPLETED);
        } else {
            p4.h.C("stateListener");
            throw null;
        }
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
