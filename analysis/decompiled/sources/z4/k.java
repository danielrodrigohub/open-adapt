package z4;

import androidx.appcompat.widget.p;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;
import m5.g0;
import m5.w;
import n3.i1;
import n3.s0;
import s3.s;
import s3.t;

/* JADX INFO: compiled from: SubtitleExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements s3.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f19340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p f19341b = new p();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f19342c = new w();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s0 f19343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<Long> f19344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<w> f19345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public s3.j f19346g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public s3.w f19347h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f19348i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f19349j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f19350k;

    public k(h hVar, s0 s0Var) {
        this.f19340a = hVar;
        s0.a aVar = new s0.a(s0Var);
        aVar.f11705k = "text/x-exoplayer-cues";
        aVar.f11702h = s0Var.f11687s;
        this.f19343d = new s0(aVar);
        this.f19344e = new ArrayList();
        this.f19345f = new ArrayList();
        this.f19349j = 0;
        this.f19350k = -9223372036854775807L;
    }

    @Override // s3.h
    public final void a() {
        if (this.f19349j == 5) {
            return;
        }
        this.f19340a.a();
        this.f19349j = 5;
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        int i10 = this.f19349j;
        m5.a.e((i10 == 0 || i10 == 5) ? false : true);
        this.f19350k = j11;
        if (this.f19349j == 2) {
            this.f19349j = 1;
        }
        if (this.f19349j == 4) {
            this.f19349j = 3;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<java.lang.Long>] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<m5.w>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<m5.w>] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.ArrayList, java.util.List<m5.w>] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.ArrayList, java.util.List<java.lang.Long>] */
    public final void c() {
        m5.a.f(this.f19347h);
        m5.a.e(this.f19344e.size() == this.f19345f.size());
        long j10 = this.f19350k;
        for (int iC = j10 == -9223372036854775807L ? 0 : g0.c(this.f19344e, Long.valueOf(j10), true); iC < this.f19345f.size(); iC++) {
            w wVar = (w) this.f19345f.get(iC);
            wVar.D(0);
            int length = wVar.f10475a.length;
            this.f19347h.f(wVar, length);
            this.f19347h.c(((Long) this.f19344e.get(iC)).longValue(), 1, length, 0, null);
        }
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.ArrayList, java.util.List<java.lang.Long>] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.ArrayList, java.util.List<m5.w>] */
    @Override // s3.h
    public final int e(s3.i iVar, t tVar) throws IOException, q3.f {
        int i10 = this.f19349j;
        m5.a.e((i10 == 0 || i10 == 5) ? false : true);
        if (this.f19349j == 1) {
            this.f19342c.A(iVar.a() != -1 ? w6.a.a(iVar.a()) : 1024);
            this.f19348i = 0;
            this.f19349j = 2;
        }
        if (this.f19349j == 2) {
            w wVar = this.f19342c;
            int length = wVar.f10475a.length;
            int i11 = this.f19348i;
            if (length == i11) {
                wVar.a(i11 + 1024);
            }
            byte[] bArr = this.f19342c.f10475a;
            int i12 = this.f19348i;
            int iB = iVar.b(bArr, i12, bArr.length - i12);
            if (iB != -1) {
                this.f19348i += iB;
            }
            long jA = iVar.a();
            if ((jA != -1 && ((long) this.f19348i) == jA) || iB == -1) {
                try {
                    l lVarE = this.f19340a.e();
                    while (lVarE == null) {
                        Thread.sleep(5L);
                        lVarE = this.f19340a.e();
                    }
                    lVarE.q(this.f19348i);
                    lVarE.f13581j.put(this.f19342c.f10475a, 0, this.f19348i);
                    lVarE.f13581j.limit(this.f19348i);
                    this.f19340a.c(lVarE);
                    m mVarD = this.f19340a.d();
                    while (mVarD == null) {
                        Thread.sleep(5L);
                        mVarD = this.f19340a.d();
                    }
                    for (int i13 = 0; i13 < mVarD.j(); i13++) {
                        byte[] bArrD = this.f19341b.d(mVarD.i(mVarD.g(i13)));
                        this.f19344e.add(Long.valueOf(mVarD.g(i13)));
                        this.f19345f.add(new w(bArrD));
                    }
                    mVarD.o();
                    c();
                    this.f19349j = 4;
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException();
                } catch (i e10) {
                    throw i1.a("SubtitleDecoder failed.", e10);
                }
            }
        }
        if (this.f19349j == 3) {
            if (iVar.d(iVar.a() != -1 ? w6.a.a(iVar.a()) : 1024) == -1) {
                c();
                this.f19349j = 4;
            }
        }
        return this.f19349j == 4 ? -1 : 0;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        m5.a.e(this.f19349j == 0);
        this.f19346g = jVar;
        this.f19347h = jVar.p(0, 3);
        this.f19346g.b();
        this.f19346g.j(new s(new long[]{0}, new long[]{0}, -9223372036854775807L));
        this.f19347h.b(this.f19343d);
        this.f19349j = 1;
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        return true;
    }
}
