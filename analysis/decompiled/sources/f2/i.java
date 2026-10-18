package f2;

import android.graphics.PointF;
import y1.e0;

/* JADX INFO: compiled from: RectangleShape.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e2.l<PointF, PointF> f7009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e2.l<PointF, PointF> f7010c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e2.b f7011d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f7012e;

    public i(String str, e2.l<PointF, PointF> lVar, e2.l<PointF, PointF> lVar2, e2.b bVar, boolean z10) {
        this.f7008a = str;
        this.f7009b = lVar;
        this.f7010c = lVar2;
        this.f7011d = bVar;
        this.f7012e = z10;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new a2.n(e0Var, bVar, this);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("RectangleShape{position=");
        sbC.append(this.f7009b);
        sbC.append(", size=");
        sbC.append(this.f7010c);
        sbC.append('}');
        return sbC.toString();
    }
}
