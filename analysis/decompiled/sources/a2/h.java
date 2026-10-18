package a2;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: GradientStrokeContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends a {
    public final b2.a<PointF, PointF> A;
    public b2.r B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f133r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f134s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final p.d<LinearGradient> f135t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final p.d<RadialGradient> f136u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final RectF f137v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f138w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f139x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final b2.a<f2.c, f2.c> f140y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final b2.a<PointF, PointF> f141z;

    /* JADX WARN: Illegal instructions before constructor call */
    public h(e0 e0Var, g2.b bVar, f2.e eVar) {
        int iA = q.g.a(eVar.f6984h);
        super(e0Var, bVar, iA != 0 ? iA != 1 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT, androidx.recyclerview.widget.d.a(eVar.f6985i), eVar.f6986j, eVar.f6980d, eVar.f6983g, eVar.f6987k, eVar.f6988l);
        this.f135t = new p.d<>();
        this.f136u = new p.d<>();
        this.f137v = new RectF();
        this.f133r = eVar.f6977a;
        this.f138w = eVar.f6978b;
        this.f134s = eVar.f6989m;
        this.f139x = (int) (e0Var.f18305h.b() / 32.0f);
        b2.a<f2.c, f2.c> aVarA = eVar.f6979c.a();
        this.f140y = (b2.e) aVarA;
        aVarA.a(this);
        bVar.f(aVarA);
        b2.a<PointF, PointF> aVarA2 = eVar.f6981e.a();
        this.f141z = (b2.k) aVarA2;
        aVarA2.a(this);
        bVar.f(aVarA2);
        b2.a<PointF, PointF> aVarA3 = eVar.f6982f.a();
        this.A = (b2.k) aVarA3;
        aVarA3.a(this);
        bVar.f(aVarA3);
    }

    public final int[] f(int[] iArr) {
        b2.r rVar = this.B;
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
    @Override // a2.a, d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        super.g(t10, cVar);
        if (t10 == i0.L) {
            b2.r rVar = this.B;
            if (rVar != null) {
                this.f66f.s(rVar);
            }
            if (cVar == null) {
                this.B = null;
                return;
            }
            b2.r rVar2 = new b2.r(cVar, null);
            this.B = rVar2;
            rVar2.a(this);
            this.f66f.f(this.B);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f133r;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    @Override // a2.a, a2.d
    public final void h(Canvas canvas, Matrix matrix, int i10) {
        RadialGradient radialGradientD;
        if (this.f134s) {
            return;
        }
        b(this.f137v, matrix, false);
        if (this.f138w == 1) {
            long j10 = j();
            radialGradientD = this.f135t.d(j10, null);
            if (radialGradientD == null) {
                PointF pointFF = this.f141z.f();
                PointF pointFF2 = this.A.f();
                f2.c cVarF = this.f140y.f();
                radialGradientD = new LinearGradient(pointFF.x, pointFF.y, pointFF2.x, pointFF2.y, f(cVarF.f6968b), cVarF.f6967a, Shader.TileMode.CLAMP);
                this.f135t.f(j10, radialGradientD);
            }
        } else {
            long j11 = j();
            radialGradientD = this.f136u.d(j11, null);
            if (radialGradientD == null) {
                PointF pointFF3 = this.f141z.f();
                PointF pointFF4 = this.A.f();
                f2.c cVarF2 = this.f140y.f();
                int[] iArrF = f(cVarF2.f6968b);
                float[] fArr = cVarF2.f6967a;
                float f10 = pointFF3.x;
                float f11 = pointFF3.y;
                radialGradientD = new RadialGradient(f10, f11, (float) Math.hypot(pointFF4.x - f10, pointFF4.y - f11), iArrF, fArr, Shader.TileMode.CLAMP);
                this.f136u.f(j11, radialGradientD);
            }
        }
        radialGradientD.setLocalMatrix(matrix);
        this.f69i.setShader(radialGradientD);
        super.h(canvas, matrix, i10);
    }

    public final int j() {
        int iRound = Math.round(this.f141z.f3170d * this.f139x);
        int iRound2 = Math.round(this.A.f3170d * this.f139x);
        int iRound3 = Math.round(this.f140y.f3170d * this.f139x);
        int i10 = iRound != 0 ? iRound * 527 : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }
}
