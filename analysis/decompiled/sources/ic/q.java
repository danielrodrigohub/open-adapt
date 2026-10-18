package ic;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9069a;

    public q(String str) {
        p4.h.j(str, "deviceId");
        this.f9069a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q) && p4.h.c(this.f9069a, ((q) obj).f9069a);
    }

    public final int hashCode() {
        return this.f9069a.hashCode();
    }

    public final String toString() {
        return a0.d.d(a0.b.c("DeviceIdLock(deviceId="), this.f9069a, ')');
    }
}
