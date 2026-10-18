package p3;

/* JADX INFO: compiled from: MpegAudioUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f12668a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f12669b = {44100, 48000, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f12670c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f12671d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f12672e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f12673f = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f12674g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* JADX INFO: compiled from: MpegAudioUtil.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f12675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f12676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f12677c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f12678d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f12679e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f12680f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f12681g;

        public final boolean a(int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            if (!b0.c(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
                return false;
            }
            this.f12675a = i11;
            this.f12676b = b0.f12668a[3 - i12];
            int i15 = b0.f12669b[i14];
            this.f12678d = i15;
            if (i11 == 2) {
                this.f12678d = i15 / 2;
            } else if (i11 == 0) {
                this.f12678d = i15 / 4;
            }
            int i16 = (i10 >>> 9) & 1;
            this.f12681g = b0.b(i11, i12);
            if (i12 == 3) {
                int i17 = i11 == 3 ? b0.f12670c[i13 - 1] : b0.f12671d[i13 - 1];
                this.f12680f = i17;
                this.f12677c = (((i17 * 12) / this.f12678d) + i16) * 4;
            } else {
                if (i11 == 3) {
                    int i18 = i12 == 2 ? b0.f12672e[i13 - 1] : b0.f12673f[i13 - 1];
                    this.f12680f = i18;
                    this.f12677c = ((i18 * 144) / this.f12678d) + i16;
                } else {
                    int i19 = b0.f12674g[i13 - 1];
                    this.f12680f = i19;
                    this.f12677c = (((i12 == 1 ? 72 : 144) * i19) / this.f12678d) + i16;
                }
            }
            this.f12679e = ((i10 >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    public static int a(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        if (!c(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
            return -1;
        }
        int i16 = f12669b[i14];
        if (i11 == 2) {
            i16 /= 2;
        } else if (i11 == 0) {
            i16 /= 4;
        }
        int i17 = (i10 >>> 9) & 1;
        if (i12 == 3) {
            return ((((i11 == 3 ? f12670c[i13 - 1] : f12671d[i13 - 1]) * 12) / i16) + i17) * 4;
        }
        if (i11 == 3) {
            i15 = i12 == 2 ? f12672e[i13 - 1] : f12673f[i13 - 1];
        } else {
            i15 = f12674g[i13 - 1];
        }
        if (i11 == 3) {
            return ca.a.c(i15, 144, i16, i17);
        }
        return ca.a.c(i12 == 1 ? 72 : 144, i15, i16, i17);
    }

    public static int b(int i10, int i11) {
        if (i11 == 1) {
            return i10 == 3 ? 1152 : 576;
        }
        if (i11 == 2) {
            return 1152;
        }
        if (i11 == 3) {
            return 384;
        }
        throw new IllegalArgumentException();
    }

    public static boolean c(int i10) {
        return (i10 & (-2097152)) == -2097152;
    }

    public static int d(int i10) {
        int i11;
        int i12;
        if (!c(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0) {
            return -1;
        }
        int i13 = (i10 >>> 12) & 15;
        int i14 = (i10 >>> 10) & 3;
        if (i13 == 0 || i13 == 15 || i14 == 3) {
            return -1;
        }
        return b(i11, i12);
    }
}
