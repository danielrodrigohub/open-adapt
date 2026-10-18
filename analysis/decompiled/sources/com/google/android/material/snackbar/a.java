package com.google.android.material.snackbar;

import android.animation.ValueAnimator;

/* JADX INFO: compiled from: BaseTransientBottomBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f5395a;

    public a(BaseTransientBottomBar baseTransientBottomBar) {
        this.f5395a = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f5395a.f5362c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
