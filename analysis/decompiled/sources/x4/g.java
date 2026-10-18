package x4;

import m5.g0;
import m5.p;
import s3.w;

/* JADX INFO: compiled from: RtpMpeg4Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w f17811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17812c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17815f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f17813d = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17814e = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17816g = 0;

    public g(w4.f fVar) {
        this.f17810a = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0076  */
    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        int i11;
        int iA;
        m5.a.f(this.f17811b);
        int i12 = this.f17814e;
        if (i12 != -1 && i10 != (iA = w4.c.a(i12))) {
            p.g("RtpMpeg4Reader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iA), Integer.valueOf(i10)));
        }
        int i13 = wVar.f10477c - wVar.f10476b;
        this.f17811b.f(wVar, i13);
        if (this.f17816g == 0) {
            byte[] bArr = wVar.f10475a;
            byte[] bArr2 = {0, 0, 1, -74};
            t6.h.d(bArr, "array");
            int i14 = 0;
            loop0: while (true) {
                if (i14 >= (bArr.length - 4) + 1) {
                    i14 = -1;
                    break;
                }
                int i15 = 0;
                while (true) {
                    if (i15 >= 4) {
                        break loop0;
                    } else if (bArr[i14 + i15] != bArr2[i15]) {
                        break;
                    } else {
                        i15++;
                    }
                }
                i14++;
            }
            if (i14 != -1) {
                wVar.D(i14 + 4);
                i11 = (wVar.b() >> 6) != 0 ? 0 : 1;
            }
            this.f17812c = i11;
        }
        this.f17816g += i13;
        if (z10) {
            if (this.f17813d == -9223372036854775807L) {
                this.f17813d = j10;
            }
            this.f17811b.c(g0.R(j10 - this.f17813d, 1000000L, 90000L) + this.f17815f, this.f17812c, this.f17816g, 0, null);
            this.f17816g = 0;
        }
        this.f17814e = i10;
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17813d = j10;
        this.f17815f = j11;
        this.f17816g = 0;
    }

    @Override // x4.i
    public final void c(long j10) {
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 2);
        this.f17811b = wVarP;
        int i11 = g0.f10384a;
        wVarP.b(this.f17810a.f17176c);
    }
}
