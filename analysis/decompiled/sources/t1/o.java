package t1;

/* JADX INFO: compiled from: WorkSpec.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f15350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k1.p f15351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f15352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f15353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.work.b f15354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.work.b f15355f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f15356g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15357h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15358i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public k1.c f15359j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f15360k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f15361l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f15362m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f15363n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f15364o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f15365p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f15366q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f15367r;

    /* JADX INFO: compiled from: WorkSpec.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f15368a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public k1.p f15369b;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f15369b != aVar.f15369b) {
                return false;
            }
            return this.f15368a.equals(aVar.f15368a);
        }

        public final int hashCode() {
            return this.f15369b.hashCode() + (this.f15368a.hashCode() * 31);
        }
    }

    static {
        k1.l.e("WorkSpec");
    }

    public o(String str, String str2) {
        this.f15351b = k1.p.ENQUEUED;
        androidx.work.b bVar = androidx.work.b.f3050c;
        this.f15354e = bVar;
        this.f15355f = bVar;
        this.f15359j = k1.c.f9573i;
        this.f15361l = 1;
        this.f15362m = 30000L;
        this.f15365p = -1L;
        this.f15367r = 1;
        this.f15350a = str;
        this.f15352c = str2;
    }

    public final long a() {
        long jCurrentTimeMillis;
        long j10;
        if (this.f15351b == k1.p.ENQUEUED && this.f15360k > 0) {
            long jScalb = this.f15361l == 2 ? this.f15362m * ((long) this.f15360k) : (long) Math.scalb(this.f15362m, this.f15360k - 1);
            j10 = this.f15363n;
            jCurrentTimeMillis = Math.min(18000000L, jScalb);
        } else {
            if (c()) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                long j11 = this.f15363n;
                if (j11 == 0) {
                    j11 = this.f15356g + jCurrentTimeMillis2;
                }
                long j12 = this.f15358i;
                long j13 = this.f15357h;
                if (j12 != j13) {
                    return j11 + j13 + (j11 == 0 ? j12 * (-1) : 0L);
                }
                return j11 + (j11 != 0 ? j13 : 0L);
            }
            jCurrentTimeMillis = this.f15363n;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            j10 = this.f15356g;
        }
        return jCurrentTimeMillis + j10;
    }

    public final boolean b() {
        return !k1.c.f9573i.equals(this.f15359j);
    }

    public final boolean c() {
        return this.f15357h != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f15356g != oVar.f15356g || this.f15357h != oVar.f15357h || this.f15358i != oVar.f15358i || this.f15360k != oVar.f15360k || this.f15362m != oVar.f15362m || this.f15363n != oVar.f15363n || this.f15364o != oVar.f15364o || this.f15365p != oVar.f15365p || this.f15366q != oVar.f15366q || !this.f15350a.equals(oVar.f15350a) || this.f15351b != oVar.f15351b || !this.f15352c.equals(oVar.f15352c)) {
            return false;
        }
        String str = this.f15353d;
        if (str == null ? oVar.f15353d == null : str.equals(oVar.f15353d)) {
            return this.f15354e.equals(oVar.f15354e) && this.f15355f.equals(oVar.f15355f) && this.f15359j.equals(oVar.f15359j) && this.f15361l == oVar.f15361l && this.f15367r == oVar.f15367r;
        }
        return false;
    }

    public final int hashCode() {
        int iC = a1.f.c(this.f15352c, (this.f15351b.hashCode() + (this.f15350a.hashCode() * 31)) * 31, 31);
        String str = this.f15353d;
        int iHashCode = (this.f15355f.hashCode() + ((this.f15354e.hashCode() + ((iC + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        long j10 = this.f15356g;
        int i10 = (iHashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f15357h;
        int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f15358i;
        int iA = (q.g.a(this.f15361l) + ((((this.f15359j.hashCode() + ((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31)) * 31) + this.f15360k) * 31)) * 31;
        long j13 = this.f15362m;
        int i12 = (iA + ((int) (j13 ^ (j13 >>> 32)))) * 31;
        long j14 = this.f15363n;
        int i13 = (i12 + ((int) (j14 ^ (j14 >>> 32)))) * 31;
        long j15 = this.f15364o;
        int i14 = (i13 + ((int) (j15 ^ (j15 >>> 32)))) * 31;
        long j16 = this.f15365p;
        return q.g.a(this.f15367r) + ((((i14 + ((int) (j16 ^ (j16 >>> 32)))) * 31) + (this.f15366q ? 1 : 0)) * 31);
    }

    public final String toString() {
        return a1.f.d(a0.b.c("{WorkSpec: "), this.f15350a, "}");
    }

    public o(o oVar) {
        this.f15351b = k1.p.ENQUEUED;
        androidx.work.b bVar = androidx.work.b.f3050c;
        this.f15354e = bVar;
        this.f15355f = bVar;
        this.f15359j = k1.c.f9573i;
        this.f15361l = 1;
        this.f15362m = 30000L;
        this.f15365p = -1L;
        this.f15367r = 1;
        this.f15350a = oVar.f15350a;
        this.f15352c = oVar.f15352c;
        this.f15351b = oVar.f15351b;
        this.f15353d = oVar.f15353d;
        this.f15354e = new androidx.work.b(oVar.f15354e);
        this.f15355f = new androidx.work.b(oVar.f15355f);
        this.f15356g = oVar.f15356g;
        this.f15357h = oVar.f15357h;
        this.f15358i = oVar.f15358i;
        this.f15359j = new k1.c(oVar.f15359j);
        this.f15360k = oVar.f15360k;
        this.f15361l = oVar.f15361l;
        this.f15362m = oVar.f15362m;
        this.f15363n = oVar.f15363n;
        this.f15364o = oVar.f15364o;
        this.f15365p = oVar.f15365p;
        this.f15366q = oVar.f15366q;
        this.f15367r = oVar.f15367r;
    }
}
