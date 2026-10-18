package c4;

import java.util.Arrays;
import n3.s0;

/* JADX INFO: compiled from: DtsReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s3.w f3996d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3999g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4000h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public s0 f4001i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4002j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.w f3993a = new m5.w(new byte[18]);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3997e = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f4003k = -9223372036854775807L;

    public h(String str) {
        this.f3994b = str;
    }

    @Override // c4.j
    public final void a() {
        this.f3997e = 0;
        this.f3998f = 0;
        this.f3999g = 0;
        this.f4003k = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0211  */
    /* JADX WARN: Code duplicated, block: B:75:0x021f  */
    /* JADX WARN: Code duplicated, block: B:77:0x0222  */
    /* JADX WARN: Code duplicated, block: B:79:0x0226  */
    /* JADX WARN: Code duplicated, block: B:80:0x0230  */
    /* JADX WARN: Code duplicated, block: B:81:0x023a  */
    /* JADX WARN: Code duplicated, block: B:83:0x0247  */
    @Override // c4.j
    public final void c(m5.w wVar) {
        char c10;
        int i10;
        int i11;
        byte b10;
        boolean z10;
        int i12;
        byte b11;
        int i13;
        byte b12;
        int i14;
        byte b13;
        int i15;
        byte b14;
        m5.v vVar;
        int i16;
        int i17;
        boolean z11;
        m5.a.f(this.f3996d);
        while (true) {
            int i18 = wVar.f10477c - wVar.f10476b;
            if (i18 <= 0) {
                return;
            }
            int i19 = this.f3997e;
            int i20 = 8;
            int i21 = 2;
            if (i19 == 0) {
                while (true) {
                    if (wVar.f10477c - wVar.f10476b <= 0) {
                        z11 = false;
                        break;
                    }
                    int i22 = this.f3999g << 8;
                    this.f3999g = i22;
                    int iT = i22 | wVar.t();
                    this.f3999g = iT;
                    if (iT == 2147385345 || iT == -25230976 || iT == 536864768 || iT == -14745368) {
                        byte[] bArr = this.f3993a.f10475a;
                        bArr[0] = (byte) ((iT >> 24) & 255);
                        bArr[1] = (byte) ((iT >> 16) & 255);
                        bArr[2] = (byte) ((iT >> 8) & 255);
                        bArr[3] = (byte) (iT & 255);
                        this.f3998f = 4;
                        this.f3999g = 0;
                        z11 = true;
                        break;
                    }
                }
                if (z11) {
                    this.f3997e = 1;
                }
            } else if (i19 == 1) {
                byte[] bArr2 = this.f3993a.f10475a;
                int iMin = Math.min(i18, 18 - this.f3998f);
                wVar.d(bArr2, this.f3998f, iMin);
                int i23 = this.f3998f + iMin;
                this.f3998f = i23;
                if (i23 == 18) {
                    byte[] bArr3 = this.f3993a.f10475a;
                    if (this.f4001i == null) {
                        String str = this.f3995c;
                        String str2 = this.f3994b;
                        if (bArr3[0] == 127) {
                            vVar = new m5.v(bArr3, bArr3.length);
                        } else {
                            byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length);
                            if (bArrCopyOf[0] == -2 || bArrCopyOf[0] == -1) {
                                for (int i24 = 0; i24 < bArrCopyOf.length - 1; i24 += 2) {
                                    byte b15 = bArrCopyOf[i24];
                                    int i25 = i24 + 1;
                                    bArrCopyOf[i24] = bArrCopyOf[i25];
                                    bArrCopyOf[i25] = b15;
                                }
                            }
                            m5.v vVar2 = new m5.v(bArrCopyOf, bArrCopyOf.length);
                            if (bArrCopyOf[0] == 31) {
                                m5.v vVar3 = new m5.v(bArrCopyOf, bArrCopyOf.length);
                                while (vVar3.b() >= 16) {
                                    vVar3.m(i21);
                                    int iG = vVar3.g(14) & 16383;
                                    int iMin2 = Math.min(8 - vVar2.f10473c, 14);
                                    int i26 = vVar2.f10473c;
                                    int i27 = (8 - i26) - iMin2;
                                    byte[] bArr4 = vVar2.f10471a;
                                    int i28 = vVar2.f10472b;
                                    bArr4[i28] = (byte) (((65280 >> i26) | ((1 << i27) - 1)) & bArr4[i28]);
                                    int i29 = 14 - iMin2;
                                    bArr4[i28] = (byte) (((iG >>> i29) << i27) | bArr4[i28]);
                                    int i30 = i28 + 1;
                                    while (i29 > i20) {
                                        i29 -= 8;
                                        vVar2.f10471a[i30] = (byte) (iG >>> i29);
                                        i30++;
                                        i20 = 8;
                                    }
                                    int i31 = 8 - i29;
                                    byte[] bArr5 = vVar2.f10471a;
                                    bArr5[i30] = (byte) (bArr5[i30] & ((1 << i31) - 1));
                                    bArr5[i30] = (byte) (((((1 << i29) - 1) & iG) << i31) | bArr5[i30]);
                                    vVar2.m(14);
                                    vVar2.a();
                                    i20 = 8;
                                    i21 = 2;
                                }
                            }
                            vVar2.j(bArrCopyOf, bArrCopyOf.length);
                            vVar = vVar2;
                        }
                        vVar.m(60);
                        int i32 = p3.y.f12912a[vVar.g(6)];
                        int i33 = p3.y.f12913b[vVar.g(4)];
                        int iG2 = vVar.g(5);
                        int[] iArr = p3.y.f12914c;
                        if (iG2 >= 29) {
                            i17 = -1;
                            i16 = 2;
                        } else {
                            int i34 = iArr[iG2] * 1000;
                            i16 = 2;
                            i17 = i34 / 2;
                        }
                        vVar.m(10);
                        int i35 = i32 + (vVar.g(i16) > 0 ? 1 : 0);
                        s0.a aVar = new s0.a();
                        aVar.f11695a = str;
                        aVar.f11705k = "audio/vnd.dts";
                        aVar.f11700f = i17;
                        aVar.f11718x = i35;
                        aVar.f11719y = i33;
                        aVar.f11708n = null;
                        aVar.f11697c = str2;
                        s0 s0Var = new s0(aVar);
                        this.f4001i = s0Var;
                        this.f3996d.b(s0Var);
                        c10 = 0;
                    } else {
                        c10 = 0;
                    }
                    byte b16 = bArr3[c10];
                    if (b16 != -2) {
                        if (b16 == -1) {
                            i15 = ((3 & bArr3[7]) << 12) | ((bArr3[6] & 255) << 4);
                            b14 = bArr3[9];
                        } else if (b16 != 31) {
                            i10 = 4;
                            i11 = ((3 & bArr3[5]) << 12) | ((bArr3[6] & 255) << 4);
                            b10 = bArr3[7];
                        } else {
                            i15 = ((3 & bArr3[6]) << 12) | ((bArr3[7] & 255) << 4);
                            b14 = bArr3[8];
                        }
                        i12 = (i15 | ((b14 & 60) >> 2)) + 1;
                        z10 = true;
                        if (z10) {
                            i12 = (i12 * 16) / 14;
                        }
                        this.f4002j = i12;
                        b11 = bArr3[0];
                        if (b11 != -2) {
                            if (b11 != -1) {
                                int i36 = (bArr3[4] & 7) << 4;
                                b13 = bArr3[7];
                                i13 = i36;
                            } else if (b11 != 31) {
                                i13 = (bArr3[4] & 1) << 6;
                                b12 = bArr3[5];
                            } else {
                                i13 = (7 & bArr3[5]) << 4;
                                b13 = bArr3[6];
                            }
                            i14 = b13 & 60;
                            this.f4000h = (int) ((((long) ((((i14 >> 2) | i13) + 1) * 32)) * 1000000) / ((long) this.f4001i.G));
                            this.f3993a.D(0);
                            this.f3996d.f(this.f3993a, 18);
                            this.f3997e = 2;
                        } else {
                            i13 = (bArr3[5] & 1) << 6;
                            b12 = bArr3[4];
                        }
                        i14 = b12 & 252;
                        this.f4000h = (int) ((((long) ((((i14 >> 2) | i13) + 1) * 32)) * 1000000) / ((long) this.f4001i.G));
                        this.f3993a.D(0);
                        this.f3996d.f(this.f3993a, 18);
                        this.f3997e = 2;
                    } else {
                        i10 = 4;
                        i11 = ((bArr3[4] & 3) << 12) | ((bArr3[7] & 255) << 4);
                        b10 = bArr3[6];
                    }
                    i12 = (i11 | ((b10 & 240) >> i10)) + 1;
                    z10 = false;
                    if (z10) {
                        i12 = (i12 * 16) / 14;
                    }
                    this.f4002j = i12;
                    b11 = bArr3[0];
                    if (b11 != -2) {
                        if (b11 != -1) {
                            int i37 = (bArr3[4] & 7) << 4;
                            b13 = bArr3[7];
                            i13 = i37;
                        } else if (b11 != 31) {
                            i13 = (bArr3[4] & 1) << 6;
                            b12 = bArr3[5];
                        } else {
                            i13 = (7 & bArr3[5]) << 4;
                            b13 = bArr3[6];
                        }
                        i14 = b13 & 60;
                        this.f4000h = (int) ((((long) ((((i14 >> 2) | i13) + 1) * 32)) * 1000000) / ((long) this.f4001i.G));
                        this.f3993a.D(0);
                        this.f3996d.f(this.f3993a, 18);
                        this.f3997e = 2;
                    } else {
                        i13 = (bArr3[5] & 1) << 6;
                        b12 = bArr3[4];
                    }
                    i14 = b12 & 252;
                    this.f4000h = (int) ((((long) ((((i14 >> 2) | i13) + 1) * 32)) * 1000000) / ((long) this.f4001i.G));
                    this.f3993a.D(0);
                    this.f3996d.f(this.f3993a, 18);
                    this.f3997e = 2;
                }
            } else {
                if (i19 != 2) {
                    throw new IllegalStateException();
                }
                int iMin3 = Math.min(i18, this.f4002j - this.f3998f);
                this.f3996d.f(wVar, iMin3);
                int i38 = this.f3998f + iMin3;
                this.f3998f = i38;
                int i39 = this.f4002j;
                if (i38 == i39) {
                    long j10 = this.f4003k;
                    if (j10 != -9223372036854775807L) {
                        this.f3996d.c(j10, 1, i39, 0, null);
                        this.f4003k += this.f4000h;
                    }
                    this.f3997e = 0;
                }
            }
        }
    }

    @Override // c4.j
    public final void d() {
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f4003k = j10;
        }
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f3995c = dVar.b();
        this.f3996d = jVar.p(dVar.c(), 1);
    }
}
