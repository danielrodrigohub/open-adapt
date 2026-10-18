package m7;

/* JADX INFO: compiled from: CodedInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f10672a = 100;

    /* JADX INFO: compiled from: CodedInputStream.java */
    public static final class a extends j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f10673b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f10674c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f10675d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f10676e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10677f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10678g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10679h = Integer.MAX_VALUE;

        public a(byte[] bArr, int i10, int i11, boolean z10) {
            this.f10673b = bArr;
            this.f10675d = i11 + i10;
            this.f10677f = i10;
            this.f10678g = i10;
            this.f10674c = z10;
        }

        public final int d(int i10) throws z {
            if (i10 < 0) {
                throw z.c();
            }
            int i11 = (this.f10677f - this.f10678g) + i10;
            if (i11 < 0) {
                throw z.d();
            }
            int i12 = this.f10679h;
            if (i11 > i12) {
                throw z.e();
            }
            this.f10679h = i11;
            e();
            return i12;
        }

        public final void e() {
            int i10 = this.f10675d + this.f10676e;
            this.f10675d = i10;
            int i11 = i10 - this.f10678g;
            int i12 = this.f10679h;
            if (i11 <= i12) {
                this.f10676e = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f10676e = i13;
            this.f10675d = i10 - i13;
        }
    }

    public static int a(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long b(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static j c(byte[] bArr, int i10, int i11, boolean z10) {
        a aVar = new a(bArr, i10, i11, z10);
        try {
            aVar.d(i11);
            return aVar;
        } catch (z e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
