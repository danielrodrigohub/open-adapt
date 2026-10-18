package f2;

import android.graphics.Path;
import y1.e0;

/* JADX INFO: compiled from: ShapeFill.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f7023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path.FillType f7024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f7025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e2.a f7026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e2.d f7027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f7028f;

    public m(String str, boolean z10, Path.FillType fillType, e2.a aVar, e2.d dVar, boolean z11) {
        this.f7025c = str;
        this.f7023a = z10;
        this.f7024b = fillType;
        this.f7026d = aVar;
        this.f7027e = dVar;
        this.f7028f = z11;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new a2.f(e0Var, bVar, this);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ShapeFill{color=, fillEnabled=");
        sbC.append(this.f7023a);
        sbC.append('}');
        return sbC.toString();
    }
}
