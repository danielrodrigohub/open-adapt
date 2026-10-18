package x4;

import java.util.Objects;
import m5.g0;
import m5.p;
import s3.w;

/* JADX INFO: compiled from: RtpAmrReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f17773h = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f17774i = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w f17778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f17779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17781g;

    public c(w4.f fVar) {
        this.f17775a = fVar;
        String str = fVar.f17176c.f11687s;
        Objects.requireNonNull(str);
        this.f17776b = "audio/amr-wb".equals(str);
        this.f17777c = fVar.f17175b;
        this.f17779e = -9223372036854775807L;
        this.f17781g = -1;
        this.f17780f = 0L;
    }

    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        int iA;
        m5.a.f(this.f17778d);
        int i11 = this.f17781g;
        if (i11 != -1 && i10 != (iA = w4.c.a(i11))) {
            p.g("RtpAmrReader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(iA), Integer.valueOf(i10)));
        }
        wVar.E(1);
        int iB = (wVar.b() >> 3) & 15;
        boolean z11 = this.f17776b;
        boolean z12 = (iB >= 0 && iB <= 8) || iB == 15;
        StringBuilder sbC = a0.b.c("Illegal AMR ");
        sbC.append(z11 ? "WB" : "NB");
        sbC.append(" frame type ");
        sbC.append(iB);
        m5.a.b(z12, sbC.toString());
        int i12 = z11 ? f17774i[iB] : f17773h[iB];
        int i13 = wVar.f10477c - wVar.f10476b;
        m5.a.b(i13 == i12, "compound payload not supported currently");
        this.f17778d.f(wVar, i13);
        this.f17778d.c(this.f17780f + g0.R(j10 - this.f17779e, 1000000L, this.f17777c), 1, i13, 0, null);
        this.f17781g = i10;
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17779e = j10;
        this.f17780f = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
        this.f17779e = j10;
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 1);
        this.f17778d = wVarP;
        wVarP.b(this.f17775a.f17176c);
    }
}
