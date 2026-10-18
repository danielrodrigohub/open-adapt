package k2;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: compiled from: BaseLottieAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends ValueAnimator {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Set<ValueAnimator.AnimatorUpdateListener> f9623h = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Set<Animator.AnimatorListener> f9624i = new CopyOnWriteArraySet();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.Animator$AnimatorListener>, java.util.concurrent.CopyOnWriteArraySet] */
    public final void a(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.f9624i) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z10);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.Animator$AnimatorListener>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // android.animation.Animator
    public final void addListener(Animator.AnimatorListener animatorListener) {
        this.f9624i.add(animatorListener);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.ValueAnimator$AnimatorUpdateListener>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // android.animation.ValueAnimator
    public final void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f9623h.add(animatorUpdateListener);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.Animator$AnimatorListener>, java.util.concurrent.CopyOnWriteArraySet] */
    public final void b(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.f9624i) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z10);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.ValueAnimator$AnimatorUpdateListener>, java.util.concurrent.CopyOnWriteArraySet] */
    public final void c() {
        Iterator it = this.f9623h.iterator();
        while (it.hasNext()) {
            ((ValueAnimator.AnimatorUpdateListener) it.next()).onAnimationUpdate(this);
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.Animator$AnimatorListener>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // android.animation.Animator
    public final void removeAllListeners() {
        this.f9624i.clear();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.ValueAnimator$AnimatorUpdateListener>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // android.animation.ValueAnimator
    public final void removeAllUpdateListeners() {
        this.f9623h.clear();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.Animator$AnimatorListener>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // android.animation.Animator
    public final void removeListener(Animator.AnimatorListener animatorListener) {
        this.f9624i.remove(animatorListener);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.ValueAnimator$AnimatorUpdateListener>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // android.animation.ValueAnimator
    public final void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f9623h.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final /* bridge */ /* synthetic */ Animator setDuration(long j10) {
        setDuration(j10);
        throw null;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void setStartDelay(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final ValueAnimator setDuration(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }
}
