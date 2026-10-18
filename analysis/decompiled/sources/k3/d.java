package k3;

import java.security.MessageDigest;
import java.util.Objects;
import p2.f;

/* JADX INFO: compiled from: ObjectKey.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f9647b;

    public d(Object obj) {
        Objects.requireNonNull(obj, "Argument must not be null");
        this.f9647b = obj;
    }

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(this.f9647b.toString().getBytes(f.f12642a));
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f9647b.equals(((d) obj).f9647b);
        }
        return false;
    }

    @Override // p2.f
    public final int hashCode() {
        return this.f9647b.hashCode();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ObjectKey{object=");
        sbC.append(this.f9647b);
        sbC.append('}');
        return sbC.toString();
    }
}
