package c4;

import n3.i1;

/* JADX INFO: compiled from: PesReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f4181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.v f4182b = new m5.v(new byte[10], 10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4183c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m5.d0 f4185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4186f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4187g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4190j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4191k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4192l;

    public t(j jVar) {
        this.f4181a = jVar;
    }

    @Override // c4.d0
    public final void a() {
        this.f4183c = 0;
        this.f4184d = 0;
        this.f4188h = false;
        this.f4181a.a();
    }

    @Override // c4.d0
    public final void b(m5.d0 d0Var, s3.j jVar, d0.d dVar) {
        this.f4185e = d0Var;
        this.f4181a.f(jVar, dVar);
    }

    @Override // c4.d0
    public final void c(m5.w wVar, int i10) throws i1 {
        int i11;
        boolean z10;
        m5.a.f(this.f4185e);
        int i12 = -1;
        int i13 = 3;
        if ((i10 & 1) != 0) {
            int i14 = this.f4183c;
            if (i14 != 0 && i14 != 1) {
                if (i14 == 2) {
                    m5.p.g("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i14 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f4190j != -1) {
                        StringBuilder sbC = a0.b.c("Unexpected start indicator: expected ");
                        sbC.append(this.f4190j);
                        sbC.append(" more bytes");
                        m5.p.g("PesReader", sbC.toString());
                    }
                    this.f4181a.d();
                }
            }
            e(1);
        }
        while (true) {
            int i15 = wVar.f10477c;
            int i16 = wVar.f10476b;
            if (i15 - i16 <= 0) {
                return;
            }
            int i17 = this.f4183c;
            if (i17 != 0) {
                if (i17 == 1) {
                    if (d(wVar, this.f4182b.f10471a, 9)) {
                        this.f4182b.k(0);
                        int iG = this.f4182b.g(24);
                        if (iG != 1) {
                            da.c.b("Unexpected start code prefix: ", iG, "PesReader");
                            i11 = -1;
                            this.f4190j = -1;
                            z10 = false;
                        } else {
                            this.f4182b.m(8);
                            int iG2 = this.f4182b.g(16);
                            this.f4182b.m(5);
                            this.f4191k = this.f4182b.f();
                            this.f4182b.m(2);
                            this.f4186f = this.f4182b.f();
                            this.f4187g = this.f4182b.f();
                            this.f4182b.m(6);
                            int iG3 = this.f4182b.g(8);
                            this.f4189i = iG3;
                            if (iG2 == 0) {
                                i11 = -1;
                                this.f4190j = -1;
                            } else {
                                int i18 = ((iG2 + 6) - 9) - iG3;
                                this.f4190j = i18;
                                if (i18 < 0) {
                                    StringBuilder sbC2 = a0.b.c("Found negative packet payload size: ");
                                    sbC2.append(this.f4190j);
                                    m5.p.g("PesReader", sbC2.toString());
                                    i11 = -1;
                                    this.f4190j = -1;
                                } else {
                                    i11 = -1;
                                }
                            }
                            z10 = true;
                        }
                        e(z10 ? 2 : 0);
                    }
                    i12 = i11;
                } else if (i17 == 2) {
                    if (d(wVar, this.f4182b.f10471a, Math.min(10, this.f4189i)) && d(wVar, null, this.f4189i)) {
                        this.f4182b.k(0);
                        this.f4192l = -9223372036854775807L;
                        if (this.f4186f) {
                            this.f4182b.m(4);
                            long jG = ((long) this.f4182b.g(i13)) << 30;
                            this.f4182b.m(1);
                            long jG2 = jG | ((long) (this.f4182b.g(15) << 15));
                            this.f4182b.m(1);
                            long jG3 = jG2 | ((long) this.f4182b.g(15));
                            this.f4182b.m(1);
                            if (!this.f4188h && this.f4187g) {
                                this.f4182b.m(4);
                                long jG4 = ((long) this.f4182b.g(3)) << 30;
                                this.f4182b.m(1);
                                long jG5 = jG4 | ((long) (this.f4182b.g(15) << 15));
                                this.f4182b.m(1);
                                long jG6 = jG5 | ((long) this.f4182b.g(15));
                                this.f4182b.m(1);
                                this.f4185e.b(jG6);
                                this.f4188h = true;
                            }
                            this.f4192l = this.f4185e.b(jG3);
                        }
                        i10 |= this.f4191k ? 4 : 0;
                        this.f4181a.e(this.f4192l, i10);
                        i13 = 3;
                        e(3);
                        i12 = -1;
                    }
                } else {
                    if (i17 != i13) {
                        throw new IllegalStateException();
                    }
                    int i19 = i15 - i16;
                    int i20 = this.f4190j;
                    int i21 = i20 != i12 ? i19 - i20 : 0;
                    if (i21 > 0) {
                        i19 -= i21;
                        wVar.C(i16 + i19);
                    }
                    this.f4181a.c(wVar);
                    int i22 = this.f4190j;
                    if (i22 != i12) {
                        int i23 = i22 - i19;
                        this.f4190j = i23;
                        if (i23 == 0) {
                            this.f4181a.d();
                            e(1);
                        }
                    }
                }
                i11 = -1;
                i12 = i11;
            } else {
                wVar.E(i15 - i16);
            }
        }
    }

    public final boolean d(m5.w wVar, byte[] bArr, int i10) {
        int iMin = Math.min(wVar.f10477c - wVar.f10476b, i10 - this.f4184d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            wVar.E(iMin);
        } else {
            wVar.d(bArr, this.f4184d, iMin);
        }
        int i11 = this.f4184d + iMin;
        this.f4184d = i11;
        return i11 == i10;
    }

    public final void e(int i10) {
        this.f4183c = i10;
        this.f4184d = 0;
    }
}
