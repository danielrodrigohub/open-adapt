package ya;

import android.app.Application;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n extends d.c<mc.b0, mc.a0> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final mc.a0 f19063m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f19064n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f19065o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ mc.a0 f19066p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ d f19067q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ qd.l<la.c, fd.o> f19068r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final /* synthetic */ qd.a<fd.o> f19069s;

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f19070h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ n f19071i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, n nVar) {
            super(0);
            this.f19070h = dVar;
            this.f19071i = nVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            this.f19070h.A.F(this.f19071i);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public n(mc.a0 a0Var, d dVar, qd.l<? super la.c, fd.o> lVar, qd.a<fd.o> aVar) {
        super();
        this.f19066p = a0Var;
        this.f19067q = dVar;
        this.f19068r = lVar;
        this.f19069s = aVar;
        this.f19063m = a0Var;
        this.f19064n = androidx.recyclerview.widget.d.c(dVar.f18763f, "\tgetSessionInformation");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f19065o = v9.a.f16444l;
    }

    @Override // nc.c
    public final Object getValue() {
        return this.f19063m;
    }

    @Override // ya.h0
    public final v9.a n() {
        return this.f19065o;
    }

    @Override // ya.h0
    public final qd.a<fd.o> o() {
        return new a(this.f19067q, this);
    }

    @Override // ya.h0
    public final String p() {
        return this.f19064n;
    }

    @Override // ya.h0
    public final void s(Throwable th) {
        p4.h.j(th, "throwable");
        this.f19069s.invoke();
    }

    @Override // ya.h0
    public final void w(Object obj) {
        mc.b0 b0Var = (mc.b0) obj;
        p4.h.j(b0Var, "result");
        qd.l<la.c, fd.o> lVar = this.f19068r;
        la.c.a aVar = la.c.f10192n;
        int i10 = fb.r.f7293a;
        fb.r.a aVar2 = fb.r.a.f7294a;
        Application applicationD = v9.t.f16822a.d();
        String str = this.f19067q.f18763f;
        mc.a0 a0Var = this.f19066p;
        p4.h.j(a0Var, "sessionId");
        lVar.invoke(aVar.a(b0Var, aVar2.a(applicationD, str, new la.b(a0Var.f10968a))));
    }
}
