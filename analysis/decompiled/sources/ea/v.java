package ea;

/* JADX INFO: compiled from: AdaptKitMigrationDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f6697a;

    public v(s sVar) {
        this.f6697a = sVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v) && p4.h.c(this.f6697a, ((v) obj).f6697a);
    }

    public final int hashCode() {
        return this.f6697a.hashCode();
    }

    public final String toString() {
        return "OldBigfootDeviceColor(bigfootColorPreset=" + this.f6697a + ")";
    }
}
