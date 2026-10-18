package b2;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: compiled from: ShapeKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class m extends a<f2.l, Path> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f2.l f3201i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Path f3202j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List<a2.r> f3203k;

    public m(List<l2.a<f2.l>> list) {
        super(list);
        this.f3201i = new f2.l();
        this.f3202j = new Path();
    }

    /* JADX WARN: Type inference failed for: r14v1, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v20, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v25, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v29, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v32, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r9v12, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.util.ArrayList, java.util.List<d2.a>] */
    @Override // b2.a
    public final Path g(l2.a<f2.l> aVar, float f10) {
        f2.l lVar = aVar.f9896b;
        f2.l lVar2 = aVar.f9897c;
        f2.l lVar3 = this.f3201i;
        if (lVar3.f7021b == null) {
            lVar3.f7021b = new PointF();
        }
        lVar3.f7022c = lVar.f7022c || lVar2.f7022c;
        if (lVar.f7020a.size() != lVar2.f7020a.size()) {
            StringBuilder sbC = a0.b.c("Curves must have the same number of control points. Shape 1: ");
            sbC.append(lVar.f7020a.size());
            sbC.append("\tShape 2: ");
            sbC.append(lVar2.f7020a.size());
            k2.c.b(sbC.toString());
        }
        int iMin = Math.min(lVar.f7020a.size(), lVar2.f7020a.size());
        if (lVar3.f7020a.size() < iMin) {
            for (int size = lVar3.f7020a.size(); size < iMin; size++) {
                lVar3.f7020a.add(new d2.a());
            }
        } else if (lVar3.f7020a.size() > iMin) {
            for (int size2 = lVar3.f7020a.size() - 1; size2 >= iMin; size2--) {
                ?? r10 = lVar3.f7020a;
                r10.remove(r10.size() - 1);
            }
        }
        PointF pointF = lVar.f7021b;
        PointF pointF2 = lVar2.f7021b;
        float f11 = pointF.x;
        float f12 = pointF2.x;
        PointF pointF3 = k2.f.f9637a;
        float fC = androidx.appcompat.widget.o.c(f12, f11, f10, f11);
        float f13 = pointF.y;
        lVar3.a(fC, ((pointF2.y - f13) * f10) + f13);
        for (int size3 = lVar3.f7020a.size() - 1; size3 >= 0; size3--) {
            d2.a aVar2 = (d2.a) lVar.f7020a.get(size3);
            d2.a aVar3 = (d2.a) lVar2.f7020a.get(size3);
            PointF pointF4 = aVar2.f5961a;
            PointF pointF5 = aVar2.f5962b;
            PointF pointF6 = aVar2.f5963c;
            PointF pointF7 = aVar3.f5961a;
            PointF pointF8 = aVar3.f5962b;
            PointF pointF9 = aVar3.f5963c;
            d2.a aVar4 = (d2.a) lVar3.f7020a.get(size3);
            float f14 = pointF4.x;
            float fC2 = androidx.appcompat.widget.o.c(pointF7.x, f14, f10, f14);
            float f15 = pointF4.y;
            aVar4.a(fC2, ((pointF7.y - f15) * f10) + f15);
            d2.a aVar5 = (d2.a) lVar3.f7020a.get(size3);
            float f16 = pointF5.x;
            float fC3 = androidx.appcompat.widget.o.c(pointF8.x, f16, f10, f16);
            float f17 = pointF5.y;
            aVar5.b(fC3, ((pointF8.y - f17) * f10) + f17);
            d2.a aVar6 = (d2.a) lVar3.f7020a.get(size3);
            float f18 = pointF6.x;
            float fC4 = androidx.appcompat.widget.o.c(pointF9.x, f18, f10, f18);
            float f19 = pointF6.y;
            aVar6.c(fC4, ((pointF9.y - f19) * f10) + f19);
        }
        f2.l lVarC = this.f3201i;
        List<a2.r> list = this.f3203k;
        if (list != null) {
            for (int size4 = list.size() - 1; size4 >= 0; size4--) {
                lVarC = this.f3203k.get(size4).c(lVarC);
            }
        }
        Path path = this.f3202j;
        path.reset();
        PointF pointF10 = lVarC.f7021b;
        path.moveTo(pointF10.x, pointF10.y);
        k2.f.f9637a.set(pointF10.x, pointF10.y);
        for (int i10 = 0; i10 < lVarC.f7020a.size(); i10++) {
            d2.a aVar7 = (d2.a) lVarC.f7020a.get(i10);
            PointF pointF11 = aVar7.f5961a;
            PointF pointF12 = aVar7.f5962b;
            PointF pointF13 = aVar7.f5963c;
            PointF pointF14 = k2.f.f9637a;
            if (pointF11.equals(pointF14) && pointF12.equals(pointF13)) {
                path.lineTo(pointF13.x, pointF13.y);
            } else {
                path.cubicTo(pointF11.x, pointF11.y, pointF12.x, pointF12.y, pointF13.x, pointF13.y);
            }
            pointF14.set(pointF13.x, pointF13.y);
        }
        if (lVarC.f7022c) {
            path.close();
        }
        return this.f3202j;
    }
}
