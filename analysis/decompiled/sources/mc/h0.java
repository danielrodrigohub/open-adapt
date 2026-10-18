package mc;

import java.util.Arrays;

/* JADX INFO: compiled from: CoreRFAuthentication.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f11030a;

    public h0(byte[] bArr) {
        this.f11030a = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!p4.h.c(h0.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        p4.h.h(obj, "null cannot be cast to non-null type com.nike.corerf.bigfoot.model.UserSuccessfullyPairedShoes");
        return Arrays.equals(this.f11030a, ((h0) obj).f11030a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f11030a);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("UserSuccessfullyPairedShoes(key=");
        sbC.append(Arrays.toString(this.f11030a));
        sbC.append(')');
        return sbC.toString();
    }
}
