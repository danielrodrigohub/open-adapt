package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.b0 f2645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2648d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ n f2650f;

    public k(n nVar, RecyclerView.b0 b0Var, int i10, View view, int i11, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2650f = nVar;
        this.f2645a = b0Var;
        this.f2646b = i10;
        this.f2647c = view;
        this.f2648d = i11;
        this.f2649e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.f2646b != 0) {
            this.f2647c.setTranslationX(0.0f);
        }
        if (this.f2648d != 0) {
            this.f2647c.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2649e.setListener(null);
        this.f2650f.c(this.f2645a);
        this.f2650f.f2685p.remove(this.f2645a);
        this.f2650f.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f2650f);
    }
}
