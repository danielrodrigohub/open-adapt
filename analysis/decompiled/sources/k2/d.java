package k2;

import android.animation.Animator;
import android.graphics.PointF;
import android.view.Choreographer;
import java.util.Iterator;
import p4.h;
import y1.i;

/* JADX INFO: compiled from: LottieValueAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends a implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public i f9634q;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f9627j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f9628k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f9629l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f9630m = 0.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9631n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f9632o = -2.1474836E9f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f9633p = 2.1474836E9f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f9635r = false;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set<android.animation.Animator$AnimatorListener>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void cancel() {
        Iterator it = this.f9624i.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        a(h());
        j();
    }

    public final void d() {
        j();
        a(h());
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [java.util.Set<android.animation.Animator$AnimatorListener>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j10) {
        i();
        i iVar = this.f9634q;
        if (iVar == null || !this.f9635r) {
            return;
        }
        long j11 = this.f9629l;
        float fAbs = (j11 != 0 ? j10 - j11 : 0L) / ((1.0E9f / iVar.f18344m) / Math.abs(this.f9627j));
        float f10 = this.f9630m;
        if (h()) {
            fAbs = -fAbs;
        }
        float f11 = f10 + fAbs;
        this.f9630m = f11;
        float fG = g();
        float f12 = f();
        PointF pointF = f.f9637a;
        boolean z10 = !(f11 >= fG && f11 <= f12);
        this.f9630m = f.b(this.f9630m, g(), f());
        this.f9629l = j10;
        c();
        if (z10) {
            if (getRepeatCount() == -1 || this.f9631n < getRepeatCount()) {
                Iterator it = this.f9624i.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
                }
                this.f9631n++;
                if (getRepeatMode() == 2) {
                    this.f9628k = !this.f9628k;
                    this.f9627j = -this.f9627j;
                } else {
                    this.f9630m = h() ? f() : g();
                }
                this.f9629l = j10;
            } else {
                this.f9630m = this.f9627j < 0.0f ? g() : f();
                j();
                a(h());
            }
        }
        if (this.f9634q != null) {
            float f13 = this.f9630m;
            if (f13 < this.f9632o || f13 > this.f9633p) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f9632o), Float.valueOf(this.f9633p), Float.valueOf(this.f9630m)));
            }
        }
        h.p();
    }

    public final float e() {
        i iVar = this.f9634q;
        if (iVar == null) {
            return 0.0f;
        }
        float f10 = this.f9630m;
        float f11 = iVar.f18342k;
        return (f10 - f11) / (iVar.f18343l - f11);
    }

    public final float f() {
        i iVar = this.f9634q;
        if (iVar == null) {
            return 0.0f;
        }
        float f10 = this.f9633p;
        return f10 == 2.1474836E9f ? iVar.f18343l : f10;
    }

    public final float g() {
        i iVar = this.f9634q;
        if (iVar == null) {
            return 0.0f;
        }
        float f10 = this.f9632o;
        return f10 == -2.1474836E9f ? iVar.f18342k : f10;
    }

    @Override // android.animation.ValueAnimator
    public final float getAnimatedFraction() {
        float fG;
        float f10;
        float fG2;
        if (this.f9634q == null) {
            return 0.0f;
        }
        if (h()) {
            fG = f() - this.f9630m;
            f10 = f();
            fG2 = g();
        } else {
            fG = this.f9630m - g();
            f10 = f();
            fG2 = g();
        }
        return fG / (f10 - fG2);
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        return Float.valueOf(e());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        i iVar = this.f9634q;
        if (iVar == null) {
            return 0L;
        }
        return (long) iVar.b();
    }

    public final boolean h() {
        return this.f9627j < 0.0f;
    }

    public final void i() {
        if (this.f9635r) {
            Choreographer.getInstance().removeFrameCallback(this);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.f9635r;
    }

    public final void j() {
        Choreographer.getInstance().removeFrameCallback(this);
        this.f9635r = false;
    }

    public final void k(float f10) {
        if (this.f9630m == f10) {
            return;
        }
        this.f9630m = f.b(f10, g(), f());
        this.f9629l = 0L;
        c();
    }

    public final void l(float f10, float f11) {
        if (f10 > f11) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
        }
        i iVar = this.f9634q;
        float f12 = iVar == null ? -3.4028235E38f : iVar.f18342k;
        float f13 = iVar == null ? Float.MAX_VALUE : iVar.f18343l;
        float fB = f.b(f10, f12, f13);
        float fB2 = f.b(f11, f12, f13);
        if (fB == this.f9632o && fB2 == this.f9633p) {
            return;
        }
        this.f9632o = fB;
        this.f9633p = fB2;
        k((int) f.b(this.f9630m, fB, fB2));
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 == 2 || !this.f9628k) {
            return;
        }
        this.f9628k = false;
        this.f9627j = -this.f9627j;
    }
}
