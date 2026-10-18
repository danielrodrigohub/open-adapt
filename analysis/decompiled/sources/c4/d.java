package c4;

import n3.s0;

/* JADX INFO: compiled from: Ac4Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.v f3932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f3933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public s3.w f3936e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3937f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3938g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3939h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3940i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f3941j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public s0 f3942k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3943l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f3944m;

    public d(String str) {
        m5.v vVar = new m5.v(new byte[16], 16);
        this.f3932a = vVar;
        this.f3933b = new m5.w(vVar.f10471a);
        this.f3937f = 0;
        this.f3938g = 0;
        this.f3939h = false;
        this.f3940i = false;
        this.f3944m = -9223372036854775807L;
        this.f3934c = str;
    }

    @Override // c4.j
    public final void a() {
        this.f3937f = 0;
        this.f3938g = 0;
        this.f3939h = false;
        this.f3940i = false;
        this.f3944m = -9223372036854775807L;
    }

    @Override // c4.j
    public final void c(m5.w wVar) {
        boolean z10;
        m5.a.f(this.f3936e);
        while (true) {
            int i10 = wVar.f10477c - wVar.f10476b;
            if (i10 <= 0) {
                return;
            }
            int i11 = this.f3937f;
            if (i11 == 0) {
                while (true) {
                    if (wVar.f10477c - wVar.f10476b <= 0) {
                        z10 = false;
                        break;
                    }
                    if (this.f3939h) {
                        int iT = wVar.t();
                        this.f3939h = iT == 172;
                        if (iT == 64 || iT == 65) {
                            this.f3940i = iT == 65;
                            z10 = true;
                            break;
                        }
                    } else {
                        this.f3939h = wVar.t() == 172;
                    }
                }
                if (z10) {
                    this.f3937f = 1;
                    byte[] bArr = this.f3933b.f10475a;
                    bArr[0] = -84;
                    bArr[1] = (byte) (this.f3940i ? 65 : 64);
                    this.f3938g = 2;
                }
            } else if (i11 == 1) {
                byte[] bArr2 = this.f3933b.f10475a;
                int iMin = Math.min(i10, 16 - this.f3938g);
                wVar.d(bArr2, this.f3938g, iMin);
                int i12 = this.f3938g + iMin;
                this.f3938g = i12;
                if (i12 == 16) {
                    this.f3932a.k(0);
                    p3.c.a aVarB = p3.c.b(this.f3932a);
                    s0 s0Var = this.f3942k;
                    if (s0Var == null || 2 != s0Var.F || aVarB.f12683a != s0Var.G || !"audio/ac4".equals(s0Var.f11687s)) {
                        s0.a aVar = new s0.a();
                        aVar.f11695a = this.f3935d;
                        aVar.f11705k = "audio/ac4";
                        aVar.f11718x = 2;
                        aVar.f11719y = aVarB.f12683a;
                        aVar.f11697c = this.f3934c;
                        s0 s0Var2 = new s0(aVar);
                        this.f3942k = s0Var2;
                        this.f3936e.b(s0Var2);
                    }
                    this.f3943l = aVarB.f12684b;
                    this.f3941j = (((long) aVarB.f12685c) * 1000000) / ((long) this.f3942k.G);
                    this.f3933b.D(0);
                    this.f3936e.f(this.f3933b, 16);
                    this.f3937f = 2;
                }
            } else if (i11 == 2) {
                int iMin2 = Math.min(i10, this.f3943l - this.f3938g);
                this.f3936e.f(wVar, iMin2);
                int i13 = this.f3938g + iMin2;
                this.f3938g = i13;
                int i14 = this.f3943l;
                if (i13 == i14) {
                    long j10 = this.f3944m;
                    if (j10 != -9223372036854775807L) {
                        this.f3936e.c(j10, 1, i14, 0, null);
                        this.f3944m += this.f3941j;
                    }
                    this.f3937f = 0;
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
            this.f3944m = j10;
        }
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f3935d = dVar.b();
        this.f3936e = jVar.p(dVar.c(), 1);
    }
}
