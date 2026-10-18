package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import m6.f;

/* JADX INFO: compiled from: AppBarLayout.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f4990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f4991b;

    public a(AppBarLayout appBarLayout, f fVar) {
        this.f4991b = appBarLayout;
        this.f4990a = fVar;
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [java.util.ArrayList, java.util.List<com.google.android.material.appbar.AppBarLayout$d>] */
    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f4990a.n(fFloatValue);
        Drawable drawable = this.f4991b.f4965x;
        if (drawable instanceof f) {
            ((f) drawable).n(fFloatValue);
        }
        for (AppBarLayout.d dVar : this.f4991b.f4963v) {
            int i10 = this.f4990a.B;
            dVar.a();
        }
    }
}
