package ea;

/* JADX INFO: compiled from: AdaptKitMigrationDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6693d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6694e;

    public t(String str, String str2, String str3, String str4, int i10) {
        p4.h.j(str, "scanningKey");
        p4.h.j(str2, "stringIdentifier");
        p4.h.j(str3, "connectionAddress");
        p4.h.j(str4, "authenticationKey");
        this.f6690a = str;
        this.f6691b = str2;
        this.f6692c = str3;
        this.f6693d = str4;
        this.f6694e = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return p4.h.c(this.f6690a, tVar.f6690a) && p4.h.c(this.f6691b, tVar.f6691b) && p4.h.c(this.f6692c, tVar.f6692c) && p4.h.c(this.f6693d, tVar.f6693d) && this.f6694e == tVar.f6694e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f6694e) + a1.f.c(this.f6693d, a1.f.c(this.f6692c, a1.f.c(this.f6691b, this.f6690a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        String str = this.f6690a;
        String str2 = this.f6691b;
        String str3 = this.f6692c;
        String str4 = this.f6693d;
        int i10 = this.f6694e;
        StringBuilder sbA = k1.a.a("OldBigfootDevice(scanningKey=", str, ", stringIdentifier=", str2, ", connectionAddress=");
        a1.d.g(sbA, str3, ", authenticationKey=", str4, ", maxTightness=");
        return androidx.recyclerview.widget.s.a(sbA, i10, ")");
    }
}
