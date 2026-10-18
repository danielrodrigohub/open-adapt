package c4;

import java.util.Collections;
import java.util.Objects;
import n3.i1;
import n3.s0;

/* JADX INFO: compiled from: LatmReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f4141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m5.v f4142c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s3.w f4143d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s0 f4145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4146g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f4150k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4151l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4152m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4153n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4154o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4155p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f4156q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f4157r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f4158s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4159t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f4160u;

    public p(String str) {
        this.f4140a = str;
        m5.w wVar = new m5.w(1024);
        this.f4141b = wVar;
        byte[] bArr = wVar.f10475a;
        this.f4142c = new m5.v(bArr, bArr.length);
        this.f4150k = -9223372036854775807L;
    }

    public static long b(m5.v vVar) {
        return vVar.g((vVar.g(2) + 1) * 8);
    }

    @Override // c4.j
    public final void a() {
        this.f4146g = 0;
        this.f4150k = -9223372036854775807L;
        this.f4151l = false;
    }

    @Override // c4.j
    public final void c(m5.w wVar) throws i1 {
        int i10;
        boolean zF;
        m5.a.f(this.f4143d);
        while (true) {
            int i11 = wVar.f10477c - wVar.f10476b;
            if (i11 <= 0) {
                return;
            }
            int i12 = this.f4146g;
            if (i12 != 0) {
                if (i12 == 1) {
                    int iT = wVar.t();
                    if ((iT & 224) == 224) {
                        this.f4149j = iT;
                        this.f4146g = 2;
                    } else if (iT != 86) {
                        this.f4146g = 0;
                    }
                } else if (i12 == 2) {
                    int iT2 = ((this.f4149j & (-225)) << 8) | wVar.t();
                    this.f4148i = iT2;
                    m5.w wVar2 = this.f4141b;
                    if (iT2 > wVar2.f10475a.length) {
                        wVar2.A(iT2);
                        m5.v vVar = this.f4142c;
                        byte[] bArr = this.f4141b.f10475a;
                        Objects.requireNonNull(vVar);
                        vVar.j(bArr, bArr.length);
                    }
                    this.f4147h = 0;
                    this.f4146g = 3;
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(i11, this.f4148i - this.f4147h);
                    wVar.d(this.f4142c.f10471a, this.f4147h, iMin);
                    int i13 = this.f4147h + iMin;
                    this.f4147h = i13;
                    if (i13 == this.f4148i) {
                        this.f4142c.k(0);
                        m5.v vVar2 = this.f4142c;
                        if (vVar2.f()) {
                            if (this.f4151l) {
                            }
                            this.f4146g = 0;
                        } else {
                            this.f4151l = true;
                            int iG = vVar2.g(1);
                            int iG2 = iG == 1 ? vVar2.g(1) : 0;
                            this.f4152m = iG2;
                            if (iG2 != 0) {
                                throw i1.a(null, null);
                            }
                            if (iG == 1) {
                                b(vVar2);
                            }
                            if (!vVar2.f()) {
                                throw i1.a(null, null);
                            }
                            this.f4153n = vVar2.g(6);
                            int iG3 = vVar2.g(4);
                            int iG4 = vVar2.g(3);
                            if (iG3 != 0 || iG4 != 0) {
                                throw i1.a(null, null);
                            }
                            if (iG == 0) {
                                int iE = vVar2.e();
                                int iG5 = g(vVar2);
                                vVar2.k(iE);
                                byte[] bArr2 = new byte[(iG5 + 7) / 8];
                                vVar2.h(bArr2, iG5);
                                s0.a aVar = new s0.a();
                                aVar.f11695a = this.f4144e;
                                aVar.f11705k = "audio/mp4a-latm";
                                aVar.f11702h = this.f4160u;
                                aVar.f11718x = this.f4159t;
                                aVar.f11719y = this.f4157r;
                                aVar.f11707m = Collections.singletonList(bArr2);
                                aVar.f11697c = this.f4140a;
                                s0 s0Var = new s0(aVar);
                                if (!s0Var.equals(this.f4145f)) {
                                    this.f4145f = s0Var;
                                    this.f4158s = 1024000000 / ((long) s0Var.G);
                                    this.f4143d.b(s0Var);
                                }
                            } else {
                                vVar2.m(((int) b(vVar2)) - g(vVar2));
                            }
                            int iG6 = vVar2.g(3);
                            this.f4154o = iG6;
                            if (iG6 == 0) {
                                vVar2.m(8);
                            } else if (iG6 == 1) {
                                vVar2.m(9);
                            } else if (iG6 == 3 || iG6 == 4 || iG6 == 5) {
                                vVar2.m(6);
                            } else {
                                if (iG6 != 6 && iG6 != 7) {
                                    throw new IllegalStateException();
                                }
                                vVar2.m(1);
                            }
                            boolean zF2 = vVar2.f();
                            this.f4155p = zF2;
                            this.f4156q = 0L;
                            if (zF2) {
                                if (iG == 1) {
                                    this.f4156q = b(vVar2);
                                } else {
                                    do {
                                        zF = vVar2.f();
                                        this.f4156q = (this.f4156q << 8) + ((long) vVar2.g(8));
                                    } while (zF);
                                }
                            }
                            if (vVar2.f()) {
                                vVar2.m(8);
                            }
                        }
                        if (this.f4152m != 0) {
                            throw i1.a(null, null);
                        }
                        if (this.f4153n != 0) {
                            throw i1.a(null, null);
                        }
                        if (this.f4154o != 0) {
                            throw i1.a(null, null);
                        }
                        int i14 = 0;
                        while (true) {
                            int iG7 = vVar2.g(8);
                            i10 = i14 + iG7;
                            if (iG7 != 255) {
                                break;
                            } else {
                                i14 = i10;
                            }
                        }
                        int iE2 = vVar2.e();
                        if ((iE2 & 7) == 0) {
                            this.f4141b.D(iE2 >> 3);
                        } else {
                            vVar2.h(this.f4141b.f10475a, i10 * 8);
                            this.f4141b.D(0);
                        }
                        this.f4143d.f(this.f4141b, i10);
                        long j10 = this.f4150k;
                        if (j10 != -9223372036854775807L) {
                            this.f4143d.c(j10, 1, i10, 0, null);
                            this.f4150k += this.f4158s;
                        }
                        if (this.f4155p) {
                            vVar2.m((int) this.f4156q);
                        }
                        this.f4146g = 0;
                    } else {
                        continue;
                    }
                }
            } else if (wVar.t() == 86) {
                this.f4146g = 1;
            }
        }
    }

    @Override // c4.j
    public final void d() {
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f4150k = j10;
        }
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f4143d = jVar.p(dVar.c(), 1);
        this.f4144e = dVar.b();
    }

    public final int g(m5.v vVar) throws i1 {
        int iB = vVar.b();
        p3.a.C0228a c0228aD = p3.a.d(vVar, true);
        this.f4160u = c0228aD.f12655c;
        this.f4157r = c0228aD.f12653a;
        this.f4159t = c0228aD.f12654b;
        return iB - vVar.b();
    }
}
