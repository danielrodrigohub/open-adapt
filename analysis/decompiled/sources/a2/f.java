package a2;

import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: FillContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements d, b2.a.InterfaceC0052a, j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f99a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z1.a f100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g2.b f101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<l> f104f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b2.a<Integer, Integer> f105g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b2.a<Integer, Integer> f106h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public b2.a<ColorFilter, ColorFilter> f107i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final e0 f108j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public b2.a<Float, Float> f109k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f110l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b2.c f111m;

    public f(e0 e0Var, g2.b bVar, f2.m mVar) {
        Path path = new Path();
        this.f99a = path;
        this.f100b = new z1.a(1);
        this.f104f = new ArrayList();
        this.f101c = bVar;
        this.f102d = mVar.f7025c;
        this.f103e = mVar.f7028f;
        this.f108j = e0Var;
        if (bVar.m() != null) {
            b2.a<Float, Float> aVarA = ((e2.b) bVar.m().f6888h).a();
            this.f109k = aVarA;
            aVarA.a(this);
            bVar.f(this.f109k);
        }
        if (bVar.o() != null) {
            this.f111m = new b2.c(this, bVar, bVar.o());
        }
        if (mVar.f7026d == null || mVar.f7027e == null) {
            this.f105g = null;
            this.f106h = null;
            return;
        }
        path.setFillType(mVar.f7024b);
        b2.a<Integer, Integer> aVarA2 = mVar.f7026d.a();
        this.f105g = (b2.b) aVarA2;
        aVarA2.a(this);
        bVar.f(aVarA2);
        b2.a<Integer, Integer> aVarA3 = mVar.f7027e.a();
        this.f106h = (b2.f) aVarA3;
        aVarA3.a(this);
        bVar.f(aVarA3);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<a2.l>] */
    @Override // a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f99a.reset();
        for (int i10 = 0; i10 < this.f104f.size(); i10++) {
            this.f99a.addPath(((l) this.f104f.get(i10)).a(), matrix);
        }
        this.f99a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f108j.invalidateSelf();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<a2.l>] */
    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            b bVar = list2.get(i10);
            if (bVar instanceof l) {
                this.f104f.add((l) bVar);
            }
        }
    }

    @Override // d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        b2.c cVar2;
        b2.c cVar3;
        b2.c cVar4;
        b2.c cVar5;
        b2.c cVar6;
        if (t10 == i0.f18347a) {
            this.f105g.k(cVar);
            return;
        }
        if (t10 == i0.f18350d) {
            this.f106h.k(cVar);
            return;
        }
        if (t10 == i0.K) {
            b2.a<ColorFilter, ColorFilter> aVar = this.f107i;
            if (aVar != null) {
                this.f101c.s(aVar);
            }
            if (cVar == null) {
                this.f107i = null;
                return;
            }
            b2.r rVar = new b2.r(cVar, null);
            this.f107i = rVar;
            rVar.a(this);
            this.f101c.f(this.f107i);
            return;
        }
        if (t10 == i0.f18356j) {
            b2.a<Float, Float> aVar2 = this.f109k;
            if (aVar2 != null) {
                aVar2.k(cVar);
                return;
            }
            b2.r rVar2 = new b2.r(cVar, null);
            this.f109k = rVar2;
            rVar2.a(this);
            this.f101c.f(this.f109k);
            return;
        }
        if (t10 == i0.f18351e && (cVar6 = this.f111m) != null) {
            cVar6.b(cVar);
            return;
        }
        if (t10 == i0.G && (cVar5 = this.f111m) != null) {
            cVar5.f(cVar);
            return;
        }
        if (t10 == i0.H && (cVar4 = this.f111m) != null) {
            cVar4.c(cVar);
            return;
        }
        if (t10 == i0.I && (cVar3 = this.f111m) != null) {
            cVar3.e(cVar);
        } else {
            if (t10 != i0.J || (cVar2 = this.f111m) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f102d;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [b2.a, b2.a<java.lang.Integer, java.lang.Integer>, b2.b] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r7v14, types: [java.util.ArrayList, java.util.List<a2.l>] */
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
    /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r1v4 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    @Override // a2.d
    public final void h(android.graphics.Canvas r5, android.graphics.Matrix r6, int r7) {
        /*
            r4 = this;
            boolean r0 = r4.f103e
            if (r0 == 0) goto L5
            return
        L5:
            b2.a<java.lang.Integer, java.lang.Integer> r0 = r4.f105g
            l2.a r1 = r0.b()
            float r2 = r0.d()
            int r0 = r0.l(r1, r2)
            float r7 = (float) r7
            r1 = 1132396544(0x437f0000, float:255.0)
            float r7 = r7 / r1
            b2.a<java.lang.Integer, java.lang.Integer> r2 = r4.f106h
            java.lang.Object r2 = r2.f()
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            float r2 = (float) r2
            float r7 = r7 * r2
            r2 = 1120403456(0x42c80000, float:100.0)
            float r7 = r7 / r2
            float r7 = r7 * r1
            int r7 = (int) r7
            z1.a r1 = r4.f100b
            r2 = 0
            int r7 = k2.f.c(r7)
            int r7 = r7 << 24
            r3 = 16777215(0xffffff, float:2.3509886E-38)
            r0 = r0 & r3
            r7 = r7 | r0
            r1.setColor(r7)
            b2.a<android.graphics.ColorFilter, android.graphics.ColorFilter> r7 = r4.f107i
            if (r7 == 0) goto L4a
            z1.a r0 = r4.f100b
            java.lang.Object r7 = r7.f()
            android.graphics.ColorFilter r7 = (android.graphics.ColorFilter) r7
            r0.setColorFilter(r7)
        L4a:
            b2.a<java.lang.Float, java.lang.Float> r7 = r4.f109k
            if (r7 == 0) goto L77
            java.lang.Object r7 = r7.f()
            java.lang.Float r7 = (java.lang.Float) r7
            float r7 = r7.floatValue()
            r0 = 0
            int r0 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r0 != 0) goto L64
            z1.a r0 = r4.f100b
            r1 = 0
            r0.setMaskFilter(r1)
            goto L75
        L64:
            float r0 = r4.f110l
            int r0 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r0 == 0) goto L75
            g2.b r0 = r4.f101c
            android.graphics.BlurMaskFilter r0 = r0.n(r7)
            z1.a r1 = r4.f100b
            r1.setMaskFilter(r0)
        L75:
            r4.f110l = r7
        L77:
            b2.c r7 = r4.f111m
            if (r7 == 0) goto L80
            z1.a r0 = r4.f100b
            r7.a(r0)
        L80:
            android.graphics.Path r7 = r4.f99a
            r7.reset()
        L85:
            java.util.List<a2.l> r7 = r4.f104f
            int r7 = r7.size()
            if (r2 >= r7) goto La1
            android.graphics.Path r7 = r4.f99a
            java.util.List<a2.l> r0 = r4.f104f
            java.lang.Object r0 = r0.get(r2)
            a2.l r0 = (a2.l) r0
            android.graphics.Path r0 = r0.a()
            r7.addPath(r0, r6)
            int r2 = r2 + 1
            goto L85
        La1:
            android.graphics.Path r6 = r4.f99a
            z1.a r7 = r4.f100b
            r5.drawPath(r6, r7)
            p4.h.p()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.f.h(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        k2.f.f(eVar, i10, list, eVar2, this);
    }
}
