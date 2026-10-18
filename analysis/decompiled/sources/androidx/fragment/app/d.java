package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f1855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p0.b f1856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c.b f1857e;

    public d(ViewGroup viewGroup, View view, boolean z10, p0.b bVar, c.b bVar2) {
        this.f1853a = viewGroup;
        this.f1854b = view;
        this.f1855c = z10;
        this.f1856d = bVar;
        this.f1857e = bVar2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f1853a.endViewTransition(this.f1854b);
        if (this.f1855c) {
            r0.a(this.f1856d.f2019a, this.f1854b);
        }
        this.f1857e.a();
    }
}
