package r4;

import java.io.IOException;
import l5.i0;
import n3.s0;

/* JADX INFO: compiled from: InitializationChunk.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f f14601j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f.b f14602k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f14603l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile boolean f14604m;

    public l(l5.j jVar, l5.m mVar, s0 s0Var, int i10, Object obj, f fVar) {
        super(jVar, mVar, 2, s0Var, i10, obj, -9223372036854775807L, -9223372036854775807L);
        this.f14601j = fVar;
    }

    @Override // l5.d0.d
    public final void a() throws IOException {
        if (this.f14603l == 0) {
            ((d) this.f14601j).a(this.f14602k, -9223372036854775807L, -9223372036854775807L);
        }
        try {
            l5.m mVarB = this.f14559b.b(this.f14603l);
            i0 i0Var = this.f14566i;
            s3.e eVar = new s3.e(i0Var, mVarB.f10076f, i0Var.l(mVarB));
            while (!this.f14604m && ((d) this.f14601j).c(eVar)) {
                try {
                } catch (Throwable th) {
                    this.f14603l = eVar.f15040d - this.f14559b.f10076f;
                    throw th;
                }
            }
            this.f14603l = eVar.f15040d - this.f14559b.f10076f;
            c3.d.i(this.f14566i);
        } catch (Throwable th2) {
            c3.d.i(this.f14566i);
            throw th2;
        }
    }

    @Override // l5.d0.d
    public final void b() {
        this.f14604m = true;
    }
}
