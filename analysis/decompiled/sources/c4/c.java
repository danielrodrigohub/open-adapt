package c4;

import java.io.IOException;
import n3.z0;
import okhttp3.internal.http2.Http2;

/* JADX INFO: compiled from: Ac4Extractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements s3.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f3903a = new d(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m5.w f3904b = new m5.w(Http2.INITIAL_MAX_FRAME_SIZE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3905c;

    static {
        z0 z0Var = z0.f11843g;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        this.f3905c = false;
        this.f3903a.a();
    }

    @Override // s3.h
    public final int e(s3.i iVar, s3.t tVar) throws IOException {
        int iB = iVar.b(this.f3904b.f10475a, 0, Http2.INITIAL_MAX_FRAME_SIZE);
        if (iB == -1) {
            return -1;
        }
        this.f3904b.D(0);
        this.f3904b.C(iB);
        if (!this.f3905c) {
            this.f3903a.e(0L, 4);
            this.f3905c = true;
        }
        this.f3903a.c(this.f3904b);
        return 0;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        this.f3903a.f(jVar, new d0.d(0, 1));
        jVar.b();
        jVar.j(new s3.u.b(-9223372036854775807L));
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        s3.e eVar;
        int i10;
        m5.w wVar = new m5.w(10);
        int i11 = 0;
        while (true) {
            eVar = (s3.e) iVar;
            eVar.p(wVar.f10475a, 0, 10, false);
            wVar.D(0);
            if (wVar.v() != 4801587) {
                break;
            }
            wVar.E(3);
            int iS = wVar.s();
            i11 += iS + 10;
            eVar.n(iS, false);
        }
        eVar.f15042f = 0;
        eVar.n(i11, false);
        int i12 = 0;
        int i13 = i11;
        while (true) {
            int i14 = 7;
            eVar.p(wVar.f10475a, 0, 7, false);
            wVar.D(0);
            int iY = wVar.y();
            if (iY == 44096 || iY == 44097) {
                i12++;
                if (i12 >= 4) {
                    return true;
                }
                byte[] bArr = wVar.f10475a;
                if (bArr.length < 7) {
                    i10 = -1;
                } else {
                    int i15 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                    if (i15 == 65535) {
                        i15 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                    } else {
                        i14 = 4;
                    }
                    if (iY == 44097) {
                        i14 += 2;
                    }
                    i10 = i15 + i14;
                }
                if (i10 == -1) {
                    return false;
                }
                eVar.n(i10 - 7, false);
            } else {
                eVar.f15042f = 0;
                i13++;
                if (i13 - i11 >= 8192) {
                    return false;
                }
                eVar.n(i13, false);
                i12 = 0;
            }
        }
    }
}
