package fd;

/* JADX INFO: compiled from: ULong.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Comparable<l> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f7404i = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f7405h;

    /* JADX INFO: compiled from: ULong.kt */
    public static final class a {
    }

    public /* synthetic */ l(long j10) {
        this.f7405h = j10;
    }

    public static String b(long j10) {
        if (j10 >= 0) {
            d3.e.c(10);
            String string = Long.toString(j10, 10);
            p4.h.i(string, "toString(this, checkRadix(radix))");
            return string;
        }
        long j11 = 10;
        long j12 = ((j10 >>> 1) / j11) << 1;
        long j13 = j10 - (j12 * j11);
        if (j13 >= j11) {
            j13 -= j11;
            j12++;
        }
        StringBuilder sb2 = new StringBuilder();
        d3.e.c(10);
        String string2 = Long.toString(j12, 10);
        p4.h.i(string2, "toString(this, checkRadix(radix))");
        sb2.append(string2);
        d3.e.c(10);
        String string3 = Long.toString(j13, 10);
        p4.h.i(string3, "toString(this, checkRadix(radix))");
        sb2.append(string3);
        return sb2.toString();
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(l lVar) {
        return g7.c.h(this.f7405h, lVar.f7405h);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof l) && this.f7405h == ((l) obj).f7405h;
    }

    public final int hashCode() {
        long j10 = this.f7405h;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public final String toString() {
        return b(this.f7405h);
    }
}
