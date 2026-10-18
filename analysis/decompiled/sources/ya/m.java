package ya;

import v9.s0;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends d.b<mc.a0> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f19056m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f19057n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ d f19058o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ qd.l<la.c, fd.o> f19059p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ qd.a<fd.o> f19060q;

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f19061h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ m f19062i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, m mVar) {
            super(0);
            this.f19061h = dVar;
            this.f19062i = mVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            this.f19061h.A.l(this.f19062i);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public m(d dVar, qd.l<? super la.c, fd.o> lVar, qd.a<fd.o> aVar) {
        super();
        this.f19058o = dVar;
        this.f19059p = lVar;
        this.f19060q = aVar;
        this.f19056m = androidx.recyclerview.widget.d.c(dVar.f18763f, "\tgetActiveSession");
        v9.a.C0295a c0295a = v9.a.f16441i;
        this.f19057n = v9.a.f16444l;
    }

    @Override // ya.h0
    public final v9.a n() {
        return this.f19057n;
    }

    @Override // ya.h0
    public final qd.a<fd.o> o() {
        return new a(this.f19058o, this);
    }

    @Override // ya.h0
    public final String p() {
        return this.f19056m;
    }

    @Override // ya.h0
    public final void s(Throwable th) {
        p4.h.j(th, "throwable");
        this.f19060q.invoke();
    }

    @Override // ya.h0
    public final void w(Object obj) {
        mc.a0 a0Var = (mc.a0) obj;
        p4.h.j(a0Var, "result");
        d dVar = this.f19058o;
        z9.a.IO.b(new s0(new n(a0Var, dVar, this.f19059p, this.f19060q), dVar));
    }
}
