package b2;

import android.graphics.Matrix;
import android.graphics.PointF;
import java.util.Collections;
import y1.i0;

/* JADX INFO: compiled from: TransformKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f3213a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Matrix f3214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f3215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Matrix f3216d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f3217e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a<PointF, PointF> f3218f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a<?, PointF> f3219g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a<l2.d, l2.d> f3220h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a<Float, Float> f3221i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a<Integer, Integer> f3222j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public d f3223k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public d f3224l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public a<?, Float> f3225m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a<?, Float> f3226n;

    public q(e2.k kVar) {
        e2.e eVar = kVar.f6305a;
        this.f3218f = eVar == null ? null : eVar.a();
        e2.l<PointF, PointF> lVar = kVar.f6306b;
        this.f3219g = lVar == null ? null : lVar.a();
        e2.g gVar = kVar.f6307c;
        this.f3220h = gVar == null ? null : gVar.a();
        e2.b bVar = kVar.f6308d;
        this.f3221i = bVar == null ? null : bVar.a();
        e2.b bVar2 = kVar.f6310f;
        d dVar = bVar2 == null ? null : (d) bVar2.a();
        this.f3223k = dVar;
        if (dVar != null) {
            this.f3214b = new Matrix();
            this.f3215c = new Matrix();
            this.f3216d = new Matrix();
            this.f3217e = new float[9];
        } else {
            this.f3214b = null;
            this.f3215c = null;
            this.f3216d = null;
            this.f3217e = null;
        }
        e2.b bVar3 = kVar.f6311g;
        this.f3224l = bVar3 == null ? null : (d) bVar3.a();
        e2.d dVar2 = kVar.f6309e;
        if (dVar2 != null) {
            this.f3222j = dVar2.a();
        }
        e2.b bVar4 = kVar.f6312h;
        if (bVar4 != null) {
            this.f3225m = bVar4.a();
        } else {
            this.f3225m = null;
        }
        e2.b bVar5 = kVar.f6313i;
        if (bVar5 != null) {
            this.f3226n = bVar5.a();
        } else {
            this.f3226n = null;
        }
    }

    public final void a(g2.b bVar) {
        bVar.f(this.f3222j);
        bVar.f(this.f3225m);
        bVar.f(this.f3226n);
        bVar.f(this.f3218f);
        bVar.f(this.f3219g);
        bVar.f(this.f3220h);
        bVar.f(this.f3221i);
        bVar.f(this.f3223k);
        bVar.f(this.f3224l);
    }

    public final void b(a.InterfaceC0052a interfaceC0052a) {
        a<Integer, Integer> aVar = this.f3222j;
        if (aVar != null) {
            aVar.a(interfaceC0052a);
        }
        a<?, Float> aVar2 = this.f3225m;
        if (aVar2 != null) {
            aVar2.a(interfaceC0052a);
        }
        a<?, Float> aVar3 = this.f3226n;
        if (aVar3 != null) {
            aVar3.a(interfaceC0052a);
        }
        a<PointF, PointF> aVar4 = this.f3218f;
        if (aVar4 != null) {
            aVar4.a(interfaceC0052a);
        }
        a<?, PointF> aVar5 = this.f3219g;
        if (aVar5 != null) {
            aVar5.a(interfaceC0052a);
        }
        a<l2.d, l2.d> aVar6 = this.f3220h;
        if (aVar6 != null) {
            aVar6.a(interfaceC0052a);
        }
        a<Float, Float> aVar7 = this.f3221i;
        if (aVar7 != null) {
            aVar7.a(interfaceC0052a);
        }
        d dVar = this.f3223k;
        if (dVar != null) {
            dVar.a(interfaceC0052a);
        }
        d dVar2 = this.f3224l;
        if (dVar2 != null) {
            dVar2.a(interfaceC0052a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> boolean c(T t10, l2.c<T> cVar) {
        if (t10 == i0.f18352f) {
            a<PointF, PointF> aVar = this.f3218f;
            if (aVar == null) {
                this.f3218f = new r(cVar, new PointF());
                return true;
            }
            aVar.k(cVar);
            return true;
        }
        if (t10 == i0.f18353g) {
            a<?, PointF> aVar2 = this.f3219g;
            if (aVar2 == null) {
                this.f3219g = new r(cVar, new PointF());
                return true;
            }
            aVar2.k(cVar);
            return true;
        }
        if (t10 == i0.f18354h) {
            a<?, PointF> aVar3 = this.f3219g;
            if (aVar3 instanceof n) {
                n nVar = (n) aVar3;
                l2.c<Float> cVar2 = nVar.f3208m;
                nVar.f3208m = cVar;
                return true;
            }
        }
        if (t10 == i0.f18355i) {
            a<?, PointF> aVar4 = this.f3219g;
            if (aVar4 instanceof n) {
                n nVar2 = (n) aVar4;
                l2.c<Float> cVar3 = nVar2.f3209n;
                nVar2.f3209n = cVar;
                return true;
            }
        }
        if (t10 == i0.f18361o) {
            a<l2.d, l2.d> aVar5 = this.f3220h;
            if (aVar5 == null) {
                this.f3220h = new r(cVar, new l2.d());
                return true;
            }
            aVar5.k(cVar);
            return true;
        }
        if (t10 == i0.f18362p) {
            a<Float, Float> aVar6 = this.f3221i;
            if (aVar6 == null) {
                this.f3221i = new r(cVar, Float.valueOf(0.0f));
                return true;
            }
            aVar6.k(cVar);
            return true;
        }
        if (t10 == i0.f18349c) {
            a<Integer, Integer> aVar7 = this.f3222j;
            if (aVar7 == null) {
                this.f3222j = new r(cVar, 100);
                return true;
            }
            aVar7.k(cVar);
            return true;
        }
        if (t10 == i0.C) {
            a<?, Float> aVar8 = this.f3225m;
            if (aVar8 == null) {
                this.f3225m = new r(cVar, Float.valueOf(100.0f));
                return true;
            }
            aVar8.k(cVar);
            return true;
        }
        if (t10 == i0.D) {
            a<?, Float> aVar9 = this.f3226n;
            if (aVar9 == null) {
                this.f3226n = new r(cVar, Float.valueOf(100.0f));
                return true;
            }
            aVar9.k(cVar);
            return true;
        }
        if (t10 == i0.f18363q) {
            if (this.f3223k == null) {
                this.f3223k = new d(Collections.singletonList(new l2.a(Float.valueOf(0.0f))));
            }
            this.f3223k.k(cVar);
            return true;
        }
        if (t10 != i0.f18364r) {
            return false;
        }
        if (this.f3224l == null) {
            this.f3224l = new d(Collections.singletonList(new l2.a(Float.valueOf(0.0f))));
        }
        this.f3224l.k(cVar);
        return true;
    }

    public final void d() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.f3217e[i10] = 0.0f;
        }
    }

    public final Matrix e() {
        PointF pointFF;
        this.f3213a.reset();
        a<?, PointF> aVar = this.f3219g;
        if (aVar != null && (pointFF = aVar.f()) != null) {
            float f10 = pointFF.x;
            if (f10 != 0.0f || pointFF.y != 0.0f) {
                this.f3213a.preTranslate(f10, pointFF.y);
            }
        }
        a<Float, Float> aVar2 = this.f3221i;
        if (aVar2 != null) {
            float fFloatValue = aVar2 instanceof r ? aVar2.f().floatValue() : ((d) aVar2).l();
            if (fFloatValue != 0.0f) {
                this.f3213a.preRotate(fFloatValue);
            }
        }
        d dVar = this.f3223k;
        if (dVar != null) {
            d dVar2 = this.f3224l;
            float fCos = dVar2 == null ? 0.0f : (float) Math.cos(Math.toRadians((-dVar2.l()) + 90.0f));
            d dVar3 = this.f3224l;
            float fSin = dVar3 == null ? 1.0f : (float) Math.sin(Math.toRadians((-dVar3.l()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(dVar.l()));
            d();
            float[] fArr = this.f3217e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f11 = -fSin;
            fArr[3] = f11;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.f3214b.setValues(fArr);
            d();
            float[] fArr2 = this.f3217e;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f3215c.setValues(fArr2);
            d();
            float[] fArr3 = this.f3217e;
            fArr3[0] = fCos;
            fArr3[1] = f11;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.f3216d.setValues(fArr3);
            this.f3215c.preConcat(this.f3214b);
            this.f3216d.preConcat(this.f3215c);
            this.f3213a.preConcat(this.f3216d);
        }
        a<l2.d, l2.d> aVar3 = this.f3220h;
        if (aVar3 != null) {
            l2.d dVarF = aVar3.f();
            float f12 = dVarF.f9916a;
            if (f12 != 1.0f || dVarF.f9917b != 1.0f) {
                this.f3213a.preScale(f12, dVarF.f9917b);
            }
        }
        a<PointF, PointF> aVar4 = this.f3218f;
        if (aVar4 != null) {
            PointF pointFF2 = aVar4.f();
            float f13 = pointFF2.x;
            if (f13 != 0.0f || pointFF2.y != 0.0f) {
                this.f3213a.preTranslate(-f13, -pointFF2.y);
            }
        }
        return this.f3213a;
    }

    public final Matrix f(float f10) {
        a<?, PointF> aVar = this.f3219g;
        PointF pointFF = aVar == null ? null : aVar.f();
        a<l2.d, l2.d> aVar2 = this.f3220h;
        l2.d dVarF = aVar2 == null ? null : aVar2.f();
        this.f3213a.reset();
        if (pointFF != null) {
            this.f3213a.preTranslate(pointFF.x * f10, pointFF.y * f10);
        }
        if (dVarF != null) {
            double d10 = f10;
            this.f3213a.preScale((float) Math.pow(dVarF.f9916a, d10), (float) Math.pow(dVarF.f9917b, d10));
        }
        a<Float, Float> aVar3 = this.f3221i;
        if (aVar3 != null) {
            float fFloatValue = aVar3.f().floatValue();
            a<PointF, PointF> aVar4 = this.f3218f;
            PointF pointFF2 = aVar4 != null ? aVar4.f() : null;
            this.f3213a.preRotate(fFloatValue * f10, pointFF2 == null ? 0.0f : pointFF2.x, pointFF2 != null ? pointFF2.y : 0.0f);
        }
        return this.f3213a;
    }
}
