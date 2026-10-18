package j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: ViewPropertyAnimatorCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference<View> f9190a;

    /* JADX INFO: compiled from: ViewPropertyAnimatorCompat.java */
    public class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h0 f9191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f9192b;

        public a(h0 h0Var, View view) {
            this.f9191a = h0Var;
            this.f9192b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f9191a.b(this.f9192b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            this.f9191a.a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            this.f9191a.c();
        }
    }

    /* JADX INFO: compiled from: ViewPropertyAnimatorCompat.java */
    public static class b {
        public static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
            return viewPropertyAnimator.setUpdateListener(animatorUpdateListener);
        }
    }

    public g0(View view) {
        this.f9190a = new WeakReference<>(view);
    }

    public final g0 a(float f10) {
        View view = this.f9190a.get();
        if (view != null) {
            view.animate().alpha(f10);
        }
        return this;
    }

    public final void b() {
        View view = this.f9190a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final g0 c(long j10) {
        View view = this.f9190a.get();
        if (view != null) {
            view.animate().setDuration(j10);
        }
        return this;
    }

    public final g0 d(h0 h0Var) {
        View view = this.f9190a.get();
        if (view != null) {
            e(view, h0Var);
        }
        return this;
    }

    public final void e(View view, h0 h0Var) {
        if (h0Var != null) {
            view.animate().setListener(new a(h0Var, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public final g0 f(final i0 i0Var) {
        final View view = this.f9190a.get();
        if (view != null) {
            b.a(view.animate(), i0Var != null ? new ValueAnimator.AnimatorUpdateListener(view) { // from class: j0.f0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ((View) ((f.u.c) this.f9185a).f6950a.f6926d.getParent()).invalidate();
                }
            } : null);
        }
        return this;
    }

    public final g0 g(float f10) {
        View view = this.f9190a.get();
        if (view != null) {
            view.animate().translationY(f10);
        }
        return this;
    }
}
