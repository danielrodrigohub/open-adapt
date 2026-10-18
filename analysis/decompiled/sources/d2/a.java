package d2;

import android.annotation.SuppressLint;
import android.graphics.PointF;

/* JADX INFO: compiled from: CubicCurveData.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PointF f5961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PointF f5962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PointF f5963c;

    public a() {
        this.f5961a = new PointF();
        this.f5962b = new PointF();
        this.f5963c = new PointF();
    }

    public final void a(float f10, float f11) {
        this.f5961a.set(f10, f11);
    }

    public final void b(float f10, float f11) {
        this.f5962b.set(f10, f11);
    }

    public final void c(float f10, float f11) {
        this.f5963c.set(f10, f11);
    }

    @SuppressLint({"DefaultLocale"})
    public final String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.f5963c.x), Float.valueOf(this.f5963c.y), Float.valueOf(this.f5961a.x), Float.valueOf(this.f5961a.y), Float.valueOf(this.f5962b.x), Float.valueOf(this.f5962b.y));
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f5961a = pointF;
        this.f5962b = pointF2;
        this.f5963c = pointF3;
    }
}
