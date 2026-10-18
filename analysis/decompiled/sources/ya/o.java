package ya;

import java.util.ArrayList;
import java.util.List;
import v9.v6;
import v9.x6;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o extends d.b<List<? extends mc.b0>> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f19072m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f19073n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final qd.a<fd.o> f19074o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ d f19075p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ v9.a f19076q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ qd.l<v6, fd.o> f19077r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final /* synthetic */ qd.l<x6, fd.o> f19078s;

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f19079h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ o f19080i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, o oVar) {
            super(0);
            this.f19079h = dVar;
            this.f19080i = oVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            this.f19079h.A.M(this.f19080i);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public o(d dVar, v9.a aVar, qd.l<? super v6, fd.o> lVar, qd.l<? super x6, fd.o> lVar2) {
        super();
        this.f19075p = dVar;
        this.f19076q = aVar;
        this.f19077r = lVar;
        this.f19078s = lVar2;
        this.f19072m = androidx.recyclerview.widget.d.c(dVar.f18763f, "\tgetSessions");
        this.f19073n = aVar;
        this.f19074o = new a(dVar, this);
    }

    @Override // ya.h0
    public final v9.a n() {
        return this.f19073n;
    }

    @Override // ya.h0
    public final qd.a<fd.o> o() {
        return this.f19074o;
    }

    @Override // ya.h0
    public final String p() {
        return this.f19072m;
    }

    @Override // ya.h0
    public final void s(Throwable th) {
        p4.h.j(th, "throwable");
        this.f19077r.invoke(new v6(this.f19075p.f18763f, this.f19076q, th));
    }

    @Override // ya.h0
    public final void w(Object obj) {
        List<mc.b0> list = (List) obj;
        p4.h.j(list, "result");
        d dVar = this.f19075p;
        ArrayList arrayList = new ArrayList(gd.j.T(list, 10));
        for (mc.b0 b0Var : list) {
            la.c.a aVar = la.c.f10192n;
            int i10 = fb.r.f7293a;
            arrayList.add(aVar.a(b0Var, fb.r.a.f7294a.a(v9.t.f16822a.d(), dVar.f18763f, new la.b(b0Var.f10972a.f10968a))));
        }
        this.f19078s.invoke(new x6(this.f19075p.f18763f, this.f19076q, arrayList));
    }
}
