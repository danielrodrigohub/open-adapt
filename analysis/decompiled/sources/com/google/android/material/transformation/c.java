package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import y5.d;

/* JADX INFO: compiled from: FabTransformationBehavior.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f5631a;

    public c(d dVar) {
        this.f5631a = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        d.C0322d revealInfo = this.f5631a.getRevealInfo();
        revealInfo.f18657c = Float.MAX_VALUE;
        this.f5631a.setRevealInfo(revealInfo);
    }
}
