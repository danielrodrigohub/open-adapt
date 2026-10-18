package x8;

import android.animation.Animator;
import android.content.Context;
import android.view.View;

/* JADX INFO: compiled from: Animator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f17911a;

    public j(View view) {
        this.f17911a = view;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        p4.h.j(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        p4.h.j(animator, "animator");
        Context context = this.f17911a.getContext();
        p4.h.i(context, "context");
        c3.d.r(context, 100L);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        p4.h.j(animator, "animator");
    }
}
