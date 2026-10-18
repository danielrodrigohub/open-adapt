package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.b0 f2636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ n f2639d;

    public i(n nVar, RecyclerView.b0 b0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2639d = nVar;
        this.f2636a = b0Var;
        this.f2637b = viewPropertyAnimator;
        this.f2638c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2637b.setListener(null);
        this.f2638c.setAlpha(1.0f);
        this.f2639d.c(this.f2636a);
        this.f2639d.f2686q.remove(this.f2636a);
        this.f2639d.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f2639d);
    }
}
