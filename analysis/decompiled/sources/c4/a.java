package c4;

import java.io.IOException;

/* JADX INFO: compiled from: Ac3Extractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements s3.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f3875a = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f3876b = new m5.w(2786);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3877c;

    static {
        y0.h hVar = y0.h.f18224g;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        this.f3877c = false;
        this.f3875a.a();
    }

    @Override // s3.h
    public final int e(s3.i iVar, s3.t tVar) throws IOException {
        int iB = iVar.b(this.f3876b.f10475a, 0, 2786);
        if (iB == -1) {
            return -1;
        }
        this.f3876b.D(0);
        this.f3876b.C(iB);
        if (!this.f3877c) {
            this.f3875a.e(0L, 4);
            this.f3877c = true;
        }
        this.f3875a.c(this.f3876b);
        return 0;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        this.f3875a.f(jVar, new d0.d(0, 1));
        jVar.b();
        jVar.j(new s3.u.b(-9223372036854775807L));
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        s3.e eVar;
        int iA;
        m5.w wVar = new m5.w(10);
        int i10 = 0;
        while (true) {
            eVar = (s3.e) iVar;
            eVar.p(wVar.f10475a, 0, 10, false);
            wVar.D(0);
            if (wVar.v() != 4801587) {
                break;
            }
            wVar.E(3);
            int iS = wVar.s();
            i10 += iS + 10;
            eVar.n(iS, false);
        }
        eVar.f15042f = 0;
        eVar.n(i10, false);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            eVar.p(wVar.f10475a, 0, 6, false);
            wVar.D(0);
            if (wVar.y() != 2935) {
                eVar.f15042f = 0;
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                eVar.n(i12, false);
                i11 = 0;
            } else {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                byte[] bArr = wVar.f10475a;
                if (bArr.length < 6) {
                    iA = -1;
                } else {
                    iA = ((bArr[5] & 248) >> 3) > 10 ? ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2 : p3.b.a((bArr[4] & 192) >> 6, bArr[4] & 63);
                }
                if (iA == -1) {
                    return false;
                }
                eVar.n(iA - 6, false);
            }
        }
    }
}
