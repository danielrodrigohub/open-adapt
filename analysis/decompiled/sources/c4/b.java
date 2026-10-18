package c4;

import m5.g0;
import n3.s0;

/* JADX INFO: compiled from: Ac3Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.v f3882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f3883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public s3.w f3886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f3890i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public s0 f3891j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3892k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f3893l;

    public b(String str) {
        m5.v vVar = new m5.v(new byte[128], 128);
        this.f3882a = vVar;
        this.f3883b = new m5.w(vVar.f10471a);
        this.f3887f = 0;
        this.f3893l = -9223372036854775807L;
        this.f3884c = str;
    }

    @Override // c4.j
    public final void a() {
        this.f3887f = 0;
        this.f3888g = 0;
        this.f3889h = false;
        this.f3893l = -9223372036854775807L;
    }

    @Override // c4.j
    public final void c(m5.w wVar) {
        boolean z10;
        m5.a.f(this.f3886e);
        while (true) {
            int i10 = wVar.f10477c - wVar.f10476b;
            if (i10 <= 0) {
                return;
            }
            int i11 = this.f3887f;
            if (i11 == 0) {
                while (true) {
                    if (wVar.f10477c - wVar.f10476b <= 0) {
                        z10 = false;
                        break;
                    }
                    if (this.f3889h) {
                        int iT = wVar.t();
                        if (iT == 119) {
                            this.f3889h = false;
                            z10 = true;
                            break;
                        }
                        this.f3889h = iT == 11;
                    } else {
                        this.f3889h = wVar.t() == 11;
                    }
                }
                if (z10) {
                    this.f3887f = 1;
                    byte[] bArr = this.f3883b.f10475a;
                    bArr[0] = 11;
                    bArr[1] = 119;
                    this.f3888g = 2;
                }
            } else if (i11 == 1) {
                byte[] bArr2 = this.f3883b.f10475a;
                int iMin = Math.min(i10, 128 - this.f3888g);
                wVar.d(bArr2, this.f3888g, iMin);
                int i12 = this.f3888g + iMin;
                this.f3888g = i12;
                if (i12 == 128) {
                    this.f3882a.k(0);
                    p3.b.a aVarB = p3.b.b(this.f3882a);
                    s0 s0Var = this.f3891j;
                    if (s0Var == null || aVarB.f12665c != s0Var.F || aVarB.f12664b != s0Var.G || !g0.a(aVarB.f12663a, s0Var.f11687s)) {
                        s0.a aVar = new s0.a();
                        aVar.f11695a = this.f3885d;
                        aVar.f11705k = aVarB.f12663a;
                        aVar.f11718x = aVarB.f12665c;
                        aVar.f11719y = aVarB.f12664b;
                        aVar.f11697c = this.f3884c;
                        s0 s0Var2 = new s0(aVar);
                        this.f3891j = s0Var2;
                        this.f3886e.b(s0Var2);
                    }
                    this.f3892k = aVarB.f12666d;
                    this.f3890i = (((long) aVarB.f12667e) * 1000000) / ((long) this.f3891j.G);
                    this.f3883b.D(0);
                    this.f3886e.f(this.f3883b, 128);
                    this.f3887f = 2;
                }
            } else if (i11 == 2) {
                int iMin2 = Math.min(i10, this.f3892k - this.f3888g);
                this.f3886e.f(wVar, iMin2);
                int i13 = this.f3888g + iMin2;
                this.f3888g = i13;
                int i14 = this.f3892k;
                if (i13 == i14) {
                    long j10 = this.f3893l;
                    if (j10 != -9223372036854775807L) {
                        this.f3886e.c(j10, 1, i14, 0, null);
                        this.f3893l += this.f3890i;
                    }
                    this.f3887f = 0;
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
            this.f3893l = j10;
        }
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f3885d = dVar.b();
        this.f3886e = jVar.p(dVar.c(), 1);
    }
}
