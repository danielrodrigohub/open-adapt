package r4;

import java.io.IOException;
import l5.i0;
import n3.s0;
import p4.l0;

/* JADX INFO: compiled from: ContainerMediaChunk.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f14593o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f14594p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final f f14595q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f14596r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile boolean f14597s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f14598t;

    public j(l5.j jVar, l5.m mVar, s0 s0Var, int i10, Object obj, long j10, long j11, long j12, long j13, long j14, int i11, long j15, f fVar) {
        super(jVar, mVar, s0Var, i10, obj, j10, j11, j12, j13, j14);
        this.f14593o = i11;
        this.f14594p = j15;
        this.f14595q = fVar;
    }

    @Override // l5.d0.d
    public final void a() throws IOException {
        if (this.f14596r == 0) {
            c cVar = this.f14533m;
            m5.a.f(cVar);
            long j10 = this.f14594p;
            for (l0 l0Var : cVar.f14539b) {
                l0Var.E(j10);
            }
            f fVar = this.f14595q;
            long j11 = this.f14531k;
            long j12 = j11 == -9223372036854775807L ? -9223372036854775807L : j11 - this.f14594p;
            long j13 = this.f14532l;
            ((d) fVar).a(cVar, j12, j13 != -9223372036854775807L ? j13 - this.f14594p : -9223372036854775807L);
        }
        try {
            l5.m mVarB = this.f14559b.b(this.f14596r);
            i0 i0Var = this.f14566i;
            s3.e eVar = new s3.e(i0Var, mVarB.f10076f, i0Var.l(mVarB));
            while (!this.f14597s && ((d) this.f14595q).c(eVar)) {
                try {
                } catch (Throwable th) {
                    this.f14596r = eVar.f15040d - this.f14559b.f10076f;
                    throw th;
                }
            }
            this.f14596r = eVar.f15040d - this.f14559b.f10076f;
            c3.d.i(this.f14566i);
            this.f14598t = !this.f14597s;
        } catch (Throwable th2) {
            c3.d.i(this.f14566i);
            throw th2;
        }
    }

    @Override // l5.d0.d
    public final void b() {
        this.f14597s = true;
    }

    @Override // r4.m
    public final long c() {
        return this.f14605j + ((long) this.f14593o);
    }

    @Override // r4.m
    public final boolean d() {
        return this.f14598t;
    }
}
