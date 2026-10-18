package c4;

import m5.g0;
import n3.s0;

/* JADX INFO: compiled from: PassthroughSectionPayloadReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class s implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public s0 f4178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public m5.d0 f4179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s3.w f4180c;

    public s(String str) {
        s0.a aVar = new s0.a();
        aVar.f11705k = str;
        this.f4178a = new s0(aVar);
    }

    @Override // c4.x
    public final void b(m5.d0 d0Var, s3.j jVar, d0.d dVar) {
        this.f4179b = d0Var;
        dVar.a();
        s3.w wVarP = jVar.p(dVar.c(), 5);
        this.f4180c = wVarP;
        wVarP.b(this.f4178a);
    }

    @Override // c4.x
    public final void c(m5.w wVar) {
        long jC;
        m5.a.f(this.f4179b);
        int i10 = g0.f10384a;
        m5.d0 d0Var = this.f4179b;
        synchronized (d0Var) {
            long j10 = d0Var.f10375c;
            jC = j10 != -9223372036854775807L ? j10 + d0Var.f10374b : d0Var.c();
        }
        long jD = this.f4179b.d();
        if (jC == -9223372036854775807L || jD == -9223372036854775807L) {
            return;
        }
        s0 s0Var = this.f4178a;
        if (jD != s0Var.f11691w) {
            s0.a aVar = new s0.a(s0Var);
            aVar.f11709o = jD;
            s0 s0Var2 = new s0(aVar);
            this.f4178a = s0Var2;
            this.f4180c.b(s0Var2);
        }
        int i11 = wVar.f10477c - wVar.f10476b;
        this.f4180c.f(wVar, i11);
        this.f4180c.c(jC, 1, i11, 0, null);
    }
}
