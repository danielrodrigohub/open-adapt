package ea;

/* JADX INFO: compiled from: AdaptKitMigrationDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f6696b;

    public u(int i10, v vVar) {
        this.f6695a = i10;
        this.f6696b = vVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f6695a == uVar.f6695a && p4.h.c(this.f6696b, uVar.f6696b);
    }

    public final int hashCode() {
        return this.f6696b.hashCode() + (Integer.hashCode(this.f6695a) * 31);
    }

    public final String toString() {
        return "OldBigfootDeviceAttributes(percent=" + this.f6695a + ", bigfootDeviceColor=" + this.f6696b + ")";
    }
}
