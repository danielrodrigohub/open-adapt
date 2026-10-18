package c4;

import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import m5.g0;
import n3.i1;
import n3.s0;

/* JADX INFO: compiled from: AdtsReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements j {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final byte[] f3969v = {73, 68, 51};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.v f3971b = new m5.v(new byte[7], 7);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m5.w f3972c = new m5.w(Arrays.copyOf(f3969v, 10));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f3974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s3.w f3975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public s3.w f3976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3980k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3981l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3982m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3983n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3984o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3985p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f3986q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3987r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f3988s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public s3.w f3989t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f3990u;

    public f(boolean z10, String str) {
        h();
        this.f3982m = -1;
        this.f3983n = -1;
        this.f3986q = -9223372036854775807L;
        this.f3988s = -9223372036854775807L;
        this.f3970a = z10;
        this.f3973d = str;
    }

    public static boolean g(int i10) {
        return (i10 & 65526) == 65520;
    }

    @Override // c4.j
    public final void a() {
        this.f3988s = -9223372036854775807L;
        this.f3981l = false;
        h();
    }

    public final boolean b(m5.w wVar, byte[] bArr, int i10) {
        int iMin = Math.min(wVar.f10477c - wVar.f10476b, i10 - this.f3978i);
        wVar.d(bArr, this.f3978i, iMin);
        int i11 = this.f3978i + iMin;
        this.f3978i = i11;
        return i11 == i10;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x024c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0271  */
    /* JADX WARN: Code duplicated, block: B:121:0x0278  */
    /* JADX WARN: Code duplicated, block: B:123:0x027c  */
    /* JADX WARN: Code duplicated, block: B:125:0x0280  */
    /* JADX WARN: Code duplicated, block: B:127:0x0284  */
    /* JADX WARN: Code duplicated, block: B:129:0x0288  */
    /* JADX WARN: Code duplicated, block: B:130:0x0290  */
    /* JADX WARN: Code duplicated, block: B:132:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:133:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:134:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:157:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:80:0x0207  */
    @Override // c4.j
    public final void c(m5.w wVar) throws i1 {
        int i10;
        int i11;
        int i12;
        boolean z10;
        boolean z11;
        int iG;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Objects.requireNonNull(this.f3975f);
        int i18 = g0.f10384a;
        while (true) {
            int i19 = wVar.f10477c;
            int i20 = wVar.f10476b;
            int i21 = i19 - i20;
            if (i21 <= 0) {
                return;
            }
            int i22 = this.f3977h;
            int i23 = 13;
            int i24 = 2;
            if (i22 == 0) {
                byte[] bArr = wVar.f10475a;
                while (true) {
                    if (i20 < i19) {
                        int i25 = i20 + 1;
                        int i26 = bArr[i20] & 255;
                        if (this.f3979j == 512 && g((((byte) i26) & 255) | 65280)) {
                            if (!this.f3981l) {
                                int i27 = i25 - 2;
                                wVar.D(i27 + 1);
                                if (i(wVar, this.f3971b.f10471a, 1)) {
                                    this.f3971b.k(4);
                                    int iG2 = this.f3971b.g(1);
                                    int i28 = this.f3982m;
                                    if (i28 != -1 && iG2 != i28) {
                                        z11 = false;
                                    } else if (this.f3983n == -1) {
                                        if (i(wVar, this.f3971b.f10471a, 4)) {
                                            this.f3971b.k(14);
                                            iG = this.f3971b.g(i23);
                                            if (iG >= 7) {
                                                byte[] bArr2 = wVar.f10475a;
                                                i13 = wVar.f10477c;
                                                i14 = i27 + iG;
                                                if (i14 < i13 && (bArr2[i14] != -1 ? !(bArr2[i14] == 73 && ((i15 = i14 + 1) == i13 || (bArr2[i15] == 68 && ((i16 = i14 + 2) == i13 || bArr2[i16] == 51)))) : !((i17 = i14 + 1) == i13 || (g((bArr2[i17] & 255) | 65280) && ((bArr2[i17] & 8) >> 3) == iG2)))) {
                                                }
                                            }
                                            z11 = false;
                                        }
                                        z11 = true;
                                    } else if (i(wVar, this.f3971b.f10471a, 1)) {
                                        this.f3971b.k(i24);
                                        if (this.f3971b.g(4) != this.f3983n) {
                                            z11 = false;
                                        } else {
                                            wVar.D(i27 + 2);
                                            if (i(wVar, this.f3971b.f10471a, 4)) {
                                                this.f3971b.k(14);
                                                iG = this.f3971b.g(i23);
                                                if (iG >= 7) {
                                                    byte[] bArr3 = wVar.f10475a;
                                                    i13 = wVar.f10477c;
                                                    i14 = i27 + iG;
                                                    if (i14 < i13) {
                                                    }
                                                }
                                                z11 = false;
                                            }
                                            z11 = true;
                                        }
                                    } else {
                                        z11 = true;
                                    }
                                } else {
                                    z11 = false;
                                }
                                if (!z11) {
                                    i10 = this.f3979j;
                                    i11 = i26 | i10;
                                    if (i11 != 329) {
                                        i12 = 2;
                                        z10 = false;
                                        this.f3979j = 768;
                                    } else if (i11 != 511) {
                                        i12 = 2;
                                        z10 = false;
                                        this.f3979j = 512;
                                    } else if (i11 != 836) {
                                        i12 = 2;
                                        z10 = false;
                                        this.f3979j = 1024;
                                    } else if (i11 != 1075) {
                                        if (i10 != 256) {
                                            this.f3979j = 256;
                                            i20 = i25 - 1;
                                            i12 = 2;
                                            z10 = false;
                                        } else {
                                            i12 = 2;
                                            z10 = false;
                                        }
                                        i24 = i12;
                                        i23 = 13;
                                    } else {
                                        this.f3977h = 2;
                                        this.f3978i = 3;
                                        this.f3987r = 0;
                                        this.f3972c.D(0);
                                        wVar.D(i25);
                                    }
                                    i20 = i25;
                                    i24 = i12;
                                    i23 = 13;
                                }
                            }
                            this.f3984o = (i26 & 8) >> 3;
                            this.f3980k = (i26 & 1) == 0;
                            if (this.f3981l) {
                                this.f3977h = 3;
                                this.f3978i = 0;
                            } else {
                                this.f3977h = 1;
                                this.f3978i = 0;
                            }
                            wVar.D(i25);
                        } else {
                            i10 = this.f3979j;
                            i11 = i26 | i10;
                            if (i11 != 329) {
                                i12 = 2;
                                z10 = false;
                                this.f3979j = 768;
                            } else if (i11 != 511) {
                                i12 = 2;
                                z10 = false;
                                this.f3979j = 512;
                            } else if (i11 != 836) {
                                i12 = 2;
                                z10 = false;
                                this.f3979j = 1024;
                            } else if (i11 != 1075) {
                                if (i10 != 256) {
                                    this.f3979j = 256;
                                    i20 = i25 - 1;
                                    i12 = 2;
                                    z10 = false;
                                } else {
                                    i12 = 2;
                                    z10 = false;
                                }
                                i24 = i12;
                                i23 = 13;
                            } else {
                                this.f3977h = 2;
                                this.f3978i = 3;
                                this.f3987r = 0;
                                this.f3972c.D(0);
                                wVar.D(i25);
                            }
                            i20 = i25;
                            i24 = i12;
                            i23 = 13;
                        }
                    } else {
                        wVar.D(i20);
                    }
                }
            } else if (i22 != 1) {
                if (i22 != 2) {
                    if (i22 == 3) {
                        if (b(wVar, this.f3971b.f10471a, this.f3980k ? 7 : 5)) {
                            this.f3971b.k(0);
                            if (this.f3985p) {
                                this.f3971b.m(10);
                            } else {
                                int iG3 = this.f3971b.g(2) + 1;
                                if (iG3 != 2) {
                                    m5.p.g("AdtsReader", "Detected audio object type: " + iG3 + ", but assuming AAC LC.");
                                    iG3 = 2;
                                }
                                this.f3971b.m(5);
                                byte[] bArrB = p3.a.b(iG3, this.f3983n, this.f3971b.g(3));
                                p3.a.C0228a c0228aE = p3.a.e(bArrB);
                                s0.a aVar = new s0.a();
                                aVar.f11695a = this.f3974e;
                                aVar.f11705k = "audio/mp4a-latm";
                                aVar.f11702h = c0228aE.f12655c;
                                aVar.f11718x = c0228aE.f12654b;
                                aVar.f11719y = c0228aE.f12653a;
                                aVar.f11707m = Collections.singletonList(bArrB);
                                aVar.f11697c = this.f3973d;
                                s0 s0Var = new s0(aVar);
                                this.f3986q = 1024000000 / ((long) s0Var.G);
                                this.f3975f.b(s0Var);
                                this.f3985p = true;
                            }
                            this.f3971b.m(4);
                            int iG4 = (this.f3971b.g(13) - 2) - 5;
                            if (this.f3980k) {
                                iG4 -= 2;
                            }
                            s3.w wVar2 = this.f3975f;
                            long j10 = this.f3986q;
                            this.f3977h = 4;
                            this.f3978i = 0;
                            this.f3989t = wVar2;
                            this.f3990u = j10;
                            this.f3987r = iG4;
                        }
                    } else {
                        if (i22 != 4) {
                            throw new IllegalStateException();
                        }
                        int iMin = Math.min(i21, this.f3987r - this.f3978i);
                        this.f3989t.f(wVar, iMin);
                        int i29 = this.f3978i + iMin;
                        this.f3978i = i29;
                        int i30 = this.f3987r;
                        if (i29 == i30) {
                            long j11 = this.f3988s;
                            if (j11 != -9223372036854775807L) {
                                this.f3989t.c(j11, 1, i30, 0, null);
                                this.f3988s += this.f3990u;
                            }
                            h();
                        }
                    }
                } else if (b(wVar, this.f3972c.f10475a, 10)) {
                    this.f3976g.f(this.f3972c, 10);
                    this.f3972c.D(6);
                    s3.w wVar3 = this.f3976g;
                    int iS = this.f3972c.s() + 10;
                    this.f3977h = 4;
                    this.f3978i = 10;
                    this.f3989t = wVar3;
                    this.f3990u = 0L;
                    this.f3987r = iS;
                }
            } else if (i21 != 0) {
                m5.v vVar = this.f3971b;
                vVar.f10471a[0] = wVar.f10475a[i20];
                vVar.k(2);
                int iG5 = this.f3971b.g(4);
                int i31 = this.f3983n;
                if (i31 == -1 || iG5 == i31) {
                    if (!this.f3981l) {
                        this.f3981l = true;
                        this.f3982m = this.f3984o;
                        this.f3983n = iG5;
                    }
                    this.f3977h = 3;
                    this.f3978i = 0;
                } else {
                    this.f3981l = false;
                    h();
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
            this.f3988s = j10;
        }
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f3974e = dVar.b();
        s3.w wVarP = jVar.p(dVar.c(), 1);
        this.f3975f = wVarP;
        this.f3989t = wVarP;
        if (!this.f3970a) {
            this.f3976g = new s3.g();
            return;
        }
        dVar.a();
        s3.w wVarP2 = jVar.p(dVar.c(), 5);
        this.f3976g = wVarP2;
        s0.a aVar = new s0.a();
        aVar.f11695a = dVar.b();
        aVar.f11705k = "application/id3";
        wVarP2.b(new s0(aVar));
    }

    public final void h() {
        this.f3977h = 0;
        this.f3978i = 0;
        this.f3979j = 256;
    }

    public final boolean i(m5.w wVar, byte[] bArr, int i10) {
        if (wVar.f10477c - wVar.f10476b < i10) {
            return false;
        }
        wVar.d(bArr, 0, i10);
        return true;
    }
}
