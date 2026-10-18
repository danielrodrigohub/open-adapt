package p3;

import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: Ac3Util.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f12657a = {1, 2, 3, 6};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f12658b = {48000, 44100, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f12659c = {24000, 22050, 16000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f12660d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f12661e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f12662f = {69, 87, 104, 121, 139, 174, HttpStatusCodesKt.HTTP_ALREADY_REPORTED, 243, 278, 348, HttpStatusCodesKt.HTTP_EXPECTATION_FAILED, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* JADX INFO: compiled from: Ac3Util.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f12663a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12665c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f12666d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f12667e;

        public a(String str, int i10, int i11, int i12, int i13) {
            this.f12663a = str;
            this.f12665c = i10;
            this.f12664b = i11;
            this.f12666d = i12;
            this.f12667e = i13;
        }
    }

    public static int a(int i10, int i11) {
        int i12 = i11 / 2;
        if (i10 < 0) {
            return -1;
        }
        int[] iArr = f12658b;
        if (i10 >= 3 || i11 < 0) {
            return -1;
        }
        int[] iArr2 = f12662f;
        if (i12 >= 19) {
            return -1;
        }
        int i13 = iArr[i10];
        if (i13 == 44100) {
            return ((i11 % 2) + iArr2[i12]) * 2;
        }
        int i14 = f12661e[i12];
        return i13 == 32000 ? i14 * 6 : i14 * 4;
    }

    public static a b(m5.v vVar) {
        int i10;
        int i11;
        int i12;
        String str;
        int i13;
        int iG;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iE = vVar.e();
        vVar.m(40);
        boolean z10 = vVar.g(5) > 10;
        vVar.k(iE);
        int i19 = -1;
        if (z10) {
            vVar.m(16);
            int iG2 = vVar.g(2);
            if (iG2 == 0) {
                i19 = 0;
            } else if (iG2 == 1) {
                i19 = 1;
            } else if (iG2 == 2) {
                i19 = 2;
            }
            vVar.m(3);
            int iG3 = (vVar.g(11) + 1) * 2;
            int iG4 = vVar.g(2);
            if (iG4 == 3) {
                i15 = f12659c[vVar.g(2)];
                i14 = 6;
                iG = 3;
            } else {
                iG = vVar.g(2);
                i14 = f12657a[iG];
                i15 = f12658b[iG4];
            }
            int i20 = i14 * 256;
            int iG5 = vVar.g(3);
            boolean zF = vVar.f();
            i10 = f12660d[iG5] + (zF ? 1 : 0);
            vVar.m(10);
            if (vVar.f()) {
                vVar.m(8);
            }
            if (iG5 == 0) {
                vVar.m(5);
                if (vVar.f()) {
                    vVar.m(8);
                }
            }
            if (i19 == 1 && vVar.f()) {
                vVar.m(16);
            }
            if (vVar.f()) {
                if (iG5 > 2) {
                    vVar.m(2);
                }
                if ((iG5 & 1) == 0 || iG5 <= 2) {
                    i17 = 6;
                } else {
                    i17 = 6;
                    vVar.m(6);
                }
                if ((iG5 & 4) != 0) {
                    vVar.m(i17);
                }
                if (zF && vVar.f()) {
                    vVar.m(5);
                }
                if (i19 == 0) {
                    if (vVar.f()) {
                        i18 = 6;
                        vVar.m(6);
                    } else {
                        i18 = 6;
                    }
                    if (iG5 == 0 && vVar.f()) {
                        vVar.m(i18);
                    }
                    if (vVar.f()) {
                        vVar.m(i18);
                    }
                    int iG6 = vVar.g(2);
                    if (iG6 == 1) {
                        vVar.m(5);
                    } else if (iG6 == 2) {
                        vVar.m(12);
                    } else if (iG6 == 3) {
                        int iG7 = vVar.g(5);
                        if (vVar.f()) {
                            vVar.m(5);
                            if (vVar.f()) {
                                vVar.m(4);
                            }
                            if (vVar.f()) {
                                vVar.m(4);
                            }
                            if (vVar.f()) {
                                vVar.m(4);
                            }
                            if (vVar.f()) {
                                vVar.m(4);
                            }
                            if (vVar.f()) {
                                vVar.m(4);
                            }
                            if (vVar.f()) {
                                vVar.m(4);
                            }
                            if (vVar.f()) {
                                vVar.m(4);
                            }
                            if (vVar.f()) {
                                if (vVar.f()) {
                                    vVar.m(4);
                                }
                                if (vVar.f()) {
                                    vVar.m(4);
                                }
                            }
                        }
                        if (vVar.f()) {
                            vVar.m(5);
                            if (vVar.f()) {
                                vVar.m(7);
                                if (vVar.f()) {
                                    vVar.m(8);
                                }
                            }
                        }
                        vVar.m((iG7 + 2) * 8);
                        vVar.c();
                    }
                    if (iG5 < 2) {
                        if (vVar.f()) {
                            vVar.m(14);
                        }
                        if (iG5 == 0 && vVar.f()) {
                            vVar.m(14);
                        }
                    }
                    if (vVar.f()) {
                        if (iG == 0) {
                            vVar.m(5);
                        } else {
                            for (int i21 = 0; i21 < i14; i21++) {
                                if (vVar.f()) {
                                    vVar.m(5);
                                }
                            }
                        }
                    }
                }
            }
            if (vVar.f()) {
                vVar.m(5);
                if (iG5 == 2) {
                    vVar.m(4);
                }
                if (iG5 >= 6) {
                    vVar.m(2);
                }
                if (vVar.f()) {
                    vVar.m(8);
                }
                if (iG5 == 0 && vVar.f()) {
                    vVar.m(8);
                }
                if (iG4 < 3) {
                    vVar.l();
                }
            }
            if (i19 == 0 && iG != 3) {
                vVar.l();
            }
            if (i19 == 2 && (iG == 3 || vVar.f())) {
                i16 = 6;
                vVar.m(6);
            } else {
                i16 = 6;
            }
            str = (vVar.f() && vVar.g(i16) == 1 && vVar.g(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i12 = i20;
            i13 = iG3;
            i11 = i15;
        } else {
            vVar.m(32);
            int iG8 = vVar.g(2);
            String str2 = iG8 == 3 ? null : "audio/ac3";
            int iA = a(iG8, vVar.g(6));
            vVar.m(8);
            int iG9 = vVar.g(3);
            if ((iG9 & 1) != 0 && iG9 != 1) {
                vVar.m(2);
            }
            if ((iG9 & 4) != 0) {
                vVar.m(2);
            }
            if (iG9 == 2) {
                vVar.m(2);
            }
            i19 = iG8 < 3 ? f12658b[iG8] : -1;
            i10 = f12660d[iG9] + (vVar.f() ? 1 : 0);
            i11 = i19;
            i12 = 1536;
            str = str2;
            i13 = iA;
        }
        return new a(str, i10, i11, i13, i12);
    }
}
