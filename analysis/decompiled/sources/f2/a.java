package f2;

import android.graphics.PointF;
import y1.e0;

/* JADX INFO: compiled from: CircleShape.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e2.l<PointF, PointF> f6963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e2.f f6964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6966e;

    public a(String str, e2.l<PointF, PointF> lVar, e2.f fVar, boolean z10, boolean z11) {
        this.f6962a = str;
        this.f6963b = lVar;
        this.f6964c = fVar;
        this.f6965d = z10;
        this.f6966e = z11;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new a2.e(e0Var, bVar, this);
    }
}
