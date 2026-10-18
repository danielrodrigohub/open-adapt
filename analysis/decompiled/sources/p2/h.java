package p2;

import java.security.MessageDigest;

/* JADX INFO: compiled from: Options.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p.a<g<?>, Object> f12648b = new l3.b();

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        int i10 = 0;
        while (true) {
            p.a<g<?>, Object> aVar = this.f12648b;
            if (i10 >= aVar.f12614j) {
                return;
            }
            g<?> gVarI = aVar.i(i10);
            Object objM = this.f12648b.m(i10);
            g.b<?> bVar = gVarI.f12645b;
            if (gVarI.f12647d == null) {
                gVarI.f12647d = gVarI.f12646c.getBytes(f.f12642a);
            }
            bVar.a(gVarI.f12647d, objM, messageDigest);
            i10++;
        }
    }

    public final <T> T c(g<T> gVar) {
        return this.f12648b.containsKey(gVar) ? (T) this.f12648b.getOrDefault(gVar, null) : gVar.f12644a;
    }

    public final void d(h hVar) {
        this.f12648b.j(hVar.f12648b);
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f12648b.equals(((h) obj).f12648b);
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [l3.b, p.a<p2.g<?>, java.lang.Object>] */
    @Override // p2.f
    public final int hashCode() {
        return this.f12648b.hashCode();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Options{values=");
        sbC.append(this.f12648b);
        sbC.append('}');
        return sbC.toString();
    }
}
