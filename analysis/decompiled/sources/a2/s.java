package a2;

import android.graphics.ColorFilter;
import android.graphics.Paint;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: StrokeContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class s extends a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final g2.b f192r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String f193s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f194t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final b2.a<Integer, Integer> f195u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public b2.a<ColorFilter, ColorFilter> f196v;

    /* JADX WARN: Illegal instructions before constructor call */
    public s(e0 e0Var, g2.b bVar, f2.p pVar) {
        int iA = q.g.a(pVar.f7042g);
        super(e0Var, bVar, iA != 0 ? iA != 1 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT, androidx.recyclerview.widget.d.a(pVar.f7043h), pVar.f7044i, pVar.f7040e, pVar.f7041f, pVar.f7038c, pVar.f7037b);
        this.f192r = bVar;
        this.f193s = pVar.f7036a;
        this.f194t = pVar.f7045j;
        b2.a<Integer, Integer> aVarA = pVar.f7039d.a();
        this.f195u = (b2.b) aVarA;
        aVarA.a(this);
        bVar.f(aVarA);
    }

    @Override // a2.a, d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        super.g(t10, cVar);
        if (t10 == i0.f18348b) {
            this.f195u.k(cVar);
            return;
        }
        if (t10 == i0.K) {
            b2.a<ColorFilter, ColorFilter> aVar = this.f196v;
            if (aVar != null) {
                this.f192r.s(aVar);
            }
            if (cVar == null) {
                this.f196v = null;
                return;
            }
            b2.r rVar = new b2.r(cVar, null);
            this.f196v = rVar;
            rVar.a(this);
            this.f192r.f(this.f195u);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f193s;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [b2.a, b2.a<java.lang.Integer, java.lang.Integer>, b2.b] */
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
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r2v1 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    @Override // a2.a, a2.d
    public final void h(android.graphics.Canvas r5, android.graphics.Matrix r6, int r7) {
        /*
            r4 = this;
            boolean r0 = r4.f194t
            if (r0 == 0) goto L5
            return
        L5:
            z1.a r0 = r4.f69i
            b2.a<java.lang.Integer, java.lang.Integer> r1 = r4.f195u
            l2.a r2 = r1.b()
            float r3 = r1.d()
            int r1 = r1.l(r2, r3)
            r0.setColor(r1)
            b2.a<android.graphics.ColorFilter, android.graphics.ColorFilter> r0 = r4.f196v
            if (r0 == 0) goto L27
            z1.a r1 = r4.f69i
            java.lang.Object r0 = r0.f()
            android.graphics.ColorFilter r0 = (android.graphics.ColorFilter) r0
            r1.setColorFilter(r0)
        L27:
            super.h(r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.s.h(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }
}
