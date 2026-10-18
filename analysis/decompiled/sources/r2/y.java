package r2;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: compiled from: ResourceCacheKey.java */
/* JADX INFO: loaded from: classes.dex */
public final class y implements p2.f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final l3.i<Class<?>, byte[]> f14400j = new l3.i<>(50);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.b f14401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p2.f f14402c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p2.f f14403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f14405f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class<?> f14406g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p2.h f14407h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p2.l<?> f14408i;

    public y(s2.b bVar, p2.f fVar, p2.f fVar2, int i10, int i11, p2.l<?> lVar, Class<?> cls, p2.h hVar) {
        this.f14401b = bVar;
        this.f14402c = fVar;
        this.f14403d = fVar2;
        this.f14404e = i10;
        this.f14405f = i11;
        this.f14408i = lVar;
        this.f14406g = cls;
        this.f14407h = hVar;
    }

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f14401b.e();
        ByteBuffer.wrap(bArr).putInt(this.f14404e).putInt(this.f14405f).array();
        this.f14403d.a(messageDigest);
        this.f14402c.a(messageDigest);
        messageDigest.update(bArr);
        p2.l<?> lVar = this.f14408i;
        if (lVar != null) {
            lVar.a(messageDigest);
        }
        this.f14407h.a(messageDigest);
        l3.i<Class<?>, byte[]> iVar = f14400j;
        byte[] bArrA = iVar.a(this.f14406g);
        if (bArrA == null) {
            bArrA = this.f14406g.getName().getBytes(p2.f.f12642a);
            iVar.d(this.f14406g, bArrA);
        }
        messageDigest.update(bArrA);
        this.f14401b.c(bArr);
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f14405f == yVar.f14405f && this.f14404e == yVar.f14404e && l3.l.b(this.f14408i, yVar.f14408i) && this.f14406g.equals(yVar.f14406g) && this.f14402c.equals(yVar.f14402c) && this.f14403d.equals(yVar.f14403d) && this.f14407h.equals(yVar.f14407h);
    }

    @Override // p2.f
    public final int hashCode() {
        int iHashCode = ((((this.f14403d.hashCode() + (this.f14402c.hashCode() * 31)) * 31) + this.f14404e) * 31) + this.f14405f;
        p2.l<?> lVar = this.f14408i;
        if (lVar != null) {
            iHashCode = (iHashCode * 31) + lVar.hashCode();
        }
        return this.f14407h.hashCode() + ((this.f14406g.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ResourceCacheKey{sourceKey=");
        sbC.append(this.f14402c);
        sbC.append(", signature=");
        sbC.append(this.f14403d);
        sbC.append(", width=");
        sbC.append(this.f14404e);
        sbC.append(", height=");
        sbC.append(this.f14405f);
        sbC.append(", decodedResourceClass=");
        sbC.append(this.f14406g);
        sbC.append(", transformation='");
        sbC.append(this.f14408i);
        sbC.append('\'');
        sbC.append(", options=");
        sbC.append(this.f14407h);
        sbC.append('}');
        return sbC.toString();
    }
}
