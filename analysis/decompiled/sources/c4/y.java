package c4;

import m5.g0;

/* JADX INFO: compiled from: SectionReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class y implements d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f4221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f4222b = new m5.w(32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4226f;

    public y(x xVar) {
        this.f4221a = xVar;
    }

    @Override // c4.d0
    public final void a() {
        this.f4226f = true;
    }

    @Override // c4.d0
    public final void b(m5.d0 d0Var, s3.j jVar, d0.d dVar) {
        this.f4221a.b(d0Var, jVar, dVar);
        this.f4226f = true;
    }

    @Override // c4.d0
    public final void c(m5.w wVar, int i10) {
        boolean z10 = (i10 & 1) != 0;
        int iT = z10 ? wVar.f10476b + wVar.t() : -1;
        if (this.f4226f) {
            if (!z10) {
                return;
            }
            this.f4226f = false;
            wVar.D(iT);
            this.f4224d = 0;
        }
        while (true) {
            int i11 = wVar.f10477c;
            int i12 = wVar.f10476b;
            if (i11 - i12 <= 0) {
                return;
            }
            int i13 = this.f4224d;
            if (i13 < 3) {
                if (i13 == 0) {
                    int iT2 = wVar.t();
                    wVar.D(wVar.f10476b - 1);
                    if (iT2 == 255) {
                        this.f4226f = true;
                        return;
                    }
                }
                int iMin = Math.min(wVar.f10477c - wVar.f10476b, 3 - this.f4224d);
                wVar.d(this.f4222b.f10475a, this.f4224d, iMin);
                int i14 = this.f4224d + iMin;
                this.f4224d = i14;
                if (i14 == 3) {
                    this.f4222b.D(0);
                    this.f4222b.C(3);
                    this.f4222b.E(1);
                    int iT3 = this.f4222b.t();
                    int iT4 = this.f4222b.t();
                    this.f4225e = (iT3 & 128) != 0;
                    int i15 = (((iT3 & 15) << 8) | iT4) + 3;
                    this.f4223c = i15;
                    byte[] bArr = this.f4222b.f10475a;
                    if (bArr.length < i15) {
                        this.f4222b.a(Math.min(4098, Math.max(i15, bArr.length * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(i11 - i12, this.f4223c - i13);
                wVar.d(this.f4222b.f10475a, this.f4224d, iMin2);
                int i16 = this.f4224d + iMin2;
                this.f4224d = i16;
                int i17 = this.f4223c;
                if (i16 != i17) {
                    continue;
                } else {
                    if (this.f4225e) {
                        byte[] bArr2 = this.f4222b.f10475a;
                        int i18 = g0.f10384a;
                        int i19 = -1;
                        for (int i20 = 0; i20 < i17; i20++) {
                            i19 = g0.f10396m[((i19 >>> 24) ^ (bArr2[i20] & 255)) & 255] ^ (i19 << 8);
                        }
                        if (i19 != 0) {
                            this.f4226f = true;
                            return;
                        }
                        this.f4222b.C(this.f4223c - 4);
                    } else {
                        this.f4222b.C(i17);
                    }
                    this.f4222b.D(0);
                    this.f4221a.c(this.f4222b);
                    this.f4224d = 0;
                }
            }
        }
    }
}
