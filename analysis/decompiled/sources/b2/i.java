package b2;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;

/* JADX INFO: compiled from: PathKeyframe.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends l2.a<PointF> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Path f3193q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final l2.a<PointF> f3194r;

    public i(y1.i iVar, l2.a<PointF> aVar) {
        super(iVar, aVar.f9896b, aVar.f9897c, aVar.f9898d, aVar.f9899e, aVar.f9900f, aVar.f9901g, aVar.f9902h);
        this.f3194r = aVar;
        d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d() {
        T t10;
        T t11;
        T t12 = this.f9897c;
        boolean z10 = (t12 == 0 || (t11 = this.f9896b) == 0 || !((PointF) t11).equals(((PointF) t12).x, ((PointF) t12).y)) ? false : true;
        T t13 = this.f9896b;
        if (t13 == 0 || (t10 = this.f9897c) == 0 || z10) {
            return;
        }
        PointF pointF = (PointF) t13;
        PointF pointF2 = (PointF) t10;
        l2.a<PointF> aVar = this.f3194r;
        PointF pointF3 = aVar.f9909o;
        PointF pointF4 = aVar.f9910p;
        ThreadLocal<PathMeasure> threadLocal = k2.g.f9638a;
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f10 = pointF3.x + pointF.x;
            float f11 = pointF.y + pointF3.y;
            float f12 = pointF2.x;
            float f13 = f12 + pointF4.x;
            float f14 = pointF2.y;
            path.cubicTo(f10, f11, f13, f14 + pointF4.y, f12, f14);
        }
        this.f3193q = path;
    }
}
