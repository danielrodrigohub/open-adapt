package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class m extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n.a f2666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ n f2669d;

    public m(n nVar, n.a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2669d = nVar;
        this.f2666a = aVar;
        this.f2667b = viewPropertyAnimator;
        this.f2668c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2667b.setListener(null);
        this.f2668c.setAlpha(1.0f);
        this.f2668c.setTranslationX(0.0f);
        this.f2668c.setTranslationY(0.0f);
        this.f2669d.c(this.f2666a.f2689b);
        this.f2669d.f2687r.remove(this.f2666a.f2689b);
        this.f2669d.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        n nVar = this.f2669d;
        RecyclerView.b0 b0Var = this.f2666a.f2689b;
        Objects.requireNonNull(nVar);
    }
}
