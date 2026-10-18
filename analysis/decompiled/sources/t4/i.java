package t4;

import m5.e0;

/* JADX INFO: compiled from: RangedUri.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f15485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f15488d;

    public i(String str, long j10, long j11) {
        this.f15487c = str == null ? "" : str;
        this.f15485a = j10;
        this.f15486b = j11;
    }

    public final i a(i iVar, String str) {
        String strC = e0.c(str, this.f15487c);
        i iVar2 = null;
        if (iVar != null && strC.equals(e0.c(str, iVar.f15487c))) {
            long j10 = this.f15486b;
            if (j10 != -1) {
                long j11 = this.f15485a;
                if (j11 + j10 == iVar.f15485a) {
                    long j12 = iVar.f15486b;
                    return new i(strC, j11, j12 != -1 ? j10 + j12 : -1L);
                }
            }
            long j13 = iVar.f15486b;
            if (j13 != -1) {
                long j14 = iVar.f15485a;
                if (j14 + j13 == this.f15485a) {
                    iVar2 = new i(strC, j14, j10 != -1 ? j13 + j10 : -1L);
                }
            }
        }
        return iVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f15485a == iVar.f15485a && this.f15486b == iVar.f15486b && this.f15487c.equals(iVar.f15487c);
    }

    public final int hashCode() {
        if (this.f15488d == 0) {
            this.f15488d = this.f15487c.hashCode() + ((((527 + ((int) this.f15485a)) * 31) + ((int) this.f15486b)) * 31);
        }
        return this.f15488d;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("RangedUri(referenceUri=");
        sbC.append(this.f15487c);
        sbC.append(", start=");
        sbC.append(this.f15485a);
        sbC.append(", length=");
        sbC.append(this.f15486b);
        sbC.append(")");
        return sbC.toString();
    }
}
