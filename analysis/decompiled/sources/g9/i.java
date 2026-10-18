package g9;

/* JADX INFO: compiled from: AutoLaceUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.e f7892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f7893c = false;

    public i(int i10, ea.e eVar) {
        this.f7891a = i10;
        this.f7892b = eVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f7891a == iVar.f7891a && p4.h.c(this.f7892b, iVar.f7892b) && this.f7893c == iVar.f7893c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f7891a) * 31;
        ea.e eVar = this.f7892b;
        int iHashCode2 = (iHashCode + (eVar == null ? 0 : eVar.hashCode())) * 31;
        boolean z10 = this.f7893c;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode2 + r10;
    }

    public final String toString() {
        return "AutoLaceDataSet(viewType=" + this.f7891a + ", devicePreset=" + this.f7892b + ", isSelected=" + this.f7893c + ")";
    }
}
