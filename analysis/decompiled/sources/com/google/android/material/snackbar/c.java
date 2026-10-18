package com.google.android.material.snackbar;

import android.animation.ValueAnimator;
import android.os.Handler;

/* JADX INFO: compiled from: BaseTransientBottomBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f5397a;

    public c(BaseTransientBottomBar baseTransientBottomBar, int i10) {
        this.f5397a = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        Handler handler = BaseTransientBottomBar.f5357n;
        this.f5397a.f5362c.setTranslationY(iIntValue);
    }
}
