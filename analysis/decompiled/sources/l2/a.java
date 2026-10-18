package l2;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import y1.i;

/* JADX INFO: compiled from: Keyframe.java */
/* JADX INFO: loaded from: classes.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f9895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final T f9896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public T f9897c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Interpolator f9898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Interpolator f9899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Interpolator f9900f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f9901g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Float f9902h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f9903i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f9904j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9905k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f9906l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f9907m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f9908n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PointF f9909o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public PointF f9910p;

    public a(i iVar, T t10, T t11, Interpolator interpolator, float f10, Float f11) {
        this.f9903i = -3987645.8f;
        this.f9904j = -3987645.8f;
        this.f9905k = 784923401;
        this.f9906l = 784923401;
        this.f9907m = Float.MIN_VALUE;
        this.f9908n = Float.MIN_VALUE;
        this.f9909o = null;
        this.f9910p = null;
        this.f9895a = iVar;
        this.f9896b = t10;
        this.f9897c = t11;
        this.f9898d = interpolator;
        this.f9899e = null;
        this.f9900f = null;
        this.f9901g = f10;
        this.f9902h = f11;
    }

    public final float a() {
        if (this.f9895a == null) {
            return 1.0f;
        }
        if (this.f9908n == Float.MIN_VALUE) {
            if (this.f9902h == null) {
                this.f9908n = 1.0f;
            } else {
                float fB = b();
                float fFloatValue = this.f9902h.floatValue() - this.f9901g;
                i iVar = this.f9895a;
                this.f9908n = (fFloatValue / (iVar.f18343l - iVar.f18342k)) + fB;
            }
        }
        return this.f9908n;
    }

    public final float b() {
        i iVar = this.f9895a;
        if (iVar == null) {
            return 0.0f;
        }
        if (this.f9907m == Float.MIN_VALUE) {
            float f10 = this.f9901g;
            float f11 = iVar.f18342k;
            this.f9907m = (f10 - f11) / (iVar.f18343l - f11);
        }
        return this.f9907m;
    }

    public final boolean c() {
        return this.f9898d == null && this.f9899e == null && this.f9900f == null;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Keyframe{startValue=");
        sbC.append(this.f9896b);
        sbC.append(", endValue=");
        sbC.append(this.f9897c);
        sbC.append(", startFrame=");
        sbC.append(this.f9901g);
        sbC.append(", endFrame=");
        sbC.append(this.f9902h);
        sbC.append(", interpolator=");
        sbC.append(this.f9898d);
        sbC.append('}');
        return sbC.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(i iVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, float f10) {
        this.f9903i = -3987645.8f;
        this.f9904j = -3987645.8f;
        this.f9905k = 784923401;
        this.f9906l = 784923401;
        this.f9907m = Float.MIN_VALUE;
        this.f9908n = Float.MIN_VALUE;
        this.f9909o = null;
        this.f9910p = null;
        this.f9895a = iVar;
        this.f9896b = obj;
        this.f9897c = obj2;
        this.f9898d = null;
        this.f9899e = interpolator;
        this.f9900f = interpolator2;
        this.f9901g = f10;
        this.f9902h = null;
    }

    public a(i iVar, T t10, T t11, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f10, Float f11) {
        this.f9903i = -3987645.8f;
        this.f9904j = -3987645.8f;
        this.f9905k = 784923401;
        this.f9906l = 784923401;
        this.f9907m = Float.MIN_VALUE;
        this.f9908n = Float.MIN_VALUE;
        this.f9909o = null;
        this.f9910p = null;
        this.f9895a = iVar;
        this.f9896b = t10;
        this.f9897c = t11;
        this.f9898d = interpolator;
        this.f9899e = interpolator2;
        this.f9900f = interpolator3;
        this.f9901g = f10;
        this.f9902h = f11;
    }

    public a(T t10) {
        this.f9903i = -3987645.8f;
        this.f9904j = -3987645.8f;
        this.f9905k = 784923401;
        this.f9906l = 784923401;
        this.f9907m = Float.MIN_VALUE;
        this.f9908n = Float.MIN_VALUE;
        this.f9909o = null;
        this.f9910p = null;
        this.f9895a = null;
        this.f9896b = t10;
        this.f9897c = t10;
        this.f9898d = null;
        this.f9899e = null;
        this.f9900f = null;
        this.f9901g = Float.MIN_VALUE;
        this.f9902h = Float.valueOf(Float.MAX_VALUE);
    }
}
