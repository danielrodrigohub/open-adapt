package r4;

import java.io.IOException;
import n3.s0;
import p4.l0;
import s3.w;

/* JADX INFO: compiled from: SingleSampleMediaChunk.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f14607o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final s0 f14608p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f14609q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f14610r;

    public o(l5.j jVar, l5.m mVar, s0 s0Var, int i10, Object obj, long j10, long j11, long j12, int i11, s0 s0Var2) {
        super(jVar, mVar, s0Var, i10, obj, j10, j11, -9223372036854775807L, -9223372036854775807L, j12);
        this.f14607o = i11;
        this.f14608p = s0Var2;
    }

    @Override // l5.d0.d
    public final void a() throws IOException {
        c cVar = this.f14533m;
        m5.a.f(cVar);
        for (l0 l0Var : cVar.f14539b) {
            l0Var.E(0L);
        }
        w wVarA = cVar.a(this.f14607o);
        wVarA.b(this.f14608p);
        try {
            long jL = this.f14566i.l(this.f14559b.b(this.f14609q));
            if (jL != -1) {
                jL += this.f14609q;
            }
            s3.e eVar = new s3.e(this.f14566i, this.f14609q, jL);
            for (int iD = 0; iD != -1; iD = wVarA.d(eVar, Integer.MAX_VALUE, true)) {
                this.f14609q += (long) iD;
            }
            wVarA.c(this.f14564g, 1, (int) this.f14609q, 0, null);
            c3.d.i(this.f14566i);
            this.f14610r = true;
        } catch (Throwable th) {
            c3.d.i(this.f14566i);
            throw th;
        }
    }

    @Override // l5.d0.d
    public final void b() {
    }

    @Override // r4.m
    public final boolean d() {
        return this.f14610r;
    }
}
