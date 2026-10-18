package fa;

/* JADX INFO: compiled from: AdaptKitFirmwareCheckStatuses.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f7121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f7122b;

    public a(b bVar, b bVar2) {
        p4.h.j(bVar, "leftStatus");
        p4.h.j(bVar2, "rightStatus");
        this.f7121a = bVar;
        this.f7122b = bVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p4.h.c(this.f7121a, aVar.f7121a) && p4.h.c(this.f7122b, aVar.f7122b);
    }

    public final int hashCode() {
        return this.f7122b.hashCode() + (this.f7121a.hashCode() * 31);
    }

    public final String toString() {
        return "AdaptKitFirmwareCheckStatuses(leftStatus=" + this.f7121a + ", rightStatus=" + this.f7122b + ")";
    }
}
