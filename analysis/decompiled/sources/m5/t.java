package m5;

import java.util.Arrays;

/* JADX INFO: compiled from: NalUnitUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f10435a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f10436b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f10437c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int[] f10438d = new int[10];

    /* JADX INFO: compiled from: NalUnitUtil.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10439a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f10440b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10441c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f10442d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[] f10443e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f10444f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f10445g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f10446h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float f10447i;

        public a(int i10, boolean z10, int i11, int i12, int[] iArr, int i13, int i14, int i15, float f10) {
            this.f10439a = i10;
            this.f10440b = z10;
            this.f10441c = i11;
            this.f10442d = i12;
            this.f10443e = iArr;
            this.f10444f = i13;
            this.f10445g = i14;
            this.f10446h = i15;
            this.f10447i = f10;
        }
    }

    /* JADX INFO: compiled from: NalUnitUtil.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10448a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10449b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f10450c;

        public b(int i10, int i11, boolean z10) {
            this.f10448a = i10;
            this.f10449b = i11;
            this.f10450c = z10;
        }
    }

    /* JADX INFO: compiled from: NalUnitUtil.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10453c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f10454d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f10455e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f10456f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final float f10457g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f10458h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f10459i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f10460j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f10461k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f10462l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final boolean f10463m;

        public c(int i10, int i11, int i12, int i13, int i14, int i15, float f10, boolean z10, boolean z11, int i16, int i17, int i18, boolean z12) {
            this.f10451a = i10;
            this.f10452b = i11;
            this.f10453c = i12;
            this.f10454d = i13;
            this.f10455e = i14;
            this.f10456f = i15;
            this.f10457g = f10;
            this.f10458h = z10;
            this.f10459i = z11;
            this.f10460j = i16;
            this.f10461k = i17;
            this.f10462l = i18;
            this.f10463m = z12;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static int b(byte[] bArr, int i10, int i11, boolean[] zArr) {
        int i12 = i11 - i10;
        m5.a.e(i12 >= 0);
        if (i12 == 0) {
            return i11;
        }
        if (zArr[0]) {
            a(zArr);
            return i10 - 3;
        }
        if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
            a(zArr);
            return i10 - 2;
        }
        if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
            a(zArr);
            return i10 - 1;
        }
        int i13 = i11 - 1;
        int i14 = i10 + 2;
        while (i14 < i13) {
            if ((bArr[i14] & 254) == 0) {
                int i15 = i14 - 2;
                if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && bArr[i14] == 1) {
                    a(zArr);
                    return i15;
                }
                i14 -= 2;
            }
            i14 += 3;
        }
        zArr[0] = i12 <= 2 ? !(i12 != 2 ? !(zArr[1] && bArr[i13] == 1) : !(zArr[2] && bArr[i11 + (-2)] == 0 && bArr[i13] == 1)) : bArr[i11 + (-3)] == 0 && bArr[i11 + (-2)] == 0 && bArr[i13] == 1;
        zArr[1] = i12 <= 1 ? zArr[2] && bArr[i13] == 0 : bArr[i11 + (-2)] == 0 && bArr[i13] == 0;
        zArr[2] = bArr[i13] == 0;
        return i11;
    }

    public static a c(byte[] bArr, int i10, int i11) {
        int i12 = 2;
        x xVar = new x(bArr, i10 + 2, i11);
        xVar.j(4);
        int iE = xVar.e(3);
        xVar.i();
        int iE2 = xVar.e(2);
        boolean zD = xVar.d();
        int iE3 = xVar.e(5);
        int i13 = 0;
        for (int i14 = 0; i14 < 32; i14++) {
            if (xVar.d()) {
                i13 |= 1 << i14;
            }
        }
        int i15 = 6;
        int[] iArr = new int[6];
        for (int i16 = 0; i16 < 6; i16++) {
            iArr[i16] = xVar.e(8);
        }
        int iE4 = xVar.e(8);
        int i17 = 0;
        for (int i18 = 0; i18 < iE; i18++) {
            if (xVar.d()) {
                i17 += 89;
            }
            if (xVar.d()) {
                i17 += 8;
            }
        }
        xVar.j(i17);
        if (iE > 0) {
            xVar.j((8 - iE) * 2);
        }
        xVar.f();
        int iF = xVar.f();
        if (iF == 3) {
            xVar.i();
        }
        int iF2 = xVar.f();
        int iF3 = xVar.f();
        if (xVar.d()) {
            int iF4 = xVar.f();
            int iF5 = xVar.f();
            int iF6 = xVar.f();
            int iF7 = xVar.f();
            iF2 -= (iF4 + iF5) * ((iF == 1 || iF == 2) ? 2 : 1);
            iF3 -= (iF6 + iF7) * (iF == 1 ? 2 : 1);
        }
        xVar.f();
        xVar.f();
        int iF8 = xVar.f();
        for (int i19 = xVar.d() ? 0 : iE; i19 <= iE; i19++) {
            xVar.f();
            xVar.f();
            xVar.f();
        }
        xVar.f();
        xVar.f();
        xVar.f();
        xVar.f();
        xVar.f();
        xVar.f();
        if (xVar.d() && xVar.d()) {
            int i20 = 0;
            int i21 = 4;
            while (i20 < i21) {
                int i22 = 0;
                while (i22 < i15) {
                    if (xVar.d()) {
                        int iMin = Math.min(64, 1 << ((i20 << 1) + 4));
                        if (i20 > 1) {
                            xVar.g();
                        }
                        for (int i23 = 0; i23 < iMin; i23++) {
                            xVar.g();
                        }
                    } else {
                        xVar.f();
                    }
                    i22 += i20 == 3 ? 3 : 1;
                    i15 = 6;
                }
                i20++;
                i21 = 4;
                i15 = 6;
                i12 = 2;
            }
        }
        xVar.j(i12);
        if (xVar.d()) {
            xVar.j(8);
            xVar.f();
            xVar.f();
            xVar.i();
        }
        int iF9 = xVar.f();
        int i24 = 0;
        int[] iArr2 = new int[0];
        int[] iArrCopyOf = new int[0];
        int i25 = -1;
        boolean z10 = true;
        int i26 = -1;
        while (i24 < iF9) {
            if (i24 == 0 || !xVar.d()) {
                z10 = false;
            }
            if (z10) {
                int i27 = i25 + i26;
                int iF10 = (1 - ((xVar.d() ? 1 : 0) * 2)) * (xVar.f() + 1);
                int i28 = i27 + 1;
                boolean[] zArr = new boolean[i28];
                for (int i29 = 0; i29 <= i27; i29++) {
                    if (xVar.d()) {
                        zArr[i29] = true;
                    } else {
                        zArr[i29] = xVar.d();
                    }
                }
                int[] iArr3 = new int[i28];
                int[] iArr4 = new int[i28];
                int i30 = 0;
                for (int i31 = i26 - 1; i31 >= 0; i31--) {
                    int i32 = iArrCopyOf[i31] + iF10;
                    if (i32 < 0 && zArr[i25 + i31]) {
                        iArr3[i30] = i32;
                        i30++;
                    }
                }
                if (iF10 < 0 && zArr[i27]) {
                    iArr3[i30] = iF10;
                    i30++;
                }
                int i33 = i30;
                for (int i34 = 0; i34 < i25; i34++) {
                    int i35 = iArr2[i34] + iF10;
                    if (i35 < 0 && zArr[i34]) {
                        iArr3[i33] = i35;
                        i33++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr3, i33);
                int i36 = 0;
                for (int i37 = i25 - 1; i37 >= 0; i37--) {
                    int i38 = iArr2[i37] + iF10;
                    if (i38 > 0 && zArr[i37]) {
                        iArr4[i36] = i38;
                        i36++;
                    }
                }
                if (iF10 > 0 && zArr[i27]) {
                    iArr4[i36] = iF10;
                    i36++;
                }
                int i39 = i36;
                for (int i40 = 0; i40 < i26; i40++) {
                    int i41 = iArrCopyOf[i40] + iF10;
                    if (i41 > 0 && zArr[i25 + i40]) {
                        iArr4[i39] = i41;
                        i39++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr4, i39);
                i26 = i39;
                i25 = i33;
                iArr2 = iArrCopyOf2;
            } else {
                int iF11 = xVar.f();
                int iF12 = xVar.f();
                int[] iArr5 = new int[iF11];
                for (int i42 = 0; i42 < iF11; i42++) {
                    iArr5[i42] = xVar.f() + 1;
                    xVar.i();
                }
                int i43 = 1;
                int[] iArr6 = new int[iF12];
                int i44 = 0;
                while (i44 < iF12) {
                    iArr6[i44] = xVar.f() + i43;
                    xVar.i();
                    i44++;
                    i43 = 1;
                }
                i25 = iF11;
                i26 = iF12;
                iArr2 = iArr5;
                iArrCopyOf = iArr6;
            }
            i24++;
            z10 = true;
            iF9 = iF9;
            iF2 = iF2;
            iE4 = iE4;
            iE3 = iE3;
            iArr = iArr;
            i13 = i13;
        }
        int i45 = iE3;
        int i46 = i13;
        int[] iArr7 = iArr;
        int i47 = iE4;
        int i48 = iF2;
        if (xVar.d()) {
            for (int i49 = 0; i49 < xVar.f(); i49++) {
                xVar.j(iF8 + 4 + 1);
            }
        }
        xVar.j(2);
        float f10 = 1.0f;
        if (xVar.d()) {
            if (xVar.d()) {
                int iE5 = xVar.e(8);
                if (iE5 == 255) {
                    int iE6 = xVar.e(16);
                    int iE7 = xVar.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f10 = iE6 / iE7;
                    }
                } else {
                    float[] fArr = f10436b;
                    if (iE5 < 17) {
                        f10 = fArr[iE5];
                    } else {
                        da.c.b("Unexpected aspect_ratio_idc value: ", iE5, "NalUnitUtil");
                    }
                }
            }
            if (xVar.d()) {
                xVar.i();
            }
            if (xVar.d()) {
                xVar.j(4);
                if (xVar.d()) {
                    xVar.j(24);
                }
            }
            if (xVar.d()) {
                xVar.f();
                xVar.f();
            }
            xVar.i();
            if (xVar.d()) {
                iF3 *= 2;
            }
        }
        return new a(iE2, zD, i45, i46, iArr7, i47, i48, iF3, f10);
    }

    public static b d(byte[] bArr, int i10) {
        x xVar = new x(bArr, 4, i10);
        int iF = xVar.f();
        int iF2 = xVar.f();
        xVar.i();
        return new b(iF, iF2, xVar.d());
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:67:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:69:0x010e  */
    /* JADX WARN: Code duplicated, block: B:70:0x0110  */
    /* JADX WARN: Code duplicated, block: B:72:0x0115  */
    /* JADX WARN: Code duplicated, block: B:73:0x0118  */
    /* JADX WARN: Code duplicated, block: B:76:0x011d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0145  */
    /* JADX WARN: Code duplicated, block: B:89:0x0157  */
    /* JADX WARN: Code duplicated, block: B:91:0x015d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0160  */
    public static c e(byte[] bArr, int i10, int i11) {
        int iF;
        boolean z10;
        int iF2;
        int i12;
        boolean z11;
        boolean zD;
        int i13;
        int i14;
        int i15;
        float f10;
        int iE;
        float[] fArr;
        int iE2;
        int iE3;
        int i16;
        int i17;
        x xVar = new x(bArr, i10 + 1, i11);
        int iE4 = xVar.e(8);
        int iE5 = xVar.e(8);
        int iE6 = xVar.e(8);
        int iF3 = xVar.f();
        if (iE4 == 100 || iE4 == 110 || iE4 == 122 || iE4 == 244 || iE4 == 44 || iE4 == 83 || iE4 == 86 || iE4 == 118 || iE4 == 128 || iE4 == 138) {
            iF = xVar.f();
            boolean zD2 = iF == 3 ? xVar.d() : false;
            xVar.f();
            xVar.f();
            xVar.i();
            if (xVar.d()) {
                int i18 = iF != 3 ? 8 : 12;
                int i19 = 0;
                while (i19 < i18) {
                    if (xVar.d()) {
                        int i20 = i19 < 6 ? 16 : 64;
                        int iG = 8;
                        int i21 = 8;
                        for (int i22 = 0; i22 < i20; i22++) {
                            if (iG != 0) {
                                iG = ((xVar.g() + i21) + 256) % 256;
                            }
                            if (iG != 0) {
                                i21 = iG;
                            }
                        }
                    }
                    i19++;
                }
            }
            z10 = zD2;
        } else {
            iF = 1;
            z10 = false;
        }
        int iF4 = xVar.f() + 4;
        int iF5 = xVar.f();
        if (iF5 != 0) {
            if (iF5 == 1) {
                boolean zD3 = xVar.d();
                xVar.g();
                xVar.g();
                long jF = xVar.f();
                for (int i23 = 0; i23 < jF; i23++) {
                    xVar.f();
                }
                i12 = 0;
                z11 = zD3;
            } else {
                iF2 = 0;
            }
            xVar.f();
            xVar.i();
            int iF6 = xVar.f() + 1;
            int iF7 = xVar.f() + 1;
            zD = xVar.d();
            i13 = 2 - (zD ? 1 : 0);
            int i24 = iF7 * i13;
            if (!zD) {
                xVar.i();
            }
            xVar.i();
            i14 = iF6 * 16;
            i15 = i24 * 16;
            if (xVar.d()) {
                int iF8 = xVar.f();
                int iF9 = xVar.f();
                int iF10 = xVar.f();
                int iF11 = xVar.f();
                if (iF == 0) {
                    i17 = 1;
                } else {
                    if (iF == 3) {
                        i16 = 1;
                    } else {
                        i16 = 2;
                    }
                    i13 *= iF == 1 ? 2 : 1;
                    i17 = i16;
                }
                i14 -= (iF8 + iF9) * i17;
                i15 -= (iF10 + iF11) * i13;
            }
            int i25 = i14;
            f10 = 1.0f;
            if (xVar.d() && xVar.d()) {
                iE = xVar.e(8);
                if (iE == 255) {
                    iE2 = xVar.e(16);
                    iE3 = xVar.e(16);
                    if (iE2 != 0 && iE3 != 0) {
                        f10 = iE2 / iE3;
                    }
                } else {
                    fArr = f10436b;
                    if (iE < 17) {
                        f10 = fArr[iE];
                    } else {
                        da.c.b("Unexpected aspect_ratio_idc value: ", iE, "NalUnitUtil");
                    }
                }
            }
            return new c(iE4, iE5, iE6, iF3, i25, i15, f10, z10, zD, iF4, iF5, i12, z11);
        }
        iF2 = xVar.f() + 4;
        z11 = false;
        i12 = iF2;
        xVar.f();
        xVar.i();
        int iF12 = xVar.f() + 1;
        int iF13 = xVar.f() + 1;
        zD = xVar.d();
        i13 = 2 - (zD ? 1 : 0);
        int i26 = iF13 * i13;
        if (!zD) {
            xVar.i();
        }
        xVar.i();
        i14 = iF12 * 16;
        i15 = i26 * 16;
        if (xVar.d()) {
            int iF14 = xVar.f();
            int iF15 = xVar.f();
            int iF16 = xVar.f();
            int iF17 = xVar.f();
            if (iF == 0) {
                i17 = 1;
            } else {
                if (iF == 3) {
                    i16 = 1;
                } else {
                    i16 = 2;
                }
                i13 *= iF == 1 ? 2 : 1;
                i17 = i16;
            }
            i14 -= (iF14 + iF15) * i17;
            i15 -= (iF16 + iF17) * i13;
        }
        int i27 = i14;
        f10 = 1.0f;
        if (xVar.d()) {
            iE = xVar.e(8);
            if (iE == 255) {
                iE2 = xVar.e(16);
                iE3 = xVar.e(16);
                if (iE2 != 0) {
                    f10 = iE2 / iE3;
                }
            } else {
                fArr = f10436b;
                if (iE < 17) {
                    f10 = fArr[iE];
                } else {
                    da.c.b("Unexpected aspect_ratio_idc value: ", iE, "NalUnitUtil");
                }
            }
        }
        return new c(iE4, iE5, iE6, iF3, i27, i15, f10, z10, zD, iF4, iF5, i12, z11);
    }

    public static int f(byte[] bArr, int i10) {
        int i11;
        synchronized (f10437c) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10) {
                while (true) {
                    if (i12 >= i10 - 2) {
                        i12 = i10;
                        break;
                    }
                    if (bArr[i12] == 0 && bArr[i12 + 1] == 0 && bArr[i12 + 2] == 3) {
                        break;
                    }
                    i12++;
                }
                if (i12 < i10) {
                    int[] iArr = f10438d;
                    if (iArr.length <= i13) {
                        f10438d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f10438d[i13] = i12;
                    i12 += 3;
                    i13++;
                }
            }
            i11 = i10 - i13;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = f10438d[i16] - i15;
                System.arraycopy(bArr, i15, bArr, i14, i17);
                int i18 = i14 + i17;
                int i19 = i18 + 1;
                bArr[i18] = 0;
                i14 = i19 + 1;
                bArr[i19] = 0;
                i15 += i17 + 3;
            }
            System.arraycopy(bArr, i15, bArr, i14, i11 - i14);
        }
        return i11;
    }
}
