package a2;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: RectangleContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements b2.a.InterfaceC0052a, j, l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e0 f166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b2.a<?, PointF> f167f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b2.a<?, PointF> f168g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b2.a<?, Float> f169h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f172k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f162a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RectF f163b = new RectF();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final g1.i f170i = new g1.i();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public b2.a<Float, Float> f171j = null;

    public n(e0 e0Var, g2.b bVar, f2.i iVar) {
        this.f164c = iVar.f7008a;
        this.f165d = iVar.f7012e;
        this.f166e = e0Var;
        b2.a<PointF, PointF> aVarA = iVar.f7009b.a();
        this.f167f = aVarA;
        b2.a<PointF, PointF> aVarA2 = iVar.f7010c.a();
        this.f168g = aVarA2;
        b2.a<?, ?> aVarA3 = iVar.f7011d.a();
        this.f169h = (b2.d) aVarA3;
        bVar.f(aVarA);
        bVar.f(aVarA2);
        bVar.f(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [b2.a<?, java.lang.Float>, b2.d] */
    @Override // a2.l
    public final Path a() {
        b2.a<Float, Float> aVar;
        if (this.f172k) {
            return this.f162a;
        }
        this.f162a.reset();
        if (this.f165d) {
            this.f172k = true;
            return this.f162a;
        }
        PointF pointFF = this.f168g.f();
        float f10 = pointFF.x / 2.0f;
        float f11 = pointFF.y / 2.0f;
        ?? r10 = this.f169h;
        float fL = r10 == 0 ? 0.0f : r10.l();
        if (fL == 0.0f && (aVar = this.f171j) != null) {
            fL = Math.min(aVar.f().floatValue(), Math.min(f10, f11));
        }
        float fMin = Math.min(f10, f11);
        if (fL > fMin) {
            fL = fMin;
        }
        PointF pointFF2 = this.f167f.f();
        this.f162a.moveTo(pointFF2.x + f10, (pointFF2.y - f11) + fL);
        this.f162a.lineTo(pointFF2.x + f10, (pointFF2.y + f11) - fL);
        if (fL > 0.0f) {
            RectF rectF = this.f163b;
            float f12 = pointFF2.x + f10;
            float f13 = fL * 2.0f;
            float f14 = pointFF2.y + f11;
            rectF.set(f12 - f13, f14 - f13, f12, f14);
            this.f162a.arcTo(this.f163b, 0.0f, 90.0f, false);
        }
        this.f162a.lineTo((pointFF2.x - f10) + fL, pointFF2.y + f11);
        if (fL > 0.0f) {
            RectF rectF2 = this.f163b;
            float f15 = pointFF2.x - f10;
            float f16 = pointFF2.y + f11;
            float f17 = fL * 2.0f;
            rectF2.set(f15, f16 - f17, f17 + f15, f16);
            this.f162a.arcTo(this.f163b, 90.0f, 90.0f, false);
        }
        this.f162a.lineTo(pointFF2.x - f10, (pointFF2.y - f11) + fL);
        if (fL > 0.0f) {
            RectF rectF3 = this.f163b;
            float f18 = pointFF2.x - f10;
            float f19 = pointFF2.y - f11;
            float f20 = fL * 2.0f;
            rectF3.set(f18, f19, f18 + f20, f20 + f19);
            this.f162a.arcTo(this.f163b, 180.0f, 90.0f, false);
        }
        this.f162a.lineTo((pointFF2.x + f10) - fL, pointFF2.y - f11);
        if (fL > 0.0f) {
            RectF rectF4 = this.f163b;
            float f21 = pointFF2.x + f10;
            float f22 = fL * 2.0f;
            float f23 = pointFF2.y - f11;
            rectF4.set(f21 - f22, f23, f21, f22 + f23);
            this.f162a.arcTo(this.f163b, 270.0f, 90.0f, false);
        }
        this.f162a.close();
        this.f170i.b(this.f162a);
        this.f172k = true;
        return this.f162a;
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f172k = false;
        this.f166e.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    /* JADX WARN: Code duplicated, block: B:18:0x002f A[SYNTHETIC] */
    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i10 >= arrayList.size()) {
                return;
            }
            b bVar = (b) arrayList.get(i10);
            if (bVar instanceof t) {
                t tVar = (t) bVar;
                if (tVar.f199c == 1) {
                    this.f170i.a(tVar);
                    tVar.f(this);
                } else if (bVar instanceof p) {
                    this.f171j = ((p) bVar).f184b;
                }
            } else if (bVar instanceof p) {
                this.f171j = ((p) bVar).f184b;
            }
            i10++;
        }
    }

    @Override // d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        if (t10 == i0.f18358l) {
            this.f168g.k(cVar);
        } else if (t10 == i0.f18360n) {
            this.f167f.k(cVar);
        } else if (t10 == i0.f18359m) {
            this.f169h.k(cVar);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f164c;
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        k2.f.f(eVar, i10, list, eVar2, this);
    }
}
