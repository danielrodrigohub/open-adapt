package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: compiled from: FloatingActionButtonImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f5301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d.g f5302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f5303d;

    public b(d dVar, boolean z10, d.g gVar) {
        this.f5303d = dVar;
        this.f5301b = z10;
        this.f5302c = gVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f5300a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        d dVar = this.f5303d;
        dVar.f5325s = 0;
        dVar.f5319m = null;
        if (this.f5300a) {
            return;
        }
        FloatingActionButton floatingActionButton = dVar.f5329w;
        boolean z10 = this.f5301b;
        floatingActionButton.b(z10 ? 8 : 4, z10);
        d.g gVar = this.f5302c;
        if (gVar != null) {
            a aVar = (a) gVar;
            aVar.f5298a.a(aVar.f5299b);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f5303d.f5329w.b(0, this.f5301b);
        d dVar = this.f5303d;
        dVar.f5325s = 1;
        dVar.f5319m = animator;
        this.f5300a = false;
    }
}
