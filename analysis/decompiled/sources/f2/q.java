package f2;

import a2.t;
import y1.e0;

/* JADX INFO: compiled from: ShapeTrimPath.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e2.b f7048c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e2.b f7049d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e2.b f7050e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f7051f;

    public q(String str, int i10, e2.b bVar, e2.b bVar2, e2.b bVar3, boolean z10) {
        this.f7046a = str;
        this.f7047b = i10;
        this.f7048c = bVar;
        this.f7049d = bVar2;
        this.f7050e = bVar3;
        this.f7051f = z10;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new t(bVar, this);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Trim Path: {start: ");
        sbC.append(this.f7048c);
        sbC.append(", end: ");
        sbC.append(this.f7049d);
        sbC.append(", offset: ");
        sbC.append(this.f7050e);
        sbC.append("}");
        return sbC.toString();
    }
}
