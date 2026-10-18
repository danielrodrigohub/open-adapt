package q9;

import android.animation.Animator;
import android.animation.ValueAnimator;
import p4.h;

/* JADX INFO: compiled from: Animator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ValueAnimator f14170a;

    public b(ValueAnimator valueAnimator) {
        this.f14170a = valueAnimator;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        h.j(animator, "animator");
        this.f14170a.removeAllUpdateListeners();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        h.j(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        h.j(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        h.j(animator, "animator");
    }
}
