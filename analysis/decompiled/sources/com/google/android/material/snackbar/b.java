package com.google.android.material.snackbar;

import android.animation.ValueAnimator;

/* JADX INFO: compiled from: BaseTransientBottomBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f5396a;

    public b(BaseTransientBottomBar baseTransientBottomBar) {
        this.f5396a = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f5396a.f5362c.setScaleX(fFloatValue);
        this.f5396a.f5362c.setScaleY(fFloatValue);
    }
}
