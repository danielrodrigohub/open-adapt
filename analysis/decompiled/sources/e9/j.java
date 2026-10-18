package e9;

import android.animation.Animator;

/* JADX INFO: compiled from: ModesSelectionAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f6600a;

    public j(i iVar) {
        this.f6600a = iVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        p4.h.j(animator, "animation");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animation");
        this.f6600a.f6586f = false;
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
