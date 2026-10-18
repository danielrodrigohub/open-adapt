package c4;

import n3.s0;

/* JADX INFO: compiled from: Id3Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s3.w f4135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4136c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4139f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.w f4134a = new m5.w(10);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f4137d = -9223372036854775807L;

    @Override // c4.j
    public final void a() {
        this.f4136c = false;
        this.f4137d = -9223372036854775807L;
    }

    @Override // c4.j
    public final void c(m5.w wVar) {
        m5.a.f(this.f4135b);
        if (this.f4136c) {
            int i10 = wVar.f10477c - wVar.f10476b;
            int i11 = this.f4139f;
            if (i11 < 10) {
                int iMin = Math.min(i10, 10 - i11);
                System.arraycopy(wVar.f10475a, wVar.f10476b, this.f4134a.f10475a, this.f4139f, iMin);
                if (this.f4139f + iMin == 10) {
                    this.f4134a.D(0);
                    if (73 != this.f4134a.t() || 68 != this.f4134a.t() || 51 != this.f4134a.t()) {
                        m5.p.g("Id3Reader", "Discarding invalid ID3 tag");
                        this.f4136c = false;
                        return;
                    } else {
                        this.f4134a.E(3);
                        this.f4138e = this.f4134a.s() + 10;
                    }
                }
            }
            int iMin2 = Math.min(i10, this.f4138e - this.f4139f);
            this.f4135b.f(wVar, iMin2);
            this.f4139f += iMin2;
        }
    }

    @Override // c4.j
    public final void d() {
        int i10;
        m5.a.f(this.f4135b);
        if (this.f4136c && (i10 = this.f4138e) != 0 && this.f4139f == i10) {
            long j10 = this.f4137d;
            if (j10 != -9223372036854775807L) {
                this.f4135b.c(j10, 1, i10, 0, null);
            }
            this.f4136c = false;
        }
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f4136c = true;
        if (j10 != -9223372036854775807L) {
            this.f4137d = j10;
        }
        this.f4138e = 0;
        this.f4139f = 0;
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        s3.w wVarP = jVar.p(dVar.c(), 5);
        this.f4135b = wVarP;
        s0.a aVar = new s0.a();
        aVar.f11695a = dVar.b();
        aVar.f11705k = "application/id3";
        wVarP.b(new s0(aVar));
    }
}
