package ya;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.http2.Settings;
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
public final class j extends d.AbstractC0326d<Boolean, oc.b, fd.o> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f19036m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final v9.a f19037n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final qd.a<fd.o> f19038o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f19039p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final List<oc.a> f19040q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f19041r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final /* synthetic */ d f19042s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final /* synthetic */ v9.a f19043t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ ba.h f19044u;

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f19045h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ j f19046i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, j jVar) {
            super(0);
            this.f19045h = dVar;
            this.f19046i = jVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            d dVar = this.f19045h;
            dVar.f18760c = dVar.A.A(this.f19046i);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.ArrayList, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r9v8, types: [java.util.List] */
    public j(d dVar, v9.a aVar, ba.h hVar) {
        super();
        this.f19042s = dVar;
        this.f19043t = aVar;
        this.f19044u = hVar;
        this.f19036m = androidx.recyclerview.widget.d.c(dVar.f18763f, "\tcreateAnimation");
        this.f19037n = aVar;
        this.f19038o = new a(dVar, this);
        this.f19039p = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        List<ba.c> list = hVar.f3678j;
        ?? arrayList = new ArrayList(gd.j.T(list, 10));
        for (ba.c cVar : list) {
            int i10 = cVar.f3621h;
            List<ba.b> list2 = cVar.f3622i;
            ArrayList arrayList2 = new ArrayList(gd.j.T(list2, 10));
            for (ba.b bVar : list2) {
                arrayList2.add(new oc.c((byte) bVar.f3617k, (byte) bVar.f3618l, (byte) bVar.f3619m));
            }
            arrayList.add(new oc.a(i10, arrayList2));
        }
        oc.a aVar2 = (oc.a) gd.n.f0(arrayList);
        int i11 = 0;
        if (!(aVar2 != null && aVar2.f12539a == this.f19039p)) {
            arrayList = gd.n.n0(arrayList);
            ArrayList arrayList3 = new ArrayList();
            for (int i12 = 0; i12 < 3; i12++) {
                arrayList3.add(new oc.c((byte) 0, (byte) 0, (byte) 0));
            }
            ((ArrayList) arrayList).add(new oc.a(this.f19039p, arrayList3));
        }
        this.f19040q = (ArrayList) arrayList;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            i11 += ((oc.a) it.next()).f12539a;
        }
        this.f19041r = i11 - this.f19039p;
    }

    @Override // lc.a
    public final void g() {
    }

    @Override // nc.c
    public final Object getValue() {
        ba.h hVar = this.f19044u;
        return new oc.b(hVar.f3679k, hVar.f3676h, hVar.f3680l, hVar.f3681m, hVar.f3677i, this.f19041r, this.f19040q);
    }

    @Override // lc.a
    public final void i(float f10, float f11) {
    }

    @Override // ya.h0
    public final boolean m(Throwable th) {
        p4.h.j(th, "throwable");
        this.f19042s.f18760c = null;
        return d.this.h0(th);
    }

    @Override // ya.h0
    public final v9.a n() {
        return this.f19037n;
    }

    @Override // ya.h0
    public final qd.a<fd.o> o() {
        return this.f19038o;
    }

    @Override // ya.h0
    public final String p() {
        return this.f19036m;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.h0
    public final void s(Throwable th) {
        p4.h.j(th, "throwable");
        d dVar = this.f19042s;
        ?? r10 = dVar.f18773p;
        y0 y0Var = new y0(this.f19042s.f18763f, this.f19043t, th);
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

    @Override // ya.d.AbstractC0326d
    public final void x() {
        d dVar = this.f19042s;
        dVar.f18760c = null;
        z9.a.IO.b(new s0(new z(dVar, this.f19043t), dVar));
    }
}
