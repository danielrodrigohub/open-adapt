package com.google.android.material.snackbar;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import java.util.Objects;

/* JADX INFO: compiled from: BaseTransientBottomBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f5400h;

    public f(BaseTransientBottomBar baseTransientBottomBar) {
        this.f5400h = baseTransientBottomBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseTransientBottomBar.g gVar = this.f5400h.f5362c;
        if (gVar == null) {
            return;
        }
        if (gVar.getParent() != null) {
            this.f5400h.f5362c.setVisibility(0);
        }
        if (this.f5400h.f5362c.getAnimationMode() != 1) {
            BaseTransientBottomBar baseTransientBottomBar = this.f5400h;
            int iC = baseTransientBottomBar.c();
            baseTransientBottomBar.f5362c.setTranslationY(iC);
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setIntValues(iC, 0);
            valueAnimator.setInterpolator(p5.a.f13253b);
            valueAnimator.setDuration(250L);
            valueAnimator.addListener(new n6.b(baseTransientBottomBar));
            valueAnimator.addUpdateListener(new c(baseTransientBottomBar, iC));
            valueAnimator.start();
            return;
        }
        BaseTransientBottomBar baseTransientBottomBar2 = this.f5400h;
        Objects.requireNonNull(baseTransientBottomBar2);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(p5.a.f13252a);
        valueAnimatorOfFloat.addUpdateListener(new a(baseTransientBottomBar2));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(p5.a.f13255d);
        valueAnimatorOfFloat2.addUpdateListener(new b(baseTransientBottomBar2));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new n6.e(baseTransientBottomBar2));
        animatorSet.start();
    }
}
