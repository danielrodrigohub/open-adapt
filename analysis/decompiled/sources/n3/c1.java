package n3;

/* JADX INFO: compiled from: MediaPeriodInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p4.x.b f11328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f11329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f11330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f11331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f11332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f11333f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f11334g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f11335h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f11336i;

    public c1(p4.x.b bVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14 = false;
        m5.a.a(!z13 || z11);
        m5.a.a(!z12 || z11);
        if (!z10 || (!z11 && !z12 && !z13)) {
            z14 = true;
        }
        m5.a.a(z14);
        this.f11328a = bVar;
        this.f11329b = j10;
        this.f11330c = j11;
        this.f11331d = j12;
        this.f11332e = j13;
        this.f11333f = z10;
        this.f11334g = z11;
        this.f11335h = z12;
        this.f11336i = z13;
    }

    public final c1 a(long j10) {
        return j10 == this.f11330c ? this : new c1(this.f11328a, this.f11329b, j10, this.f11331d, this.f11332e, this.f11333f, this.f11334g, this.f11335h, this.f11336i);
    }

    public final c1 b(long j10) {
        return j10 == this.f11329b ? this : new c1(this.f11328a, j10, this.f11330c, this.f11331d, this.f11332e, this.f11333f, this.f11334g, this.f11335h, this.f11336i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c1.class != obj.getClass()) {
            return false;
        }
        c1 c1Var = (c1) obj;
        return this.f11329b == c1Var.f11329b && this.f11330c == c1Var.f11330c && this.f11331d == c1Var.f11331d && this.f11332e == c1Var.f11332e && this.f11333f == c1Var.f11333f && this.f11334g == c1Var.f11334g && this.f11335h == c1Var.f11335h && this.f11336i == c1Var.f11336i && m5.g0.a(this.f11328a, c1Var.f11328a);
    }

    public final int hashCode() {
        return ((((((((((((((((this.f11328a.hashCode() + 527) * 31) + ((int) this.f11329b)) * 31) + ((int) this.f11330c)) * 31) + ((int) this.f11331d)) * 31) + ((int) this.f11332e)) * 31) + (this.f11333f ? 1 : 0)) * 31) + (this.f11334g ? 1 : 0)) * 31) + (this.f11335h ? 1 : 0)) * 31) + (this.f11336i ? 1 : 0);
    }
}
