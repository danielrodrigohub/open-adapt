package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: compiled from: FloatingActionButtonImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f5304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d.g f5305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f5306c;

    public c(d dVar, boolean z10, d.g gVar) {
        this.f5306c = dVar;
        this.f5304a = z10;
        this.f5305b = gVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        d dVar = this.f5306c;
        dVar.f5325s = 0;
        dVar.f5319m = null;
        d.g gVar = this.f5305b;
        if (gVar != null) {
            ((a) gVar).f5298a.b();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f5306c.f5329w.b(0, this.f5304a);
        d dVar = this.f5306c;
        dVar.f5325s = 2;
        dVar.f5319m = animator;
    }
}
