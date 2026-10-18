package k3;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import l3.l;
import p2.f;

/* JADX INFO: compiled from: AndroidResourceSignature.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f9644c;

    public a(int i10, f fVar) {
        this.f9643b = i10;
        this.f9644c = fVar;
    }

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        this.f9644c.a(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f9643b).array());
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f9643b == aVar.f9643b && this.f9644c.equals(aVar.f9644c);
    }

    @Override // p2.f
    public final int hashCode() {
        return l.g(this.f9644c, this.f9643b);
    }
}
