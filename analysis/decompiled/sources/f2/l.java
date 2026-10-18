package f2;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ShapeData.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<d2.a> f7020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PointF f7021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f7022c;

    public l(PointF pointF, boolean z10, List<d2.a> list) {
        this.f7021b = pointF;
        this.f7022c = z10;
        this.f7020a = new ArrayList(list);
    }

    public final void a(float f10, float f11) {
        if (this.f7021b == null) {
            this.f7021b = new PointF();
        }
        this.f7021b.set(f10, f11);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<d2.a>] */
    public final String toString() {
        StringBuilder sbC = a0.b.c("ShapeData{numCurves=");
        sbC.append(this.f7020a.size());
        sbC.append("closed=");
        sbC.append(this.f7022c);
        sbC.append('}');
        return sbC.toString();
    }

    public l() {
        this.f7020a = new ArrayList();
    }
}
