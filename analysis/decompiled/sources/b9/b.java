package b9;

/* JADX INFO: compiled from: BatteryStatesKtx.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3579b;

    public b(String str, String str2) {
        this.f3578a = str;
        this.f3579b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return p4.h.c(this.f3578a, bVar.f3578a) && p4.h.c(this.f3579b, bVar.f3579b);
    }

    public final int hashCode() {
        return this.f3579b.hashCode() + (this.f3578a.hashCode() * 31);
    }

    public final String toString() {
        return a0.b.a("BatteryText(title=", this.f3578a, ", message=", this.f3579b, ")");
    }
}
