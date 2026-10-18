package jc;

/* JADX INFO: compiled from: DiscoverUtilties.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f9491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f9492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f9493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f9494f;

    public a(String str, String str2, String str3, String str4, boolean z10, int i10) {
        this.f9489a = str;
        this.f9490b = str2;
        this.f9491c = str3;
        this.f9492d = str4;
        this.f9493e = z10;
        this.f9494f = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p4.h.c(this.f9489a, aVar.f9489a) && p4.h.c(this.f9490b, aVar.f9490b) && p4.h.c(this.f9491c, aVar.f9491c) && p4.h.c(this.f9492d, aVar.f9492d) && this.f9493e == aVar.f9493e && this.f9494f == aVar.f9494f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public final int hashCode() {
        int iC = a1.f.c(this.f9492d, a1.f.c(this.f9491c, a1.f.c(this.f9490b, this.f9489a.hashCode() * 31, 31), 31), 31);
        boolean z10 = this.f9493e;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return Integer.hashCode(this.f9494f) + ((iC + r10) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BigfootDevice(name=");
        sbC.append(this.f9489a);
        sbC.append(", address=");
        sbC.append(this.f9490b);
        sbC.append(", scanIdentifier=");
        sbC.append(this.f9491c);
        sbC.append(", stringIdentifier=");
        sbC.append(this.f9492d);
        sbC.append(", isRightFoot=");
        sbC.append(this.f9493e);
        sbC.append(", rssi=");
        return a0.b.b(sbC, this.f9494f, ')');
    }
}
