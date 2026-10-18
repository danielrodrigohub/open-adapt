package a2;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import java.util.ArrayList;
import java.util.List;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: GradientFillContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements d, b2.a.InterfaceC0052a, j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g2.b f114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p.d<LinearGradient> f115d = new p.d<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p.d<RadialGradient> f116e = new p.d<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Path f117f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final z1.a f118g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RectF f119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<l> f120i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b2.a<f2.c, f2.c> f122k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b2.a<Integer, Integer> f123l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final b2.a<PointF, PointF> f124m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b2.a<PointF, PointF> f125n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b2.a<ColorFilter, ColorFilter> f126o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public b2.r f127p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final e0 f128q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f129r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public b2.a<Float, Float> f130s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f131t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public b2.c f132u;

    public g(e0 e0Var, g2.b bVar, f2.d dVar) {
        Path path = new Path();
        this.f117f = path;
        this.f118g = new z1.a(1);
        this.f119h = new RectF();
        this.f120i = new ArrayList();
        this.f131t = 0.0f;
        this.f114c = bVar;
        this.f112a = dVar.f6975g;
        this.f113b = dVar.f6976h;
        this.f128q = e0Var;
        this.f121j = dVar.f6969a;
        path.setFillType(dVar.f6970b);
        this.f129r = (int) (e0Var.f18305h.b() / 32.0f);
        b2.a<f2.c, f2.c> aVarA = dVar.f6971c.a();
        this.f122k = (b2.e) aVarA;
        aVarA.a(this);
        bVar.f(aVarA);
        b2.a<Integer, Integer> aVarA2 = dVar.f6972d.a();
        this.f123l = (b2.f) aVarA2;
        aVarA2.a(this);
        bVar.f(aVarA2);
        b2.a<PointF, PointF> aVarA3 = dVar.f6973e.a();
        this.f124m = (b2.k) aVarA3;
        aVarA3.a(this);
        bVar.f(aVarA3);
        b2.a<PointF, PointF> aVarA4 = dVar.f6974f.a();
        this.f125n = (b2.k) aVarA4;
        aVarA4.a(this);
        bVar.f(aVarA4);
        if (bVar.m() != null) {
            b2.a<Float, Float> aVarA5 = ((e2.b) bVar.m().f6888h).a();
            this.f130s = aVarA5;
            aVarA5.a(this);
            bVar.f(this.f130s);
        }
        if (bVar.o() != null) {
            this.f132u = new b2.c(this, bVar, bVar.o());
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<a2.l>] */
    @Override // a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f117f.reset();
        for (int i10 = 0; i10 < this.f120i.size(); i10++) {
            this.f117f.addPath(((l) this.f120i.get(i10)).a(), matrix);
        }
        this.f117f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f128q.invalidateSelf();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<a2.l>] */
    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            b bVar = list2.get(i10);
            if (bVar instanceof l) {
                this.f120i.add((l) bVar);
            }
        }
    }

    public final int[] f(int[] iArr) {
        b2.r rVar = this.f127p;
        if (rVar != null) {
            Integer[] numArr = (Integer[]) rVar.f();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        b2.c cVar2;
        b2.c cVar3;
        b2.c cVar4;
        b2.c cVar5;
        b2.c cVar6;
        if (t10 == i0.f18350d) {
            this.f123l.k(cVar);
            return;
        }
        if (t10 == i0.K) {
            b2.a<ColorFilter, ColorFilter> aVar = this.f126o;
            if (aVar != null) {
                this.f114c.s(aVar);
            }
            if (cVar == null) {
                this.f126o = null;
                return;
            }
            b2.r rVar = new b2.r(cVar, null);
            this.f126o = rVar;
            rVar.a(this);
            this.f114c.f(this.f126o);
            return;
        }
        if (t10 == i0.L) {
            b2.r rVar2 = this.f127p;
            if (rVar2 != null) {
                this.f114c.s(rVar2);
            }
            if (cVar == null) {
                this.f127p = null;
                return;
            }
            this.f115d.a();
            this.f116e.a();
            b2.r rVar3 = new b2.r(cVar, null);
            this.f127p = rVar3;
            rVar3.a(this);
            this.f114c.f(this.f127p);
            return;
        }
        if (t10 == i0.f18356j) {
            b2.a<Float, Float> aVar2 = this.f130s;
            if (aVar2 != null) {
                aVar2.k(cVar);
                return;
            }
            b2.r rVar4 = new b2.r(cVar, null);
            this.f130s = rVar4;
            rVar4.a(this);
            this.f114c.f(this.f130s);
            return;
        }
        if (t10 == i0.f18351e && (cVar6 = this.f132u) != null) {
            cVar6.b(cVar);
            return;
        }
        if (t10 == i0.G && (cVar5 = this.f132u) != null) {
            cVar5.f(cVar);
            return;
        }
        if (t10 == i0.H && (cVar4 = this.f132u) != null) {
            cVar4.c(cVar);
            return;
        }
        if (t10 == i0.I && (cVar3 = this.f132u) != null) {
            cVar3.e(cVar);
        } else {
            if (t10 != i0.J || (cVar2 = this.f132u) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f112a;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0092 A[PHI: r2
      0x0092: PHI (r2v12 android.graphics.Shader) = (r2v6 android.graphics.RadialGradient), (r2v23 android.graphics.LinearGradient) binds: [B:16:0x0090, B:12:0x0047] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // a2.d
    public final void h(Canvas canvas, Matrix matrix, int i10) {
        RadialGradient radialGradientD;
        Shader radialGradient;
        if (this.f113b) {
            return;
        }
        this.f117f.reset();
        for (int i11 = 0; i11 < this.f120i.size(); i11++) {
            this.f117f.addPath(((l) this.f120i.get(i11)).a(), matrix);
        }
        this.f117f.computeBounds(this.f119h, false);
        if (this.f121j == 1) {
            long j10 = j();
            radialGradientD = this.f115d.d(j10, null);
            if (radialGradientD != null) {
                radialGradient = radialGradientD;
            } else {
                PointF pointFF = this.f124m.f();
                PointF pointFF2 = this.f125n.f();
                f2.c cVarF = this.f122k.f();
                LinearGradient linearGradient = new LinearGradient(pointFF.x, pointFF.y, pointFF2.x, pointFF2.y, f(cVarF.f6968b), cVarF.f6967a, Shader.TileMode.CLAMP);
                this.f115d.f(j10, linearGradient);
                radialGradient = linearGradient;
            }
        } else {
            long j11 = j();
            radialGradientD = this.f116e.d(j11, null);
            if (radialGradientD != null) {
                radialGradient = radialGradientD;
            } else {
                PointF pointFF3 = this.f124m.f();
                PointF pointFF4 = this.f125n.f();
                f2.c cVarF2 = this.f122k.f();
                int[] iArrF = f(cVarF2.f6968b);
                float[] fArr = cVarF2.f6967a;
                float f10 = pointFF3.x;
                float f11 = pointFF3.y;
                float fHypot = (float) Math.hypot(pointFF4.x - f10, pointFF4.y - f11);
                if (fHypot <= 0.0f) {
                    fHypot = 0.001f;
                }
                radialGradient = new RadialGradient(f10, f11, fHypot, iArrF, fArr, Shader.TileMode.CLAMP);
                this.f116e.f(j11, radialGradient);
            }
        }
        radialGradient.setLocalMatrix(matrix);
        this.f118g.setShader(radialGradient);
        b2.a<ColorFilter, ColorFilter> aVar = this.f126o;
        if (aVar != null) {
            this.f118g.setColorFilter(aVar.f());
        }
        b2.a<Float, Float> aVar2 = this.f130s;
        if (aVar2 != null) {
            float fFloatValue = aVar2.f().floatValue();
            if (fFloatValue == 0.0f) {
                this.f118g.setMaskFilter(null);
            } else if (fFloatValue != this.f131t) {
                this.f118g.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f131t = fFloatValue;
        }
        b2.c cVar = this.f132u;
        if (cVar != null) {
            cVar.a(this.f118g);
        }
        this.f118g.setAlpha(k2.f.c((int) ((((i10 / 255.0f) * this.f123l.f().intValue()) / 100.0f) * 255.0f)));
        canvas.drawPath(this.f117f, this.f118g);
        p4.h.p();
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        k2.f.f(eVar, i10, list, eVar2, this);
    }

    public final int j() {
        int iRound = Math.round(this.f124m.f3170d * this.f129r);
        int iRound2 = Math.round(this.f125n.f3170d * this.f129r);
        int iRound3 = Math.round(this.f122k.f3170d * this.f129r);
        int i10 = iRound != 0 ? iRound * 527 : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }
}
