package ya;

import v9.a1;
import v9.a2;
import v9.d4;
import v9.f2;
import v9.f4;
import v9.m4;
import v9.n4;
import v9.p0;
import v9.p2;
import v9.u3;
import v9.u4;
import v9.w1;
import v9.w3;
import v9.w4;
import v9.x3;
import v9.y0;
import v9.y1;
import v9.z1;
import v9.z3;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z extends d.b<Boolean> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final qd.a<fd.o> f19111m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f19112n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v9.a f19113o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ d f19114p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ v9.a f19115q;

    /* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f19116h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ z f19117i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, z zVar) {
            super(0);
            this.f19116h = dVar;
            this.f19117i = zVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            this.f19116h.A.d(this.f19117i);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(d dVar, v9.a aVar) {
        super();
        this.f19114p = dVar;
        this.f19115q = aVar;
        this.f19111m = new a(dVar, this);
        this.f19112n = androidx.recyclerview.widget.d.c(dVar.f18763f, "\tstartCustomAnimation");
        this.f19113o = aVar;
    }

    @Override // ya.h0
    public final v9.a n() {
        return this.f19113o;
    }

    @Override // ya.h0
    public final qd.a<fd.o> o() {
        return this.f19111m;
    }

    @Override // ya.h0
    public final String p() {
        return this.f19112n;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.h0
    public final void s(Throwable th) {
        p4.h.j(th, "throwable");
        d dVar = this.f19114p;
        ?? r10 = dVar.f18773p;
        y0 y0Var = new y0(this.f19114p.f18763f, this.f19115q, th);
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

    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List<v9.p0<v9.g, v9.f>>, java.util.concurrent.CopyOnWriteArrayList] */
    @Override // ya.h0
    public final void w(Object obj) {
        int i10 = 0;
        if (!((Boolean) obj).booleanValue()) {
            d dVar = this.f19114p;
            ?? r10 = dVar.f18773p;
            y0 y0Var = new y0(this.f19114p.f18763f, this.f19115q, new Exception("Animation could not start"));
            v9.t tVar = v9.t.f16822a;
            v9.t.f16830i.a(new eb.b(y0Var));
            Object[] array = r10.toArray(new p0[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            p0[] p0VarArr = (p0[]) array;
            int length = p0VarArr.length;
            while (i10 < length) {
                z9.a.IO.b(new r(p0VarArr[i10], y0Var));
                i10++;
            }
            if ((dVar.A instanceof za.a) || !y0Var.f16924o.b()) {
                return;
            }
            if (y0Var instanceof m4 ? true : y0Var instanceof z1 ? true : y0Var instanceof u4 ? true : y0Var instanceof d4 ? true : y0Var instanceof x3 ? true : y0Var instanceof u3 ? true : y0Var instanceof w1) {
                z9.a.IO.b(new t(dVar, y0Var));
                return;
            }
            return;
        }
        d dVar2 = this.f19114p;
        ?? r11 = dVar2.f18773p;
        a1 a1Var = new a1(dVar2.f18763f, this.f19115q);
        boolean z10 = a1Var instanceof p2;
        eb.c cVar = new eb.c(a1Var);
        v9.t tVar2 = v9.t.f16822a;
        v9.t.f16830i.a(cVar);
        p0<v9.g, v9.f> p0Var = dVar2.f18770m;
        if (p0Var != null) {
            p0Var.a(a1Var);
        }
        Object[] array2 = r11.toArray(new p0[0]);
        p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        p0[] p0VarArr2 = (p0[]) array2;
        int length2 = p0VarArr2.length;
        while (i10 < length2) {
            z9.a.IO.b(new u(p0VarArr2[i10], a1Var));
            i10++;
        }
        if ((dVar2.A instanceof za.a) || a1Var.f16451m.b()) {
            return;
        }
        if (a1Var instanceof n4 ? true : a1Var instanceof a2 ? true : a1Var instanceof f2 ? true : a1Var instanceof w4 ? true : a1Var instanceof f4 ? true : a1Var instanceof z3 ? true : a1Var instanceof w3 ? true : a1Var instanceof y1) {
            z9.a.IO.b(new w(a1Var, dVar2));
        }
    }
}
