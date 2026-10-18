package s3;

/* JADX INFO: compiled from: SeekPoint.java */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v f15081c = new v(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f15082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15083b;

    public v(long j10, long j11) {
        this.f15082a = j10;
        this.f15083b = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v.class != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        return this.f15082a == vVar.f15082a && this.f15083b == vVar.f15083b;
    }

    public final int hashCode() {
        return (((int) this.f15082a) * 31) + ((int) this.f15083b);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("[timeUs=");
        sbC.append(this.f15082a);
        sbC.append(", position=");
        sbC.append(this.f15083b);
        sbC.append("]");
        return sbC.toString();
    }
}
