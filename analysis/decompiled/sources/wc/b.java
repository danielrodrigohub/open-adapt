package wc;

import p4.h;

/* JADX INFO: compiled from: RequestWithRetryParams.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double f17603d;

    public b() {
        long j10 = c.f17604a;
        zd.a.C0338a c0338a = zd.a.f19479i;
        long j11 = zd.a.f19480j;
        this.f17600a = 2147483646;
        this.f17601b = j10;
        this.f17602c = j11;
        this.f17603d = 2.0d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f17600a != bVar.f17600a) {
            return false;
        }
        long j10 = this.f17601b;
        long j11 = bVar.f17601b;
        zd.a.C0338a c0338a = zd.a.f19479i;
        if (j10 == j11) {
            return ((this.f17602c > bVar.f17602c ? 1 : (this.f17602c == bVar.f17602c ? 0 : -1)) == 0) && h.c(Double.valueOf(this.f17603d), Double.valueOf(bVar.f17603d));
        }
        return false;
    }

    public final int hashCode() {
        return Double.hashCode(this.f17603d) + ((zd.a.k(this.f17602c) + ((zd.a.k(this.f17601b) + (Integer.hashCode(this.f17600a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("RequestWithRetryParams(retries=");
        sbC.append(this.f17600a);
        sbC.append(", initialDelay=");
        sbC.append((Object) zd.a.q(this.f17601b));
        sbC.append(", maxDelay=");
        sbC.append((Object) zd.a.q(this.f17602c));
        sbC.append(", backoffFactor=");
        sbC.append(this.f17603d);
        sbC.append(')');
        return sbC.toString();
    }
}
