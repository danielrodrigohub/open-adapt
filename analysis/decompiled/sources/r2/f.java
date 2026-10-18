package r2;

import java.security.MessageDigest;

/* JADX INFO: compiled from: DataCacheKey.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements p2.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p2.f f14247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p2.f f14248c;

    public f(p2.f fVar, p2.f fVar2) {
        this.f14247b = fVar;
        this.f14248c = fVar2;
    }

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        this.f14247b.a(messageDigest);
        this.f14248c.a(messageDigest);
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f14247b.equals(fVar.f14247b) && this.f14248c.equals(fVar.f14248c);
    }

    @Override // p2.f
    public final int hashCode() {
        return this.f14248c.hashCode() + (this.f14247b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("DataCacheKey{sourceKey=");
        sbC.append(this.f14247b);
        sbC.append(", signature=");
        sbC.append(this.f14248c);
        sbC.append('}');
        return sbC.toString();
    }
}
