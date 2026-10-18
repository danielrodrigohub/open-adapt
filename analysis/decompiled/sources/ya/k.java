package ya;

import java.util.Objects;
import v9.d4;
import v9.m4;
import v9.p0;
import v9.s0;
import v9.u3;
import v9.u4;
import v9.w1;
import v9.x3;
import v9.y0;
import v9.z1;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k extends d.c<Boolean, oc.e> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f19047m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f19048n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final qd.a<fd.o> f19049o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ d f19050p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ v9.a f19051q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ ba.a f19052r;

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f19053h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ k f19054i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, k kVar) {
            super(0);
            this.f19053h = dVar;
            this.f19054i = kVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            this.f19053h.A.u(this.f19054i);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(d dVar, v9.a aVar, ba.a aVar2) {
        super();
        this.f19050p = dVar;
        this.f19051q = aVar;
        this.f19052r = aVar2;
        this.f19047m = androidx.recyclerview.widget.d.c(dVar.f18763f, "\tcreateAnimation");
        this.f19048n = aVar;
        this.f19049o = new a(dVar, this);
    }

    @Override // nc.c
    public final Object getValue() {
        ba.a aVar = this.f19052r;
        int i10 = aVar.f3611k;
        ba.b bVar = aVar.f3612l;
        int i11 = bVar.f3617k;
        int i12 = bVar.f3618l;
        int i13 = bVar.f3619m;
        ba.d dVar = aVar.f3609i;
        return new oc.e(i10, i11, i12, i13, dVar.f3624h.f3656h, dVar.f3625i.f3738h, dVar.f3626j.f3646h, dVar.f3627k.f3739h, dVar.f3628l.f3630h, dVar.f3629m.f3682h);
    }

    @Override // ya.h0
    public final v9.a n() {
        return this.f19048n;
    }

    @Override // ya.h0
    public final qd.a<fd.o> o() {
        return this.f19049o;
    }

    @Override // ya.h0
    public final String p() {
        return this.f19047m;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.h0
    public final void s(Throwable th) {
        p4.h.j(th, "throwable");
        d dVar = this.f19050p;
        ?? r10 = dVar.f18773p;
        y0 y0Var = new y0(this.f19050p.f18763f, this.f19051q, th);
        v9.t tVar = v9.t.f16822a;
        v9.t.f16830i.a(new eb.b(y0Var));
        Object[] array = r10.toArray(new p0[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        for (p0 p0Var : (p0[]) array) {
            z9.a.IO.b(new r(p0Var, y0Var));
        }
        if ((dVar.A instanceof za.a) || !y0Var.f16924o.b()) {
            return;
        }
        if (y0Var instanceof m4 ? true : y0Var instanceof z1 ? true : y0Var instanceof u4 ? true : y0Var instanceof d4 ? true : y0Var instanceof x3 ? true : y0Var instanceof u3 ? true : y0Var instanceof w1) {
            z9.a.IO.b(new t(dVar, y0Var));
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.h0
    public final void w(Object obj) {
        if (((Boolean) obj).booleanValue()) {
            d dVar = this.f19050p;
            v9.a aVar = this.f19051q;
            int i10 = this.f19052r.f3610j.f3737h;
            Objects.requireNonNull(dVar);
            z9.a.IO.b(new s0(new y(dVar, aVar, i10), dVar));
            return;
        }
        d dVar2 = this.f19050p;
        ?? r10 = dVar2.f18773p;
        y0 y0Var = new y0(this.f19050p.f18763f, this.f19051q, new Exception("Animation could not be created"));
        v9.t tVar = v9.t.f16822a;
        v9.t.f16830i.a(new eb.b(y0Var));
        Object[] array = r10.toArray(new p0[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        for (p0 p0Var : (p0[]) array) {
            z9.a.IO.b(new r(p0Var, y0Var));
        }
        if ((dVar2.A instanceof za.a) || !y0Var.f16924o.b()) {
            return;
        }
        if (y0Var instanceof m4 ? true : y0Var instanceof z1 ? true : y0Var instanceof u4 ? true : y0Var instanceof d4 ? true : y0Var instanceof x3 ? true : y0Var instanceof u3 ? true : y0Var instanceof w1) {
            z9.a.IO.b(new t(dVar2, y0Var));
        }
    }
}
