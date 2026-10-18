package k1;

import java.util.HashSet;

/* JADX INFO: compiled from: Constraints.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c f9573i = new c(new a());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m f9574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f9575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f9577d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9578e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f9579f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f9580g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d f9581h;

    /* JADX INFO: compiled from: Constraints.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f9582a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public m f9583b = m.NOT_REQUIRED;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public d f9584c = new d();
    }

    public c() {
        this.f9574a = m.NOT_REQUIRED;
        this.f9579f = -1L;
        this.f9580g = -1L;
        this.f9581h = new d();
    }

    public final boolean a() {
        return this.f9581h.a() > 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f9575b == cVar.f9575b && this.f9576c == cVar.f9576c && this.f9577d == cVar.f9577d && this.f9578e == cVar.f9578e && this.f9579f == cVar.f9579f && this.f9580g == cVar.f9580g && this.f9574a == cVar.f9574a) {
            return this.f9581h.equals(cVar.f9581h);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((((((this.f9574a.hashCode() * 31) + (this.f9575b ? 1 : 0)) * 31) + (this.f9576c ? 1 : 0)) * 31) + (this.f9577d ? 1 : 0)) * 31) + (this.f9578e ? 1 : 0)) * 31;
        long j10 = this.f9579f;
        int i10 = (iHashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f9580g;
        return this.f9581h.hashCode() + ((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31);
    }

    public c(a aVar) {
        this.f9574a = m.NOT_REQUIRED;
        this.f9579f = -1L;
        this.f9580g = -1L;
        new HashSet();
        this.f9575b = false;
        this.f9576c = aVar.f9582a;
        this.f9574a = aVar.f9583b;
        this.f9577d = false;
        this.f9578e = false;
        this.f9581h = aVar.f9584c;
        this.f9579f = -1L;
        this.f9580g = -1L;
    }

    public c(c cVar) {
        this.f9574a = m.NOT_REQUIRED;
        this.f9579f = -1L;
        this.f9580g = -1L;
        this.f9581h = new d();
        this.f9575b = cVar.f9575b;
        this.f9576c = cVar.f9576c;
        this.f9574a = cVar.f9574a;
        this.f9577d = cVar.f9577d;
        this.f9578e = cVar.f9578e;
        this.f9581h = cVar.f9581h;
    }
}
