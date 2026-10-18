package i2;

import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: KeyframeParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static p.h<WeakReference<Interpolator>> f8714b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f8713a = new LinearInterpolator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static j2.c.a f8715c = j2.c.a.a("t", "s", "e", "o", "i", "h", "to", TracePayload.TIMESTAMP_KEY);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static j2.c.a f8716d = j2.c.a.a("x", "y");

    public static Interpolator a(PointF pointF, PointF pointF2) {
        WeakReference<Interpolator> weakReferenceC;
        Interpolator interpolatorB;
        pointF.x = k2.f.b(pointF.x, -1.0f, 1.0f);
        pointF.y = k2.f.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = k2.f.b(pointF2.x, -1.0f, 1.0f);
        float fB = k2.f.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        float f10 = pointF.x;
        float f11 = pointF.y;
        float f12 = pointF2.x;
        ThreadLocal<PathMeasure> threadLocal = k2.g.f9638a;
        int i10 = f10 != 0.0f ? (int) (527 * f10) : 17;
        if (f11 != 0.0f) {
            i10 = (int) (i10 * 31 * f11);
        }
        if (f12 != 0.0f) {
            i10 = (int) (i10 * 31 * f12);
        }
        if (fB != 0.0f) {
            i10 = (int) (i10 * 31 * fB);
        }
        synchronized (t.class) {
            if (f8714b == null) {
                f8714b = new p.h<>();
            }
            weakReferenceC = f8714b.c(i10, null);
        }
        Interpolator interpolator = weakReferenceC != null ? weakReferenceC.get() : null;
        if (weakReferenceC == null || interpolator == null) {
            try {
                interpolatorB = l0.a.b(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                interpolatorB = "The Path cannot loop back on itself.".equals(e10.getMessage()) ? l0.a.b(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorB;
            try {
                WeakReference<Interpolator> weakReference = new WeakReference<>(interpolator);
                synchronized (t.class) {
                    f8714b.f(i10, weakReference);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return interpolator;
    }

    /* JADX WARN: Code duplicated, block: B:98:0x01ea  */
    public static <T> l2.a<T> b(j2.c cVar, y1.i iVar, float f10, l0<T> l0Var, boolean z10, boolean z11) throws IOException {
        Interpolator interpolatorA;
        Interpolator interpolatorA2;
        Interpolator interpolatorA3;
        T t10;
        Interpolator interpolator;
        l2.a<T> aVar;
        int i10;
        float f11;
        float fK0;
        PointF pointF;
        int i11;
        int i12 = 1;
        if (!z10 || !z11) {
            if (!z10) {
                return new l2.a<>(l0Var.a(cVar, f10));
            }
            cVar.Y();
            PointF pointFB = null;
            PointF pointFB2 = null;
            PointF pointFB3 = null;
            PointF pointFB4 = null;
            boolean z12 = false;
            T tA = null;
            float fK1 = 0.0f;
            T tA2 = null;
            while (cVar.i0()) {
                switch (cVar.q0(f8715c)) {
                    case 0:
                        fK1 = (float) cVar.k0();
                        break;
                    case 1:
                        tA = l0Var.a(cVar, f10);
                        break;
                    case 2:
                        tA2 = l0Var.a(cVar, f10);
                        break;
                    case 3:
                        pointFB4 = s.b(cVar, 1.0f);
                        break;
                    case 4:
                        pointFB = s.b(cVar, 1.0f);
                        break;
                    case 5:
                        z12 = cVar.l0() == 1;
                        break;
                    case 6:
                        pointFB2 = s.b(cVar, f10);
                        break;
                    case 7:
                        pointFB3 = s.b(cVar, f10);
                        break;
                    default:
                        cVar.s0();
                        break;
                }
            }
            cVar.g0();
            if (z12) {
                interpolatorA = f8713a;
                tA2 = tA;
            } else {
                interpolatorA = (pointFB4 == null || pointFB == null) ? f8713a : a(pointFB4, pointFB);
            }
            l2.a<T> aVar2 = new l2.a<>(iVar, tA, tA2, interpolatorA, fK1, (Float) null);
            aVar2.f9909o = pointFB2;
            aVar2.f9910p = pointFB3;
            return aVar2;
        }
        int i13 = 3;
        cVar.Y();
        PointF pointF2 = null;
        PointF pointF3 = null;
        PointF pointFB5 = null;
        PointF pointFB6 = null;
        int i14 = 0;
        PointF pointFB7 = null;
        PointF pointFB8 = null;
        PointF pointF4 = null;
        T tA3 = null;
        PointF pointF5 = null;
        T tA4 = null;
        float fK2 = 0.0f;
        while (cVar.i0()) {
            switch (cVar.q0(f8715c)) {
                case 0:
                    pointFB6 = pointFB6;
                    i10 = i14;
                    fK2 = (float) cVar.k0();
                    i14 = i10;
                    pointFB6 = pointFB6;
                    i12 = 1;
                    i13 = 3;
                    break;
                case 1:
                    pointFB6 = pointFB6;
                    i10 = i14;
                    tA3 = l0Var.a(cVar, f10);
                    i14 = i10;
                    pointFB6 = pointFB6;
                    i12 = 1;
                    i13 = 3;
                    break;
                case 2:
                    pointFB6 = pointFB6;
                    i10 = i14;
                    tA4 = l0Var.a(cVar, f10);
                    i14 = i10;
                    pointFB6 = pointFB6;
                    i12 = 1;
                    i13 = 3;
                    break;
                case 3:
                    pointFB6 = pointFB6;
                    i10 = i14;
                    if (cVar.o0() == 3) {
                        cVar.Y();
                        float fK3 = 0.0f;
                        float fK4 = 0.0f;
                        float f12 = 0.0f;
                        float f13 = 0.0f;
                        while (cVar.i0()) {
                            int iQ0 = cVar.q0(f8716d);
                            if (iQ0 != 0) {
                                if (iQ0 != 1) {
                                    cVar.s0();
                                } else if (cVar.o0() == 7) {
                                    fK4 = (float) cVar.k0();
                                    f13 = fK4;
                                } else {
                                    cVar.x();
                                    float fK5 = (float) cVar.k0();
                                    if (cVar.o0() == 7) {
                                        f11 = fK5;
                                        fK0 = (float) cVar.k0();
                                    } else {
                                        f11 = fK5;
                                        fK0 = f11;
                                    }
                                    cVar.f0();
                                    fK4 = f11;
                                    f13 = fK0;
                                }
                            } else if (cVar.o0() == 7) {
                                fK3 = (float) cVar.k0();
                                f12 = fK3;
                            } else {
                                cVar.x();
                                float fK6 = (float) cVar.k0();
                                if (cVar.o0() == 7) {
                                    fK6 = (float) cVar.k0();
                                }
                                cVar.f0();
                                f12 = fK6;
                                fK3 = fK6;
                            }
                        }
                        PointF pointF6 = new PointF(fK3, fK4);
                        PointF pointF7 = new PointF(f12, f13);
                        cVar.g0();
                        pointF4 = pointF7;
                        pointF5 = pointF6;
                    } else {
                        pointFB7 = s.b(cVar, f10);
                    }
                    i14 = i10;
                    pointFB6 = pointFB6;
                    i12 = 1;
                    i13 = 3;
                    break;
                case 4:
                    if (cVar.o0() != i13) {
                        pointFB8 = s.b(cVar, f10);
                        pointFB6 = pointFB6;
                        i12 = 1;
                        i13 = 3;
                    } else {
                        cVar.Y();
                        float fK7 = 0.0f;
                        float fK8 = 0.0f;
                        float fK9 = 0.0f;
                        float fK10 = 0.0f;
                        while (cVar.i0()) {
                            int iQ1 = cVar.q0(f8716d);
                            if (iQ1 != 0) {
                                pointF = pointFB6;
                                if (iQ1 != 1) {
                                    cVar.s0();
                                    i11 = i14;
                                } else if (cVar.o0() == 7) {
                                    i11 = i14;
                                    fK8 = (float) cVar.k0();
                                    fK9 = fK8;
                                } else {
                                    i11 = i14;
                                    cVar.x();
                                    fK8 = (float) cVar.k0();
                                    fK9 = cVar.o0() == 7 ? (float) cVar.k0() : fK8;
                                    cVar.f0();
                                }
                            } else {
                                pointF = pointFB6;
                                i11 = i14;
                                if (cVar.o0() == 7) {
                                    fK7 = (float) cVar.k0();
                                    fK10 = fK7;
                                } else {
                                    cVar.x();
                                    fK7 = (float) cVar.k0();
                                    fK10 = cVar.o0() == 7 ? (float) cVar.k0() : fK7;
                                    cVar.f0();
                                }
                            }
                            i14 = i11;
                            pointFB6 = pointF;
                        }
                        pointFB6 = pointFB6;
                        i10 = i14;
                        PointF pointF8 = new PointF(fK7, fK8);
                        pointF3 = new PointF(fK10, fK9);
                        cVar.g0();
                        pointF2 = pointF8;
                        i14 = i10;
                        pointFB6 = pointFB6;
                        i12 = 1;
                        i13 = 3;
                    }
                    break;
                case 5:
                    if (cVar.l0() == i12) {
                        i14 = i12;
                    } else {
                        i14 = 0;
                    }
                    pointFB6 = pointFB6;
                    i12 = 1;
                    i13 = 3;
                    break;
                case 6:
                    pointFB5 = s.b(cVar, f10);
                    pointFB6 = pointFB6;
                    i12 = 1;
                    i13 = 3;
                    break;
                case 7:
                    pointFB6 = s.b(cVar, f10);
                    break;
                default:
                    pointFB6 = pointFB6;
                    i10 = i14;
                    cVar.s0();
                    i14 = i10;
                    pointFB6 = pointFB6;
                    i12 = 1;
                    i13 = 3;
                    break;
            }
        }
        PointF pointF9 = pointFB6;
        int i15 = i14;
        cVar.g0();
        if (i15 != 0) {
            interpolatorA2 = f8713a;
            tA4 = tA3;
        } else {
            if (pointFB7 == null || pointFB8 == null) {
                if (pointF5 == null || pointF4 == null || pointF2 == null || pointF3 == null) {
                    interpolatorA2 = f8713a;
                } else {
                    Interpolator interpolatorA4 = a(pointF5, pointF2);
                    interpolatorA3 = a(pointF4, pointF3);
                    t10 = tA4;
                    interpolator = interpolatorA4;
                    interpolatorA2 = null;
                }
                if (interpolator != null || interpolatorA3 == null) {
                    aVar = new l2.a<>(iVar, tA3, t10, interpolatorA2, fK2, (Float) null);
                } else {
                    aVar = new l2.a<>(iVar, tA3, t10, interpolator, interpolatorA3, fK2);
                }
                aVar.f9909o = pointFB5;
                aVar.f9910p = pointF9;
                return aVar;
            }
            interpolatorA2 = a(pointFB7, pointFB8);
        }
        t10 = tA4;
        interpolator = null;
        interpolatorA3 = null;
        if (interpolator != null) {
            aVar = new l2.a<>(iVar, tA3, t10, interpolatorA2, fK2, (Float) null);
        } else {
            aVar = new l2.a<>(iVar, tA3, t10, interpolatorA2, fK2, (Float) null);
        }
        aVar.f9909o = pointFB5;
        aVar.f9910p = pointF9;
        return aVar;
    }
}
