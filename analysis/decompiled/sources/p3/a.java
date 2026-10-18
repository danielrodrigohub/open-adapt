package p3;

import n3.i1;

/* JADX INFO: compiled from: AacUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f12651a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f12652b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX INFO: renamed from: p3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AacUtil.java */
    public static final class C0228a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12653a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f12655c;

        public C0228a(int i10, int i11, String str) {
            this.f12653a = i10;
            this.f12654b = i11;
            this.f12655c = str;
        }
    }

    public static byte[] a(int i10, int i11) {
        int i12 = 0;
        int i13 = 0;
        int i14 = -1;
        while (true) {
            int[] iArr = f12651a;
            if (i13 >= 13) {
                break;
            }
            if (i10 == iArr[i13]) {
                i14 = i13;
            }
            i13++;
        }
        int i15 = -1;
        while (true) {
            int[] iArr2 = f12652b;
            if (i12 >= 16) {
                break;
            }
            if (i11 == iArr2[i12]) {
                i15 = i12;
            }
            i12++;
        }
        if (i10 == -1 || i15 == -1) {
            throw new IllegalArgumentException(d1.c.a("Invalid sample rate or number of channels: ", i10, ", ", i11));
        }
        return b(2, i14, i15);
    }

    public static byte[] b(int i10, int i11, int i12) {
        return new byte[]{(byte) (((i10 << 3) & 248) | ((i11 >> 1) & 7)), (byte) (((i11 << 7) & 128) | ((i12 << 3) & 120))};
    }

    public static int c(m5.v vVar) throws i1 {
        int iG = vVar.g(4);
        if (iG == 15) {
            return vVar.g(24);
        }
        if (iG < 13) {
            return f12651a[iG];
        }
        throw i1.a(null, null);
    }

    public static C0228a d(m5.v vVar, boolean z10) throws i1 {
        int iG = vVar.g(5);
        if (iG == 31) {
            iG = vVar.g(6) + 32;
        }
        int iC = c(vVar);
        int iG2 = vVar.g(4);
        String strD = androidx.appcompat.widget.e0.d("mp4a.40.", iG);
        if (iG == 5 || iG == 29) {
            iC = c(vVar);
            int iG3 = vVar.g(5);
            if (iG3 == 31) {
                iG3 = vVar.g(6) + 32;
            }
            iG = iG3;
            if (iG == 22) {
                iG2 = vVar.g(4);
            }
        }
        if (z10) {
            if (iG != 1 && iG != 2 && iG != 3 && iG != 4 && iG != 6 && iG != 7 && iG != 17) {
                switch (iG) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw i1.c("Unsupported audio object type: " + iG);
                }
            }
            if (vVar.f()) {
                m5.p.g("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (vVar.f()) {
                vVar.m(14);
            }
            boolean zF = vVar.f();
            if (iG2 == 0) {
                throw new UnsupportedOperationException();
            }
            if (iG == 6 || iG == 20) {
                vVar.m(3);
            }
            if (zF) {
                if (iG == 22) {
                    vVar.m(16);
                }
                if (iG == 17 || iG == 19 || iG == 20 || iG == 23) {
                    vVar.m(3);
                }
                vVar.m(1);
            }
            switch (iG) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iG4 = vVar.g(2);
                    if (iG4 == 2 || iG4 == 3) {
                        throw i1.c("Unsupported epConfig: " + iG4);
                    }
                    break;
            }
        }
        int i10 = f12652b[iG2];
        if (i10 != -1) {
            return new C0228a(iC, i10, strD);
        }
        throw i1.a(null, null);
    }

    public static C0228a e(byte[] bArr) throws i1 {
        return d(new m5.v(bArr, bArr.length), false);
    }
}
