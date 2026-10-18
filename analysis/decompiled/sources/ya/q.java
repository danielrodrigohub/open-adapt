package ya;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends d.c<mc.k, Integer> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f19083m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final qd.a<fd.o> f19084n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f19085o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final v9.a f19086p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ jd.d<mc.k> f19087q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/Object;Lya/d;Ljd/d<-Lmc/k;>;)V */
    public q(int i10, d dVar, jd.d dVar2) {
        super();
        this.f19087q = dVar2;
        this.f19083m = fa.m.a(i10);
        this.f19084n = new p(dVar, this);
        this.f19085o = a0.d.b("SlotCheck[", fa.m.a(i10), "]");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f19086p = v9.a.f16444l;
    }

    @Override // nc.c
    public final Object getValue() {
        return Integer.valueOf(this.f19083m);
    }

    @Override // ya.d.c, ya.h0
    public final boolean m(Throwable th) {
        p4.h.j(th, "throwable");
        this.f19087q.resumeWith(new mc.k("0.0.0", 10, 0, 0, 0, 0, 0));
        return d.this.h0(th);
    }

    @Override // ya.h0
    public final v9.a n() {
        return this.f19086p;
    }

    @Override // ya.h0
    public final qd.a<fd.o> o() {
        return this.f19084n;
    }

    @Override // ya.h0
    public final String p() {
        return this.f19085o;
    }

    @Override // ya.h0
    public final void s(Throwable th) {
        p4.h.j(th, "throwable");
    }

    @Override // ya.h0
    public final void w(Object obj) {
        mc.k kVar = (mc.k) obj;
        p4.h.j(kVar, "result");
        this.f19087q.resumeWith(kVar);
    }
}
