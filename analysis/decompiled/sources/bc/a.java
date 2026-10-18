package bc;

import a0.b;
import a0.d;
import a1.f;
import p4.h;

/* JADX INFO: compiled from: PKCE.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3777c = "S256";

    public a(String str, String str2) {
        this.f3775a = str;
        this.f3776b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.c(this.f3775a, aVar.f3775a) && h.c(this.f3776b, aVar.f3776b) && h.c(this.f3777c, aVar.f3777c);
    }

    public final int hashCode() {
        return this.f3777c.hashCode() + f.c(this.f3776b, this.f3775a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sbC = b.c("PKCE(verifier=");
        sbC.append(this.f3775a);
        sbC.append(", challenge=");
        sbC.append(this.f3776b);
        sbC.append(", challengeMethod=");
        return d.d(sbC, this.f3777c, ')');
    }
}
