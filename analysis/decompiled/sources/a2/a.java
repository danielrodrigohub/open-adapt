package a2;

import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: BaseStrokeContent.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements b2.a.InterfaceC0052a, j, d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e0 f65e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final g2.b f66f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f68h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final z1.a f69i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b2.a<?, Float> f70j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b2.a<?, Integer> f71k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<b2.a<?, Float>> f72l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final b2.a<?, Float> f73m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public b2.a<ColorFilter, ColorFilter> f74n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b2.a<Float, Float> f75o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f76p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public b2.c f77q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PathMeasure f61a = new PathMeasure();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f62b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f63c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RectF f64d = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<C0002a> f67g = new ArrayList();

    /* JADX INFO: renamed from: a2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BaseStrokeContent.java */
    public static final class C0002a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<l> f78a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final t f79b;

        public C0002a(t tVar) {
            this.f79b = tVar;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public a(e0 e0Var, g2.b bVar, Paint.Cap cap, Paint.Join join, float f10, e2.d dVar, e2.b bVar2, List<e2.b> list, e2.b bVar3) {
        z1.a aVar = new z1.a(1);
        this.f69i = aVar;
        this.f76p = 0.0f;
        this.f65e = e0Var;
        this.f66f = bVar;
        aVar.setStyle(Paint.Style.STROKE);
        aVar.setStrokeCap(cap);
        aVar.setStrokeJoin(join);
        aVar.setStrokeMiter(f10);
        this.f71k = (b2.f) dVar.a();
        this.f70j = (b2.d) bVar2.a();
        if (bVar3 == null) {
            this.f73m = null;
        } else {
            this.f73m = (b2.d) bVar3.a();
        }
        this.f72l = new ArrayList(list.size());
        this.f68h = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f72l.add(list.get(i10).a());
        }
        bVar.f(this.f71k);
        bVar.f(this.f70j);
        for (int i11 = 0; i11 < this.f72l.size(); i11++) {
            bVar.f(this.f72l.get(i11));
        }
        b2.a<?, Float> aVar2 = this.f73m;
        if (aVar2 != null) {
            bVar.f(aVar2);
        }
        this.f71k.a(this);
        this.f70j.a(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.f72l.get(i12).a(this);
        }
        b2.a<?, Float> aVar3 = this.f73m;
        if (aVar3 != null) {
            aVar3.a(this);
        }
        if (bVar.m() != null) {
            b2.a<Float, Float> aVarA = ((e2.b) bVar.m().f6888h).a();
            this.f75o = aVarA;
            aVarA.a(this);
            bVar.f(this.f75o);
        }
        if (bVar.o() != null) {
            this.f77q = new b2.c(this, bVar, bVar.o());
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<a2.a$a>] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.ArrayList, java.util.List<a2.a$a>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r7v2, types: [b2.a<?, java.lang.Float>, b2.d] */
    @Override // a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f62b.reset();
        for (int i10 = 0; i10 < this.f67g.size(); i10++) {
            C0002a c0002a = (C0002a) this.f67g.get(i10);
            for (int i11 = 0; i11 < c0002a.f78a.size(); i11++) {
                this.f62b.addPath(((l) c0002a.f78a.get(i11)).a(), matrix);
            }
        }
        this.f62b.computeBounds(this.f64d, false);
        float fL = this.f70j.l();
        RectF rectF2 = this.f64d;
        float f10 = fL / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f64d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        p4.h.p();
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f65e.invalidateSelf();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<a2.a$a>] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.ArrayList, java.util.List<a2.a$a>] */
    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        ArrayList arrayList = (ArrayList) list;
        C0002a c0002a = null;
        t tVar = null;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            b bVar = (b) arrayList.get(size);
            if (bVar instanceof t) {
                t tVar2 = (t) bVar;
                if (tVar2.f199c == 2) {
                    tVar = tVar2;
                }
            }
        }
        if (tVar != null) {
            tVar.f(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            b bVar2 = list2.get(size2);
            if (bVar2 instanceof t) {
                t tVar3 = (t) bVar2;
                if (tVar3.f199c == 2) {
                    if (c0002a != null) {
                        this.f67g.add(c0002a);
                    }
                    C0002a c0002a2 = new C0002a(tVar3);
                    tVar3.f(this);
                    c0002a = c0002a2;
                }
            }
            if (bVar2 instanceof l) {
                if (c0002a == null) {
                    c0002a = new C0002a(tVar);
                }
                c0002a.f78a.add((l) bVar2);
            }
        }
        if (c0002a != null) {
            this.f67g.add(c0002a);
        }
    }

    @Override // d2.f
    public <T> void g(T t10, l2.c<T> cVar) {
        b2.c cVar2;
        b2.c cVar3;
        b2.c cVar4;
        b2.c cVar5;
        b2.c cVar6;
        if (t10 == i0.f18350d) {
            this.f71k.k(cVar);
            return;
        }
        if (t10 == i0.f18365s) {
            this.f70j.k(cVar);
            return;
        }
        if (t10 == i0.K) {
            b2.a<ColorFilter, ColorFilter> aVar = this.f74n;
            if (aVar != null) {
                this.f66f.s(aVar);
            }
            if (cVar == null) {
                this.f74n = null;
                return;
            }
            b2.r rVar = new b2.r(cVar, null);
            this.f74n = rVar;
            rVar.a(this);
            this.f66f.f(this.f74n);
            return;
        }
        if (t10 == i0.f18356j) {
            b2.a<Float, Float> aVar2 = this.f75o;
            if (aVar2 != null) {
                aVar2.k(cVar);
                return;
            }
            b2.r rVar2 = new b2.r(cVar, null);
            this.f75o = rVar2;
            rVar2.a(this);
            this.f66f.f(this.f75o);
            return;
        }
        if (t10 == i0.f18351e && (cVar6 = this.f77q) != null) {
            cVar6.b(cVar);
            return;
        }
        if (t10 == i0.G && (cVar5 = this.f77q) != null) {
            cVar5.f(cVar);
            return;
        }
        if (t10 == i0.H && (cVar4 = this.f77q) != null) {
            cVar4.c(cVar);
            return;
        }
        if (t10 == i0.I && (cVar3 = this.f77q) != null) {
            cVar3.e(cVar);
        } else {
            if (t10 != i0.J || (cVar2 = this.f77q) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.ArrayList, java.util.List<b2.a<?, java.lang.Float>>] */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.ArrayList, java.util.List<b2.a<?, java.lang.Float>>] */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r12v15, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.util.ArrayList, java.util.List<b2.a<?, java.lang.Float>>] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r7v5, types: [b2.a<?, java.lang.Float>, b2.d] */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r8v2, types: [b2.a, b2.a<?, java.lang.Integer>, b2.f] */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r9v15, types: [java.util.ArrayList, java.util.List<a2.a$a>] */
    /* JADX WARN: Type inference failed for: r9v17, types: [java.util.ArrayList, java.util.List<a2.a$a>] */
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
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v29 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    @Override // a2.d
    public void h(android.graphics.Canvas r18, android.graphics.Matrix r19, int r20) {
        /*
            Method dump skipped, instruction units count: 707
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.a.h(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        k2.f.f(eVar, i10, list, eVar2, this);
    }
}
