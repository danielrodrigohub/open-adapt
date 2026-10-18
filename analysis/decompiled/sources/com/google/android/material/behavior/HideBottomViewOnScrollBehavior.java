package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.c<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5004c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ViewPropertyAnimator f5005d;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f5005d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.f5002a = 0;
        this.f5003b = 2;
        this.f5004c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean h(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        this.f5002a = v10.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v10.getLayoutParams()).bottomMargin;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public final void l(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int[] iArr) {
        if (i10 > 0) {
            if (this.f5003b == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f5005d;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.f5003b = 1;
            s(view, this.f5002a + this.f5004c, 175L, p5.a.f13254c);
            return;
        }
        if (i10 < 0) {
            if (this.f5003b == 2) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator2 = this.f5005d;
            if (viewPropertyAnimator2 != null) {
                viewPropertyAnimator2.cancel();
                view.clearAnimation();
            }
            this.f5003b = 2;
            s(view, 0, 225L, p5.a.f13255d);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11) {
        return i10 == 2;
    }

    public final void s(V v10, int i10, long j10, TimeInterpolator timeInterpolator) {
        this.f5005d = v10.animate().translationY(i10).setInterpolator(timeInterpolator).setDuration(j10).setListener(new a());
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5002a = 0;
        this.f5003b = 2;
        this.f5004c = 0;
    }
}
