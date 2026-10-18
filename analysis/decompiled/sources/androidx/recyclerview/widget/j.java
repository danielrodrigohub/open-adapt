package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.b0 f2640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ n f2643d;

    public j(n nVar, RecyclerView.b0 b0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2643d = nVar;
        this.f2640a = b0Var;
        this.f2641b = view;
        this.f2642c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f2641b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2642c.setListener(null);
        this.f2643d.c(this.f2640a);
        this.f2643d.f2684o.remove(this.f2640a);
        this.f2643d.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f2643d);
    }
}
