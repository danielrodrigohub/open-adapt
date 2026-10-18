package c8;

import a1.f;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: PermissionsPayload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @b("consent")
    public final String f4252b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @b("principal")
    public final String f4251a = "adapt";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @b("permission")
    public final String f4253c = "productimprovement:laceenginestats";

    public a(String str) {
        this.f4252b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.c(this.f4251a, aVar.f4251a) && h.c(this.f4252b, aVar.f4252b) && h.c(this.f4253c, aVar.f4253c);
    }

    public final int hashCode() {
        return this.f4253c.hashCode() + f.c(this.f4252b, this.f4251a.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.f4251a;
        String str2 = this.f4252b;
        return f.d(k1.a.a("PermissionsPayload(principal=", str, ", consent=", str2, ", permission="), this.f4253c, ")");
    }
}
