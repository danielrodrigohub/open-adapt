package b5;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import m5.g0;
import m5.v;

/* JADX INFO: compiled from: DvbParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f3292h = {0, 7, 8, 15};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final byte[] f3293i = {0, 119, -120, -1};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f3294j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f3295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f3296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Canvas f3297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0054b f3298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f3299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final h f3300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Bitmap f3301g;

    /* JADX INFO: compiled from: DvbParser.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3302a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f3303b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f3304c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int[] f3305d;

        public a(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f3302a = i10;
            this.f3303b = iArr;
            this.f3304c = iArr2;
            this.f3305d = iArr3;
        }
    }

    /* JADX INFO: renamed from: b5.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DvbParser.java */
    public static final class C0054b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3307b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3308c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f3309d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f3310e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f3311f;

        public C0054b(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f3306a = i10;
            this.f3307b = i11;
            this.f3308c = i12;
            this.f3309d = i13;
            this.f3310e = i14;
            this.f3311f = i15;
        }
    }

    /* JADX INFO: compiled from: DvbParser.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3312a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f3313b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f3314c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f3315d;

        public c(int i10, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f3312a = i10;
            this.f3313b = z10;
            this.f3314c = bArr;
            this.f3315d = bArr2;
        }
    }

    /* JADX INFO: compiled from: DvbParser.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3317b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseArray<e> f3318c;

        public d(int i10, int i11, SparseArray sparseArray) {
            this.f3316a = i10;
            this.f3317b = i11;
            this.f3318c = sparseArray;
        }
    }

    /* JADX INFO: compiled from: DvbParser.java */
    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3319a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3320b;

        public e(int i10, int i11) {
            this.f3319a = i10;
            this.f3320b = i11;
        }
    }

    /* JADX INFO: compiled from: DvbParser.java */
    public static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f3322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3323c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f3324d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f3325e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f3326f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f3327g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f3328h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f3329i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final SparseArray<g> f3330j;

        public f(int i10, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, SparseArray sparseArray) {
            this.f3321a = i10;
            this.f3322b = z10;
            this.f3323c = i11;
            this.f3324d = i12;
            this.f3325e = i13;
            this.f3326f = i14;
            this.f3327g = i15;
            this.f3328h = i16;
            this.f3329i = i17;
            this.f3330j = sparseArray;
        }
    }

    /* JADX INFO: compiled from: DvbParser.java */
    public static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3331a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3332b;

        public g(int i10, int i11) {
            this.f3331a = i10;
            this.f3332b = i11;
        }
    }

    /* JADX INFO: compiled from: DvbParser.java */
    public static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseArray<f> f3335c = new SparseArray<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final SparseArray<a> f3336d = new SparseArray<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SparseArray<c> f3337e = new SparseArray<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SparseArray<a> f3338f = new SparseArray<>();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final SparseArray<c> f3339g = new SparseArray<>();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public C0054b f3340h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public d f3341i;

        public h(int i10, int i11) {
            this.f3333a = i10;
            this.f3334b = i11;
        }
    }

    public b(int i10, int i11) {
        Paint paint = new Paint();
        this.f3295a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f3296b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f3297c = new Canvas();
        this.f3298d = new C0054b(719, 575, 0, 719, 0, 575);
        this.f3299e = new a(0, new int[]{0, -1, -16777216, -8421505}, b(), c());
        this.f3300f = new h(i10, i11);
    }

    public static byte[] a(int i10, int i11, v vVar) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) vVar.g(i11);
        }
        return bArr;
    }

    public static int[] b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i10 = 1; i10 < 16; i10++) {
            if (i10 < 8) {
                iArr[i10] = d(255, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i10] = d(255, (i10 & 1) != 0 ? 127 : 0, (i10 & 2) != 0 ? 127 : 0, (i10 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    public static int[] c() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i10 = 0; i10 < 256; i10++) {
            if (i10 < 8) {
                iArr[i10] = d(63, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) == 0 ? 0 : 255);
            } else {
                int i11 = i10 & 136;
                if (i11 == 0) {
                    iArr[i10] = d(255, ((i10 & 1) != 0 ? 85 : 0) + ((i10 & 16) != 0 ? 170 : 0), ((i10 & 2) != 0 ? 85 : 0) + ((i10 & 32) != 0 ? 170 : 0), ((i10 & 4) == 0 ? 0 : 85) + ((i10 & 64) == 0 ? 0 : 170));
                } else if (i11 == 8) {
                    iArr[i10] = d(127, ((i10 & 1) != 0 ? 85 : 0) + ((i10 & 16) != 0 ? 170 : 0), ((i10 & 2) != 0 ? 85 : 0) + ((i10 & 32) != 0 ? 170 : 0), ((i10 & 4) == 0 ? 0 : 85) + ((i10 & 64) == 0 ? 0 : 170));
                } else if (i11 == 128) {
                    iArr[i10] = d(255, ((i10 & 1) != 0 ? 43 : 0) + 127 + ((i10 & 16) != 0 ? 85 : 0), ((i10 & 2) != 0 ? 43 : 0) + 127 + ((i10 & 32) != 0 ? 85 : 0), ((i10 & 4) == 0 ? 0 : 43) + 127 + ((i10 & 64) == 0 ? 0 : 85));
                } else if (i11 == 136) {
                    iArr[i10] = d(255, ((i10 & 1) != 0 ? 43 : 0) + ((i10 & 16) != 0 ? 85 : 0), ((i10 & 2) != 0 ? 43 : 0) + ((i10 & 32) != 0 ? 85 : 0), ((i10 & 4) == 0 ? 0 : 43) + ((i10 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public static int d(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x01aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x01ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:105:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:106:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:108:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:110:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:117:0x020d  */
    /* JADX WARN: Code duplicated, block: B:121:0x021b A[LOOP:3: B:89:0x0170->B:121:0x021b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:143:0x0146 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x0216 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x013e  */
    /* JADX WARN: Code duplicated, block: B:76:0x014c A[LOOP:2: B:41:0x00b2->B:76:0x014c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:91:0x0176  */
    /* JADX WARN: Code duplicated, block: B:92:0x017f  */
    /* JADX WARN: Code duplicated, block: B:94:0x0185  */
    /* JADX WARN: Code duplicated, block: B:96:0x0197  */
    /* JADX WARN: Code duplicated, block: B:98:0x019d  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a2  */
    public static void e(byte[] bArr, int[] iArr, int i10, int i11, int i12, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int i13;
        int i14;
        int iG;
        int iG2;
        char c10;
        char c11;
        int i15;
        int i16;
        int i17;
        int iG3;
        int iG4;
        int i18;
        int iG5;
        int iG6;
        int i19;
        boolean z10;
        int i20;
        int i21;
        int iG7;
        v vVar = new v(bArr, bArr.length);
        int i22 = i11;
        int i23 = i12;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (vVar.b() != 0) {
            int i24 = 8;
            int iG8 = vVar.g(8);
            if (iG8 != 240) {
                int i25 = 3;
                int i26 = 2;
                int i27 = 4;
                int i28 = 1;
                switch (iG8) {
                    case 16:
                        int i29 = 1;
                        if (i10 == 3) {
                            bArr3 = bArrA == null ? f3293i : bArrA;
                        } else {
                            if (i10 == 2) {
                                bArr3 = bArrA3 == null ? f3292h : bArrA3;
                            } else {
                                bArr2 = null;
                            }
                            i13 = i22;
                            i14 = 0;
                            while (true) {
                                iG = vVar.g(2);
                                if (iG != 0) {
                                    i16 = i29;
                                    i15 = i14;
                                    c10 = 4;
                                    c11 = '\b';
                                } else {
                                    if (vVar.f()) {
                                        iG3 = vVar.g(3) + 3;
                                        iG4 = vVar.g(2);
                                        c10 = 4;
                                        c11 = '\b';
                                    } else {
                                        if (vVar.f()) {
                                            i17 = i29;
                                            c10 = 4;
                                            c11 = '\b';
                                        } else {
                                            iG2 = vVar.g(2);
                                            if (iG2 != 0) {
                                                c10 = 4;
                                                c11 = '\b';
                                                i14 = i29;
                                            } else if (iG2 != i29) {
                                                c10 = 4;
                                                c11 = '\b';
                                                i17 = 2;
                                            } else if (iG2 != 2) {
                                                c10 = 4;
                                                c11 = '\b';
                                                iG3 = vVar.g(4) + 12;
                                                iG4 = vVar.g(2);
                                            } else if (iG2 != 3) {
                                                c10 = 4;
                                                c11 = '\b';
                                            } else {
                                                c11 = '\b';
                                                iG3 = vVar.g(8) + 29;
                                                iG4 = vVar.g(2);
                                                c10 = 4;
                                            }
                                            i15 = i14;
                                            iG = 0;
                                            i16 = 0;
                                        }
                                        i16 = i17;
                                        i15 = i14;
                                        iG = 0;
                                    }
                                    int i30 = iG4;
                                    int i31 = iG3;
                                    iG = i30;
                                    i16 = i31;
                                    i15 = i14;
                                }
                                if (i16 == 0 && paint != null) {
                                    if (bArr2 != 0) {
                                        iG = bArr2[iG];
                                    }
                                    paint.setColor(iArr[iG]);
                                    canvas.drawRect(i13, i23, i13 + i16, i23 + 1, paint);
                                }
                                i13 += i16;
                                if (i15 != 0) {
                                    vVar.c();
                                } else {
                                    i14 = i15;
                                    i29 = 1;
                                }
                            }
                        }
                        bArr2 = bArr3;
                        i13 = i22;
                        i14 = 0;
                        while (true) {
                            iG = vVar.g(2);
                            if (iG != 0) {
                                i16 = i29;
                                i15 = i14;
                                c10 = 4;
                                c11 = '\b';
                            } else {
                                if (vVar.f()) {
                                    iG3 = vVar.g(3) + 3;
                                    iG4 = vVar.g(2);
                                    c10 = 4;
                                    c11 = '\b';
                                } else {
                                    if (vVar.f()) {
                                        i17 = i29;
                                        c10 = 4;
                                        c11 = '\b';
                                    } else {
                                        iG2 = vVar.g(2);
                                        if (iG2 != 0) {
                                            c10 = 4;
                                            c11 = '\b';
                                            i14 = i29;
                                        } else if (iG2 != i29) {
                                            c10 = 4;
                                            c11 = '\b';
                                            i17 = 2;
                                        } else if (iG2 != 2) {
                                            c10 = 4;
                                            c11 = '\b';
                                            iG3 = vVar.g(4) + 12;
                                            iG4 = vVar.g(2);
                                        } else if (iG2 != 3) {
                                            c10 = 4;
                                            c11 = '\b';
                                        } else {
                                            c11 = '\b';
                                            iG3 = vVar.g(8) + 29;
                                            iG4 = vVar.g(2);
                                            c10 = 4;
                                        }
                                        i15 = i14;
                                        iG = 0;
                                        i16 = 0;
                                    }
                                    i16 = i17;
                                    i15 = i14;
                                    iG = 0;
                                }
                                int i32 = iG4;
                                int i33 = iG3;
                                iG = i32;
                                i16 = i33;
                                i15 = i14;
                            }
                            if (i16 == 0) {
                            }
                            i13 += i16;
                            if (i15 != 0) {
                                vVar.c();
                            } else {
                                i14 = i15;
                                i29 = 1;
                            }
                            break;
                        }
                        break;
                    case 17:
                        byte[] bArr4 = i10 == 3 ? bArrA2 == null ? f3294j : bArrA2 : null;
                        int i34 = i22;
                        boolean z11 = false;
                        while (true) {
                            int iG9 = vVar.g(i27);
                            if (iG9 != 0) {
                                i19 = 1;
                            } else {
                                if (vVar.f()) {
                                    if (vVar.f()) {
                                        int iG10 = vVar.g(i26);
                                        if (iG10 == 0) {
                                            i18 = 1;
                                        } else if (iG10 == 1) {
                                            i18 = i26;
                                        } else if (iG10 == i26) {
                                            iG5 = vVar.g(i27) + 9;
                                            iG6 = vVar.g(i27);
                                        } else if (iG10 != i25) {
                                            z10 = z11;
                                            iG9 = 0;
                                            i19 = 0;
                                        } else {
                                            iG5 = vVar.g(i24) + 25;
                                            iG6 = vVar.g(i27);
                                        }
                                        z10 = z11;
                                        i19 = i18;
                                        iG9 = 0;
                                    } else {
                                        iG5 = vVar.g(i26) + i27;
                                        iG6 = vVar.g(i27);
                                    }
                                    int i35 = iG6;
                                    int i36 = iG5;
                                    iG9 = i35;
                                    i19 = i36;
                                } else {
                                    int iG11 = vVar.g(i25);
                                    if (iG11 != 0) {
                                        i18 = iG11 + 2;
                                        z10 = z11;
                                        i19 = i18;
                                        iG9 = 0;
                                    } else {
                                        z11 = true;
                                        z10 = z11;
                                        iG9 = 0;
                                        i19 = 0;
                                    }
                                }
                                if (i19 != 0 || paint == null) {
                                    i20 = i26;
                                } else {
                                    if (bArr4 != 0) {
                                        iG9 = bArr4[iG9];
                                    }
                                    paint.setColor(iArr[iG9]);
                                    i20 = 2;
                                    canvas.drawRect(i34, i23, i34 + i19, i23 + 1, paint);
                                }
                                i34 += i19;
                                if (z10) {
                                    vVar.c();
                                    i22 = i34;
                                    continue;
                                } else {
                                    i25 = i25;
                                    i26 = i20;
                                    z11 = z10;
                                    i27 = 4;
                                    i24 = 8;
                                }
                            }
                            z10 = z11;
                            if (i19 != 0) {
                                i20 = i26;
                            } else {
                                i20 = i26;
                            }
                            i34 += i19;
                            if (z10) {
                                vVar.c();
                                i22 = i34;
                                continue;
                            } else {
                                i25 = i25;
                                i26 = i20;
                                z11 = z10;
                                i27 = 4;
                                i24 = 8;
                            }
                            break;
                        }
                        break;
                    case 18:
                        i13 = i22;
                        int i37 = 0;
                        while (true) {
                            int iG12 = vVar.g(8);
                            if (iG12 != 0) {
                                i21 = i37;
                                iG7 = i28;
                            } else if (vVar.f()) {
                                i21 = i37;
                                iG7 = vVar.g(7);
                                iG12 = vVar.g(8);
                            } else {
                                int iG13 = vVar.g(7);
                                if (iG13 != 0) {
                                    i21 = i37;
                                    iG7 = iG13;
                                    iG12 = 0;
                                } else {
                                    i21 = i28;
                                    iG12 = 0;
                                    iG7 = 0;
                                }
                            }
                            if (iG7 != 0 && paint != null) {
                                paint.setColor(iArr[iG12]);
                                canvas.drawRect(i13, i23, i13 + iG7, i23 + 1, paint);
                            }
                            i13 += iG7;
                            if (i21 == 0) {
                                i28 = i28;
                                i37 = i21;
                            }
                            break;
                        }
                        break;
                    default:
                        switch (iG8) {
                            case 32:
                                bArrA3 = a(4, 4, vVar);
                                break;
                            case 33:
                                bArrA = a(4, 8, vVar);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, vVar);
                                break;
                            default:
                                continue;
                        }
                        break;
                }
                i22 = i13;
            } else {
                i23 += 2;
                i22 = i11;
            }
        }
    }

    public static a f(v vVar, int i10) {
        int[] iArr;
        int iG;
        int iG2;
        int iG3;
        int iG4;
        int i11 = 8;
        int iG5 = vVar.g(8);
        vVar.m(8);
        int i12 = i10 - 2;
        int i13 = 4;
        int[] iArr2 = {0, -1, -16777216, -8421505};
        int[] iArrB = b();
        int[] iArrC = c();
        while (i12 > 0) {
            int iG6 = vVar.g(i11);
            int iG7 = vVar.g(i11);
            int i14 = i12 - 2;
            if ((iG7 & 128) != 0) {
                iArr = iArr2;
            } else {
                iArr = (iG7 & 64) != 0 ? iArrB : iArrC;
            }
            if ((iG7 & 1) != 0) {
                iG3 = vVar.g(i11);
                iG = vVar.g(i11);
                iG4 = vVar.g(i11);
                iG2 = vVar.g(i11);
                i12 = i14 - 4;
            } else {
                int iG8 = vVar.g(6) << 2;
                int iG9 = vVar.g(i13) << i13;
                int iG10 = vVar.g(i13) << i13;
                i12 = i14 - 2;
                iG = iG9;
                iG2 = vVar.g(2) << 6;
                iG3 = iG8;
                iG4 = iG10;
            }
            if (iG3 == 0) {
                iG2 = 255;
                iG = 0;
                iG4 = 0;
            }
            double d10 = iG3;
            double d11 = iG - 128;
            double d12 = iG4 - 128;
            iArr[iG6] = d((byte) (255 - (iG2 & 255)), g0.i((int) ((1.402d * d11) + d10), 0, 255), g0.i((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255), g0.i((int) ((d12 * 1.772d) + d10), 0, 255));
            iArr2 = iArr2;
            iG5 = iG5;
            i11 = 8;
            i13 = 4;
        }
        return new a(iG5, iArr2, iArrB, iArrC);
    }

    public static c g(v vVar) {
        byte[] bArr;
        int iG = vVar.g(16);
        vVar.m(4);
        int iG2 = vVar.g(2);
        boolean zF = vVar.f();
        vVar.m(1);
        byte[] bArr2 = g0.f10389f;
        if (iG2 != 1) {
            if (iG2 == 0) {
                int iG3 = vVar.g(16);
                int iG4 = vVar.g(16);
                if (iG3 > 0) {
                    bArr2 = new byte[iG3];
                    vVar.i(bArr2, iG3);
                }
                if (iG4 > 0) {
                    bArr = new byte[iG4];
                    vVar.i(bArr, iG4);
                }
            }
            return new c(iG, zF, bArr2, bArr);
        }
        vVar.m(vVar.g(8) * 16);
        bArr = bArr2;
        return new c(iG, zF, bArr2, bArr);
    }
}
