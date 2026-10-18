package x4;

import java.util.List;
import m5.g0;
import m5.p;
import n3.s0;
import s3.w;

/* JADX INFO: compiled from: RtpOpusReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w f17818b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f17820d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17822f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f17823g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17819c = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17821e = -1;

    public h(w4.f fVar) {
        this.f17817a = fVar;
    }

    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        m5.a.f(this.f17818b);
        if (!this.f17822f) {
            int i11 = wVar.f10476b;
            m5.a.b(wVar.f10477c > 18, "ID Header has insufficient data");
            m5.a.b(wVar.q(8).equals("OpusHead"), "ID Header missing");
            m5.a.b(wVar.t() == 1, "version number must always be 1");
            wVar.D(i11);
            List<byte[]> listD = p4.h.d(wVar.f10475a);
            s0.a aVar = new s0.a(this.f17817a.f17176c);
            aVar.f11707m = listD;
            this.f17818b.b(new s0(aVar));
            this.f17822f = true;
        } else if (this.f17823g) {
            int iA = w4.c.a(this.f17821e);
            if (i10 != iA) {
                p.g("RtpOpusReader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(iA), Integer.valueOf(i10)));
            }
            int i12 = wVar.f10477c - wVar.f10476b;
            this.f17818b.f(wVar, i12);
            this.f17818b.c(g0.R(j10 - this.f17819c, 1000000L, 48000L) + this.f17820d, 1, i12, 0, null);
        } else {
            m5.a.b(wVar.f10477c >= 8, "Comment Header has insufficient data");
            m5.a.b(wVar.q(8).equals("OpusTags"), "Comment Header should follow ID Header");
            this.f17823g = true;
        }
        this.f17821e = i10;
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17819c = j10;
        this.f17820d = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
        this.f17819c = j10;
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 1);
        this.f17818b = wVarP;
        wVarP.b(this.f17817a.f17176c);
    }
}
