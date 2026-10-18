package x4;

import android.util.Log;
import java.util.Objects;
import m5.g0;
import s3.w;

/* JADX INFO: compiled from: RtpPcmReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w f17825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17826c = -9223372036854775807L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f17827d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17828e = -1;

    public j(w4.f fVar) {
        this.f17824a = fVar;
    }

    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        int iA;
        Objects.requireNonNull(this.f17825b);
        int i11 = this.f17828e;
        if (i11 != -1 && i10 != (iA = w4.c.a(i11))) {
            Log.w("RtpPcmReader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(iA), Integer.valueOf(i10)));
        }
        long jR = this.f17827d + g0.R(j10 - this.f17826c, 1000000L, this.f17824a.f17175b);
        int i12 = wVar.f10477c - wVar.f10476b;
        this.f17825b.f(wVar, i12);
        this.f17825b.c(jR, 1, i12, 0, null);
        this.f17828e = i10;
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17826c = j10;
        this.f17827d = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
        this.f17826c = j10;
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 1);
        this.f17825b = wVarP;
        wVarP.b(this.f17824a.f17176c);
    }
}
