package v7;

/* JADX INFO: compiled from: PairData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f16423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f16424f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f16425g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f16426h;

    public k(String str, boolean z10, boolean z11, boolean z12, b bVar, boolean z13, boolean z14, boolean z15) {
        p4.h.j(str, "staticPairId");
        this.f16419a = str;
        this.f16420b = z10;
        this.f16421c = z11;
        this.f16422d = z12;
        this.f16423e = bVar;
        this.f16424f = z13;
        this.f16425g = z14;
        this.f16426h = z15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return p4.h.c(this.f16419a, kVar.f16419a) && this.f16420b == kVar.f16420b && this.f16421c == kVar.f16421c && this.f16422d == kVar.f16422d && p4.h.c(this.f16423e, kVar.f16423e) && this.f16424f == kVar.f16424f && this.f16425g == kVar.f16425g && this.f16426h == kVar.f16426h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12, types: [int] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v14, types: [int] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public final int hashCode() {
        int iHashCode = this.f16419a.hashCode() * 31;
        boolean z10 = this.f16420b;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = (iHashCode + r10) * 31;
        boolean z11 = this.f16421c;
        ?? r11 = z11;
        if (z11) {
            r11 = 1;
        }
        int i11 = (i10 + r11) * 31;
        boolean z12 = this.f16422d;
        ?? r12 = z12;
        if (z12) {
            r12 = 1;
        }
        int iHashCode2 = (this.f16423e.hashCode() + ((i11 + r12) * 31)) * 31;
        boolean z13 = this.f16424f;
        ?? r13 = z13;
        if (z13) {
            r13 = 1;
        }
        int i12 = (iHashCode2 + r13) * 31;
        boolean z14 = this.f16425g;
        ?? r14 = z14;
        if (z14) {
            r14 = 1;
        }
        int i13 = (i12 + r14) * 31;
        boolean z15 = this.f16426h;
        return i13 + (z15 ? 1 : z15);
    }

    public final String toString() {
        return "PairData(staticPairId=" + this.f16419a + ", isDefaultAndConnected=" + this.f16420b + ", hasSeenAutoLaceIntro=" + this.f16421c + ", isAutoLaceEnabled=" + this.f16422d + ", autoLaceDefault=" + this.f16423e + ", needToPullInitialAutoLaceDefault=" + this.f16424f + ", hasInteractedWithGestures=" + this.f16425g + ", hasInteractedWithGestureBottomSheet=" + this.f16426h + ")";
    }
}
