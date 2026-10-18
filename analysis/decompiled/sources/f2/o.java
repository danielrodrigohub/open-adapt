package f2;

import y1.e0;

/* JADX INFO: compiled from: ShapePath.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e2.h f7034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f7035d;

    public o(String str, int i10, e2.h hVar, boolean z10) {
        this.f7032a = str;
        this.f7033b = i10;
        this.f7034c = hVar;
        this.f7035d = z10;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new a2.q(e0Var, bVar, this);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ShapePath{name=");
        sbC.append(this.f7032a);
        sbC.append(", index=");
        return a0.b.b(sbC, this.f7033b, '}');
    }
}
