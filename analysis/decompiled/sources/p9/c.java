package p9;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import p4.h;

/* JADX INFO: compiled from: TooltipPopUpView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f13371a;

    public c(d dVar) {
        this.f13371a = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        h.j(animator, "animation");
        this.f13371a.B = true;
    }
}
