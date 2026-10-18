package g2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import b2.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: CompositionLayer.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends b {
    public b2.a<Float, Float> D;
    public final List<b> E;
    public final RectF F;
    public final RectF G;
    public final Paint H;
    public boolean I;

    /* JADX WARN: Type inference failed for: r8v5, types: [java.util.ArrayList, java.util.List<g2.b>] */
    public c(e0 e0Var, f fVar, List<f> list, y1.i iVar) {
        int i10;
        b bVar;
        b cVar;
        super(e0Var, fVar);
        this.E = new ArrayList();
        this.F = new RectF();
        this.G = new RectF();
        this.H = new Paint();
        this.I = true;
        e2.b bVar2 = fVar.f7606s;
        if (bVar2 != null) {
            b2.a<Float, Float> aVarA = bVar2.a();
            this.D = aVarA;
            f(aVarA);
            this.D.a(this);
        } else {
            this.D = null;
        }
        p.d dVar = new p.d(iVar.f18340i.size());
        int size = list.size() - 1;
        b bVar3 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            f fVar2 = list.get(size);
            int iA = q.g.a(fVar2.f7592e);
            if (iA == 0) {
                cVar = new c(e0Var, fVar2, iVar.f18334c.get(fVar2.f7594g), iVar);
            } else if (iA == 1) {
                cVar = new i(e0Var, fVar2);
            } else if (iA == 2) {
                cVar = new d(e0Var, fVar2);
            } else if (iA == 3) {
                cVar = new g(e0Var, fVar2);
            } else if (iA == 4) {
                cVar = new h(e0Var, fVar2, this);
            } else if (iA != 5) {
                StringBuilder sbC = a0.b.c("Unknown layer type ");
                sbC.append(e.c(fVar2.f7592e));
                k2.c.b(sbC.toString());
                cVar = null;
            } else {
                cVar = new j(e0Var, fVar2);
            }
            if (cVar != null) {
                dVar.f(cVar.f7578q.f7591d, cVar);
                if (bVar3 != null) {
                    bVar3.f7581t = cVar;
                    bVar3 = null;
                } else {
                    this.E.add(0, cVar);
                    int iA2 = q.g.a(fVar2.f7608u);
                    if (iA2 == 1 || iA2 == 2) {
                        bVar3 = cVar;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < dVar.g(); i10++) {
            b bVar4 = (b) dVar.d(dVar.e(i10), null);
            if (bVar4 != null && (bVar = (b) dVar.d(bVar4.f7578q.f7593f, null)) != null) {
                bVar4.f7582u = bVar;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<g2.b>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.ArrayList, java.util.List<g2.b>] */
    @Override // g2.b, a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        for (int size = this.E.size() - 1; size >= 0; size--) {
            this.F.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((b) this.E.get(size)).b(this.F, this.f7576o, true);
            rectF.union(this.F);
        }
    }

    @Override // g2.b, d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        super.g(t10, cVar);
        if (t10 == i0.E) {
            if (cVar == null) {
                b2.a<Float, Float> aVar = this.D;
                if (aVar != null) {
                    aVar.k(null);
                    return;
                }
                return;
            }
            r rVar = new r(cVar, null);
            this.D = rVar;
            rVar.a(this);
            f(this.D);
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [java.util.ArrayList, java.util.List<g2.b>] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList, java.util.List<g2.b>] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.ArrayList, java.util.List<g2.b>] */
    @Override // g2.b
    public final void l(Canvas canvas, Matrix matrix, int i10) {
        RectF rectF = this.G;
        f fVar = this.f7578q;
        rectF.set(0.0f, 0.0f, fVar.f7602o, fVar.f7603p);
        matrix.mapRect(this.G);
        boolean z10 = this.f7577p.A && this.E.size() > 1 && i10 != 255;
        if (z10) {
            this.H.setAlpha(i10);
            RectF rectF2 = this.G;
            Paint paint = this.H;
            ThreadLocal<PathMeasure> threadLocal = k2.g.f9638a;
            canvas.saveLayer(rectF2, paint);
            p4.h.p();
        } else {
            canvas.save();
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.E.size() - 1; size >= 0; size--) {
            if (((!this.I && "__container".equals(this.f7578q.f7590c)) || this.G.isEmpty()) ? true : canvas.clipRect(this.G)) {
                ((b) this.E.get(size)).h(canvas, matrix, i10);
            }
        }
        canvas.restore();
        p4.h.p();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<g2.b>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<g2.b>] */
    @Override // g2.b
    public final void t(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        for (int i11 = 0; i11 < this.E.size(); i11++) {
            ((b) this.E.get(i11)).i(eVar, i10, list, eVar2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<g2.b>] */
    @Override // g2.b
    public final void u(boolean z10) {
        if (z10 && this.A == null) {
            this.A = new z1.a();
        }
        this.f7587z = z10;
        Iterator it = this.E.iterator();
        while (it.hasNext()) {
            ((b) it.next()).u(z10);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<g2.b>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<g2.b>] */
    @Override // g2.b
    public final void v(float f10) {
        super.v(f10);
        b2.a<Float, Float> aVar = this.D;
        if (aVar != null) {
            y1.i iVar = this.f7577p.f18305h;
            f10 = ((aVar.f().floatValue() * this.f7578q.f7589b.f18344m) - this.f7578q.f7589b.f18342k) / ((iVar.f18343l - iVar.f18342k) + 0.01f);
        }
        if (this.D == null) {
            f fVar = this.f7578q;
            float f11 = fVar.f7601n;
            y1.i iVar2 = fVar.f7589b;
            f10 -= f11 / (iVar2.f18343l - iVar2.f18342k);
        }
        f fVar2 = this.f7578q;
        if (fVar2.f7600m != 0.0f && !"__container".equals(fVar2.f7590c)) {
            f10 /= this.f7578q.f7600m;
        }
        int size = this.E.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((b) this.E.get(size)).v(f10);
            }
        }
    }
}
