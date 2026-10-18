package p3;

import com.newrelic.agent.android.analytics.EventManagerImpl;
import java.util.Arrays;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: Sonic.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f12714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f12715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f12716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f12717f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f12718g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f12719h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final short[] f12720i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public short[] f12721j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12722k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public short[] f12723l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12724m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public short[] f12725n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12726o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12727p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f12728q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f12729r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f12730s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f12731t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f12732u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f12733v;

    public e0(int i10, int i11, float f10, float f11, int i12) {
        this.f12712a = i10;
        this.f12713b = i11;
        this.f12714c = f10;
        this.f12715d = f11;
        this.f12716e = i10 / i12;
        this.f12717f = i10 / HttpStatusCodesKt.HTTP_BAD_REQUEST;
        int i13 = i10 / 65;
        this.f12718g = i13;
        int i14 = i13 * 2;
        this.f12719h = i14;
        this.f12720i = new short[i14];
        this.f12721j = new short[i14 * i11];
        this.f12723l = new short[i14 * i11];
        this.f12725n = new short[i14 * i11];
    }

    public static void e(int i10, int i11, short[] sArr, int i12, short[] sArr2, int i13, short[] sArr3, int i14) {
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i12 * i11) + i15;
            int i17 = (i14 * i11) + i15;
            int i18 = (i13 * i11) + i15;
            for (int i19 = 0; i19 < i10; i19++) {
                sArr[i16] = (short) (((sArr3[i17] * i19) + ((i10 - i19) * sArr2[i18])) / i10);
                i16 += i11;
                i18 += i11;
                i17 += i11;
            }
        }
    }

    public final void a(short[] sArr, int i10, int i11) {
        short[] sArrC = c(this.f12723l, this.f12724m, i11);
        this.f12723l = sArrC;
        int i12 = this.f12713b;
        System.arraycopy(sArr, i10 * i12, sArrC, this.f12724m * i12, i12 * i11);
        this.f12724m += i11;
    }

    public final void b(short[] sArr, int i10, int i11) {
        int i12 = this.f12719h / i11;
        int i13 = this.f12713b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.f12720i[i16] = (short) (i17 / i14);
        }
    }

    public final short[] c(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f12713b;
        int i13 = length / i12;
        return i10 + i11 <= i13 ? sArr : Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    public final int d(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f12713b;
        int i14 = 1;
        int i15 = 255;
        int i16 = 0;
        int i17 = 0;
        while (i11 <= i12) {
            int iAbs = 0;
            for (int i18 = 0; i18 < i11; i18++) {
                iAbs += Math.abs(sArr[i13 + i18] - sArr[(i13 + i11) + i18]);
            }
            if (iAbs * i16 < i14 * i11) {
                i16 = i11;
                i14 = iAbs;
            }
            if (iAbs * i15 > i17 * i11) {
                i15 = i11;
                i17 = iAbs;
            }
            i11++;
        }
        this.f12732u = i14 / i16;
        this.f12733v = i17 / i15;
        return i16;
    }

    public final void f() {
        int iD;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = this.f12724m;
        float f10 = this.f12714c;
        float f11 = this.f12715d;
        float f12 = f10 / f11;
        float f13 = this.f12716e * f11;
        double d10 = f12;
        float f14 = 1.0f;
        int i17 = 1;
        if (d10 > 1.00001d || d10 < 0.99999d) {
            int i18 = this.f12722k;
            if (i18 >= this.f12719h) {
                int i19 = 0;
                while (true) {
                    int i20 = this.f12729r;
                    if (i20 > 0) {
                        int iMin = Math.min(this.f12719h, i20);
                        a(this.f12721j, i19, iMin);
                        this.f12729r -= iMin;
                        i19 += iMin;
                    } else {
                        short[] sArr = this.f12721j;
                        int i21 = this.f12712a;
                        int i22 = i21 > 4000 ? i21 / EventManagerImpl.DEFAULT_MAX_EVENT_BUFFER_SIZE : i17;
                        if (this.f12713b == i17 && i22 == i17) {
                            iD = d(sArr, i19, this.f12717f, this.f12718g);
                        } else {
                            b(sArr, i19, i22);
                            int iD2 = d(this.f12720i, 0, this.f12717f / i22, this.f12718g / i22);
                            if (i22 != i17) {
                                int i23 = iD2 * i22;
                                int i24 = i22 * 4;
                                int i25 = i23 - i24;
                                int i26 = i23 + i24;
                                int i27 = this.f12717f;
                                if (i25 < i27) {
                                    i25 = i27;
                                }
                                int i28 = this.f12718g;
                                if (i26 > i28) {
                                    i26 = i28;
                                }
                                if (this.f12713b == i17) {
                                    iD = d(sArr, i19, i25, i26);
                                } else {
                                    b(sArr, i19, i17);
                                    iD = d(this.f12720i, 0, i25, i26);
                                }
                            } else {
                                iD = iD2;
                            }
                        }
                        int i29 = this.f12732u;
                        int i30 = ((i29 == 0 || this.f12730s == 0 || this.f12733v > i29 * 3 || i29 * 2 <= this.f12731t * 3) ? 0 : i17) != 0 ? this.f12730s : iD;
                        this.f12731t = i29;
                        this.f12730s = iD;
                        if (d10 > 1.0d) {
                            short[] sArr2 = this.f12721j;
                            if (f12 >= 2.0f) {
                                i11 = (int) (i30 / (f12 - f14));
                            } else {
                                this.f12729r = (int) (((2.0f - f12) * i30) / (f12 - f14));
                                i11 = i30;
                            }
                            short[] sArrC = c(this.f12723l, this.f12724m, i11);
                            this.f12723l = sArrC;
                            int i31 = i11;
                            e(i11, this.f12713b, sArrC, this.f12724m, sArr2, i19, sArr2, i19 + i30);
                            this.f12724m += i31;
                            i19 = i30 + i31 + i19;
                        } else {
                            int i32 = i30;
                            short[] sArr3 = this.f12721j;
                            if (f12 < 0.5f) {
                                i10 = (int) ((i32 * f12) / (f14 - f12));
                            } else {
                                this.f12729r = (int) ((((2.0f * f12) - f14) * i32) / (f14 - f12));
                                i10 = i32;
                            }
                            int i33 = i32 + i10;
                            short[] sArrC2 = c(this.f12723l, this.f12724m, i33);
                            this.f12723l = sArrC2;
                            int i34 = this.f12713b;
                            System.arraycopy(sArr3, i19 * i34, sArrC2, this.f12724m * i34, i34 * i32);
                            e(i10, this.f12713b, this.f12723l, this.f12724m + i32, sArr3, i19 + i32, sArr3, i19);
                            this.f12724m += i33;
                            i19 += i10;
                        }
                    }
                    if (this.f12719h + i19 > i18) {
                        break;
                    }
                    f14 = 1.0f;
                    i17 = 1;
                }
                int i35 = this.f12722k - i19;
                short[] sArr4 = this.f12721j;
                int i36 = this.f12713b;
                System.arraycopy(sArr4, i19 * i36, sArr4, 0, i36 * i35);
                this.f12722k = i35;
            }
            f14 = 1.0f;
        } else {
            a(this.f12721j, 0, this.f12722k);
            this.f12722k = 0;
        }
        if (f13 == f14 || this.f12724m == i16) {
            return;
        }
        int i37 = this.f12712a;
        int i38 = (int) (i37 / f13);
        while (true) {
            if (i38 <= 16384 && i37 <= 16384) {
                break;
            }
            i38 /= 2;
            i37 /= 2;
        }
        int i39 = this.f12724m - i16;
        short[] sArrC3 = c(this.f12725n, this.f12726o, i39);
        this.f12725n = sArrC3;
        short[] sArr5 = this.f12723l;
        int i40 = this.f12713b;
        System.arraycopy(sArr5, i16 * i40, sArrC3, this.f12726o * i40, i40 * i39);
        this.f12724m = i16;
        this.f12726o += i39;
        int i41 = 0;
        while (true) {
            i12 = this.f12726o;
            i13 = i12 - 1;
            if (i41 >= i13) {
                break;
            }
            while (true) {
                i14 = this.f12727p + 1;
                int i42 = i14 * i38;
                i15 = this.f12728q;
                if (i42 <= i15 * i37) {
                    break;
                }
                this.f12723l = c(this.f12723l, this.f12724m, 1);
                int i43 = 0;
                while (true) {
                    int i44 = this.f12713b;
                    if (i43 < i44) {
                        short[] sArr6 = this.f12723l;
                        int i45 = (this.f12724m * i44) + i43;
                        short[] sArr7 = this.f12725n;
                        int i46 = (i41 * i44) + i43;
                        short s10 = sArr7[i46];
                        short s11 = sArr7[i46 + i44];
                        int i47 = this.f12728q * i37;
                        int i48 = this.f12727p;
                        int i49 = i48 * i38;
                        int i50 = (i48 + 1) * i38;
                        int i51 = i50 - i47;
                        int i52 = i50 - i49;
                        sArr6[i45] = (short) ((((i52 - i51) * s11) + (s10 * i51)) / i52);
                        i43++;
                    }
                }
                this.f12728q++;
                this.f12724m++;
            }
            this.f12727p = i14;
            if (i14 == i37) {
                this.f12727p = 0;
                m5.a.e(i15 == i38);
                this.f12728q = 0;
            }
            i41++;
        }
        if (i13 == 0) {
            return;
        }
        short[] sArr8 = this.f12725n;
        int i53 = this.f12713b;
        System.arraycopy(sArr8, i13 * i53, sArr8, 0, (i12 - i13) * i53);
        this.f12726o -= i13;
    }
}
