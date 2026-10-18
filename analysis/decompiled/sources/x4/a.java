package x4;

import java.util.Objects;
import m5.g0;
import m5.v;
import s3.w;

/* JADX INFO: compiled from: RtpAacReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f17758b = new v();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17759c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f17761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17762f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f17763g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public w f17764h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f17765i;

    public a(w4.f fVar) {
        this.f17757a = fVar;
        this.f17759c = fVar.f17175b;
        String str = fVar.f17177d.get("mode");
        Objects.requireNonNull(str);
        if (androidx.activity.k.d(str, "AAC-hbr")) {
            this.f17760d = 13;
            this.f17761e = 3;
        } else {
            if (!androidx.activity.k.d(str, "AAC-lbr")) {
                throw new UnsupportedOperationException("AAC mode not supported");
            }
            this.f17760d = 6;
            this.f17761e = 2;
        }
        this.f17762f = this.f17761e + this.f17760d;
    }

    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        Objects.requireNonNull(this.f17764h);
        short sP = wVar.p();
        int i11 = sP / this.f17762f;
        long jR = this.f17765i + g0.R(j10 - this.f17763g, 1000000L, this.f17759c);
        v vVar = this.f17758b;
        Objects.requireNonNull(vVar);
        vVar.j(wVar.f10475a, wVar.f10477c);
        vVar.k(wVar.f10476b * 8);
        if (i11 == 1) {
            int iG = this.f17758b.g(this.f17760d);
            this.f17758b.m(this.f17761e);
            this.f17764h.f(wVar, wVar.f10477c - wVar.f10476b);
            if (z10) {
                this.f17764h.c(jR, 1, iG, 0, null);
                return;
            }
            return;
        }
        wVar.E((sP + 7) / 8);
        long jR2 = jR;
        for (int i12 = 0; i12 < i11; i12++) {
            int iG2 = this.f17758b.g(this.f17760d);
            this.f17758b.m(this.f17761e);
            this.f17764h.f(wVar, iG2);
            this.f17764h.c(jR2, 1, iG2, 0, null);
            jR2 += g0.R(i11, 1000000L, this.f17759c);
        }
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17763g = j10;
        this.f17765i = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
        this.f17763g = j10;
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 1);
        this.f17764h = wVarP;
        wVarP.b(this.f17757a.f17176c);
    }
}
