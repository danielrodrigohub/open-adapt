package ea;

import java.util.List;

/* JADX INFO: compiled from: AdaptKitMigrationDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final t f6654d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final t f6655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f6656f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f6657g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<w> f6658h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f6659i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f6660j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f6661k;

    public j(String str, String str2, boolean z10, t tVar, t tVar2, String str3, String str4, List list, long j10, boolean z11) {
        p4.h.j(str, "pairId");
        p4.h.j(str2, "pairName");
        this.f6651a = str;
        this.f6652b = str2;
        this.f6653c = z10;
        this.f6654d = tVar;
        this.f6655e = tVar2;
        this.f6656f = str3;
        this.f6657g = str4;
        this.f6658h = list;
        this.f6659i = j10;
        this.f6660j = z11;
        this.f6661k = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return p4.h.c(this.f6651a, jVar.f6651a) && p4.h.c(this.f6652b, jVar.f6652b) && this.f6653c == jVar.f6653c && p4.h.c(this.f6654d, jVar.f6654d) && p4.h.c(this.f6655e, jVar.f6655e) && p4.h.c(this.f6656f, jVar.f6656f) && p4.h.c(this.f6657g, jVar.f6657g) && p4.h.c(this.f6658h, jVar.f6658h) && this.f6659i == jVar.f6659i && this.f6660j == jVar.f6660j && this.f6661k == jVar.f6661k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [int] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v15, types: [int] */
    /* JADX WARN: Type inference failed for: r1v17, types: [int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public final int hashCode() {
        int iC = a1.f.c(this.f6652b, this.f6651a.hashCode() * 31, 31);
        boolean z10 = this.f6653c;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int iHashCode = (this.f6655e.hashCode() + ((this.f6654d.hashCode() + ((iC + r10) * 31)) * 31)) * 31;
        String str = this.f6656f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f6657g;
        int iHashCode3 = (Long.hashCode(this.f6659i) + a4.g.d(this.f6658h, (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31, 31)) * 31;
        boolean z11 = this.f6660j;
        ?? r11 = z11;
        if (z11) {
            r11 = 1;
        }
        int i10 = (iHashCode3 + r11) * 31;
        boolean z12 = this.f6661k;
        return i10 + (z12 ? 1 : z12);
    }

    public final String toString() {
        String str = this.f6651a;
        String str2 = this.f6652b;
        boolean z10 = this.f6653c;
        t tVar = this.f6654d;
        t tVar2 = this.f6655e;
        String str3 = this.f6656f;
        String str4 = this.f6657g;
        List<w> list = this.f6658h;
        long j10 = this.f6659i;
        boolean z11 = this.f6660j;
        boolean z12 = this.f6661k;
        StringBuilder sbA = k1.a.a("AdaptKitMigrationDevice(pairId=", str, ", pairName=", str2, ", isDefault=");
        sbA.append(z10);
        sbA.append(", leftDevice=");
        sbA.append(tVar);
        sbA.append(", rightDevice=");
        sbA.append(tVar2);
        sbA.append(", lastSnapshotUsedName=");
        sbA.append(str3);
        sbA.append(", colorWay=");
        sbA.append(str4);
        sbA.append(", snapshots=");
        sbA.append(list);
        sbA.append(", localUpdatedMillis=");
        sbA.append(j10);
        sbA.append(", scheduledForDeletion=");
        sbA.append(z11);
        sbA.append(", hasConnectedLocally=");
        sbA.append(z12);
        sbA.append(")");
        return sbA.toString();
    }
}
