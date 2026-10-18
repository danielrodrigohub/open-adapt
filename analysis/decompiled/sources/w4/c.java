package w4;

import m5.g0;

/* JADX INFO: compiled from: RtpPacket.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f17152g = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f17153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f17154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f17156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f17157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f17158f;

    /* JADX INFO: compiled from: RtpPacket.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17159a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f17160b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte f17161c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f17162d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f17163e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f17164f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public byte[] f17165g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public byte[] f17166h;

        public a() {
            byte[] bArr = c.f17152g;
            this.f17165g = bArr;
            this.f17166h = bArr;
        }
    }

    public c(a aVar) {
        this.f17153a = aVar.f17160b;
        this.f17154b = aVar.f17161c;
        this.f17155c = aVar.f17162d;
        this.f17156d = aVar.f17163e;
        this.f17157e = aVar.f17164f;
        int length = aVar.f17165g.length / 4;
        this.f17158f = aVar.f17166h;
    }

    public static int a(int i10) {
        return j7.a.b(i10 + 1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f17154b == cVar.f17154b && this.f17155c == cVar.f17155c && this.f17153a == cVar.f17153a && this.f17156d == cVar.f17156d && this.f17157e == cVar.f17157e;
    }

    public final int hashCode() {
        int i10 = (((((527 + this.f17154b) * 31) + this.f17155c) * 31) + (this.f17153a ? 1 : 0)) * 31;
        long j10 = this.f17156d;
        return ((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f17157e;
    }

    public final String toString() {
        return g0.m("RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)", Byte.valueOf(this.f17154b), Integer.valueOf(this.f17155c), Long.valueOf(this.f17156d), Integer.valueOf(this.f17157e), Boolean.valueOf(this.f17153a));
    }
}
