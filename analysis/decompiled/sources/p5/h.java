package p5;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: MotionTiming.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f13267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TimeInterpolator f13268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13270e;

    public h(long j10) {
        this.f13268c = null;
        this.f13269d = 0;
        this.f13270e = 1;
        this.f13266a = j10;
        this.f13267b = 150L;
    }

    public final void a(Animator animator) {
        animator.setStartDelay(this.f13266a);
        animator.setDuration(this.f13267b);
        animator.setInterpolator(b());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f13269d);
            valueAnimator.setRepeatMode(this.f13270e);
        }
    }

    public final TimeInterpolator b() {
        TimeInterpolator timeInterpolator = this.f13268c;
        return timeInterpolator != null ? timeInterpolator : a.f13253b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f13266a == hVar.f13266a && this.f13267b == hVar.f13267b && this.f13269d == hVar.f13269d && this.f13270e == hVar.f13270e) {
            return b().getClass().equals(hVar.b().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f13266a;
        long j11 = this.f13267b;
        return ((((b().getClass().hashCode() + (((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) ((j11 >>> 32) ^ j11))) * 31)) * 31) + this.f13269d) * 31) + this.f13270e;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('\n');
        sb2.append(h.class.getName());
        sb2.append('{');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" delay: ");
        sb2.append(this.f13266a);
        sb2.append(" duration: ");
        sb2.append(this.f13267b);
        sb2.append(" interpolator: ");
        sb2.append(b().getClass());
        sb2.append(" repeatCount: ");
        sb2.append(this.f13269d);
        sb2.append(" repeatMode: ");
        return s.a(sb2, this.f13270e, "}\n");
    }

    public h(long j10, long j11, TimeInterpolator timeInterpolator) {
        this.f13269d = 0;
        this.f13270e = 1;
        this.f13266a = j10;
        this.f13267b = j11;
        this.f13268c = timeInterpolator;
    }
}
