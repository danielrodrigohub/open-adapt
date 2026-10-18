package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n.a f2655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ n f2658d;

    public l(n nVar, n.a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2658d = nVar;
        this.f2655a = aVar;
        this.f2656b = viewPropertyAnimator;
        this.f2657c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2656b.setListener(null);
        this.f2657c.setAlpha(1.0f);
        this.f2657c.setTranslationX(0.0f);
        this.f2657c.setTranslationY(0.0f);
        this.f2658d.c(this.f2655a.f2688a);
        this.f2658d.f2687r.remove(this.f2655a.f2688a);
        this.f2658d.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        n nVar = this.f2658d;
        RecyclerView.b0 b0Var = this.f2655a.f2688a;
        Objects.requireNonNull(nVar);
    }
}
