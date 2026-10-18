package f2;

import y1.e0;

/* JADX INFO: compiled from: MergePaths.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6996c;

    public g(String str, int i10, boolean z10) {
        this.f6994a = str;
        this.f6995b = i10;
        this.f6996c = z10;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        if (e0Var.f18317t) {
            return new a2.k(this);
        }
        k2.c.b("Animation contains merge paths but they are disabled.");
        return null;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("MergePaths{mode=");
        sbC.append(a4.g.h(this.f6995b));
        sbC.append('}');
        return sbC.toString();
    }
}
