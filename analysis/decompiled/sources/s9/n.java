package s9;

/* JADX INFO: compiled from: ModesSelectionUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f15214d = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ea.e f15216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15217c;

    public n(int i10, ea.e eVar, int i11) {
        eVar = (i11 & 2) != 0 ? null : eVar;
        this.f15215a = i10;
        this.f15216b = eVar;
        this.f15217c = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f15215a == nVar.f15215a && p4.h.c(this.f15216b, nVar.f15216b) && this.f15217c == nVar.f15217c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f15215a) * 31;
        ea.e eVar = this.f15216b;
        int iHashCode2 = (iHashCode + (eVar == null ? 0 : eVar.hashCode())) * 31;
        boolean z10 = this.f15217c;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode2 + r10;
    }

    public final String toString() {
        return "ModeSelectionDataSet(viewType=" + this.f15215a + ", devicePreset=" + this.f15216b + ", isSelected=" + this.f15217c + ")";
    }
}
