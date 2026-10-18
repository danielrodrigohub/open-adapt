package b2;

import android.graphics.PointF;
import java.util.Collections;

/* JADX INFO: compiled from: SplitDimensionPathKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends a<PointF, PointF> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PointF f3204i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PointF f3205j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a<Float, Float> f3206k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final a<Float, Float> f3207l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public l2.c<Float> f3208m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public l2.c<Float> f3209n;

    public n(a<Float, Float> aVar, a<Float, Float> aVar2) {
        super(Collections.emptyList());
        this.f3204i = new PointF();
        this.f3205j = new PointF();
        this.f3206k = aVar;
        this.f3207l = aVar2;
        j(this.f3170d);
    }

    @Override // b2.a
    public final PointF f() {
        return g(null, 0.0f);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList, java.util.List<b2.a$a>] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.ArrayList, java.util.List<b2.a$a>] */
    @Override // b2.a
    public final void j(float f10) {
        this.f3206k.j(f10);
        this.f3207l.j(f10);
        this.f3204i.set(this.f3206k.f().floatValue(), this.f3207l.f().floatValue());
        for (int i10 = 0; i10 < this.f3167a.size(); i10++) {
            ((a.InterfaceC0052a) this.f3167a.get(i10)).d();
        }
    }

    @Override // b2.a
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final PointF g(l2.a<PointF> aVar, float f10) {
        Float fB;
        l2.a<Float> aVarB;
        l2.a<Float> aVarB2;
        Float fB2 = null;
        if (this.f3208m == null || (aVarB2 = this.f3206k.b()) == null) {
            fB = null;
        } else {
            float fD = this.f3206k.d();
            Float f11 = aVarB2.f9902h;
            l2.c<Float> cVar = this.f3208m;
            float f12 = aVarB2.f9901g;
            fB = cVar.b(f12, f11 == null ? f12 : f11.floatValue(), aVarB2.f9896b, aVarB2.f9897c, f10, f10, fD);
        }
        if (this.f3209n != null && (aVarB = this.f3207l.b()) != null) {
            float fD2 = this.f3207l.d();
            Float f13 = aVarB.f9902h;
            l2.c<Float> cVar2 = this.f3209n;
            float f14 = aVarB.f9901g;
            fB2 = cVar2.b(f14, f13 == null ? f14 : f13.floatValue(), aVarB.f9896b, aVarB.f9897c, f10, f10, fD2);
        }
        if (fB == null) {
            this.f3205j.set(this.f3204i.x, 0.0f);
        } else {
            this.f3205j.set(fB.floatValue(), 0.0f);
        }
        if (fB2 == null) {
            PointF pointF = this.f3205j;
            pointF.set(pointF.x, this.f3204i.y);
        } else {
            PointF pointF2 = this.f3205j;
            pointF2.set(pointF2.x, fB2.floatValue());
        }
        return this.f3205j;
    }
}
