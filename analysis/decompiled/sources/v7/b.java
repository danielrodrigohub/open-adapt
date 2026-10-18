package v7;

/* JADX INFO: compiled from: PairData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16364b;

    public b(int i10, int i11) {
        this.f16363a = i10;
        this.f16364b = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f16363a == bVar.f16363a && this.f16364b == bVar.f16364b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f16364b) + (Integer.hashCode(this.f16363a) * 31);
    }

    public final String toString() {
        return "AutoLaceDefaults(leftPercent=" + this.f16363a + ", rightPercent=" + this.f16364b + ")";
    }
}
