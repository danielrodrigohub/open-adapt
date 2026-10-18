package ya;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import de.n0;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import v9.a1;
import v9.a2;
import v9.a3;
import v9.a6;
import v9.c1;
import v9.c4;
import v9.c6;
import v9.d3;
import v9.e1;
import v9.e5;
import v9.f2;
import v9.f4;
import v9.f6;
import v9.g1;
import v9.g3;
import v9.g6;
import v9.h1;
import v9.h5;
import v9.i4;
import v9.j1;
import v9.j3;
import v9.j5;
import v9.j6;
import v9.k2;
import v9.k3;
import v9.k5;
import v9.l1;
import v9.l4;
import v9.m6;
import v9.n1;
import v9.n3;
import v9.n4;
import v9.n5;
import v9.o5;
import v9.p0;
import v9.p1;
import v9.p2;
import v9.p5;
import v9.p6;
import v9.q3;
import v9.q4;
import v9.q5;
import v9.q6;
import v9.s1;
import v9.s2;
import v9.t3;
import v9.t4;
import v9.t5;
import v9.t6;
import v9.u2;
import v9.u5;
import v9.v1;
import v9.w0;
import v9.w3;
import v9.w4;
import v9.x5;
import v9.x6;
import v9.y1;
import v9.y4;
import v9.y6;
import v9.z3;

/* JADX INFO: compiled from: AdaptKitControlsRepositories.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f19035a;

    public i(d dVar) {
        this.f19035a = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:1927:0x13f7  */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        d dVar;
        la.c cVarQ;
        int i17;
        d dVar2;
        la.c cVarQ2;
        int i18;
        d dVar3;
        la.c cVarQ3;
        int i19;
        int i20;
        int i21;
        p4.h.j(context, "context");
        if (intent != null && p4.h.c(intent.getAction(), hc.f0.f8480e) && p4.h.c(intent.getStringExtra(hc.f0.f8481f), this.f19035a.f18763f)) {
            mc.c cVar = (mc.c) intent.getParcelableExtra(hc.f0.f8486k);
            if (cVar != null) {
                d dVar4 = this.f19035a;
                ba.e eVarJ = n0.j(new mc.c(cVar.a(), cVar.b()));
                List list = dVar4.f18773p;
                a2 a2Var = new a2(dVar4.f18763f, eVarJ);
                if ((a2Var instanceof p2) || (a2Var instanceof a1) || (a2Var instanceof w0) || (a2Var instanceof e1) || (a2Var instanceof p6)) {
                    i21 = 2;
                } else {
                    if (!(a2Var instanceof f6)) {
                        if (!(a2Var instanceof x6) && !(a2Var instanceof m6) && !(a2Var instanceof j6) && !(a2Var instanceof t6) && !(a2Var instanceof q5) && !(a2Var instanceof x5) && !(a2Var instanceof a6) && !(a2Var instanceof t5)) {
                            if (!(a2Var instanceof u5)) {
                                if (!(a2Var instanceof c6)) {
                                    if (!(a2Var instanceof q6) && !(a2Var instanceof o5) && !(a2Var instanceof g6) && !(a2Var instanceof p5)) {
                                        if (!(a2Var instanceof c1) && !(a2Var instanceof t4) && !(a2Var instanceof l4) && !(a2Var instanceof y1) && !(a2Var instanceof c4) && !(a2Var instanceof y4) && !(a2Var instanceof w4) && !(a2Var instanceof t3) && !(a2Var instanceof n5) && !(a2Var instanceof e5) && !(a2Var instanceof h5) && !(a2Var instanceof i4) && !(a2Var instanceof q4) && !(a2Var instanceof j5) && !(a2Var instanceof z3) && !(a2Var instanceof f4) && !(a2Var instanceof f2) && !(a2Var instanceof w3)) {
                                            boolean z10 = a2Var instanceof n4;
                                        }
                                    }
                                }
                            }
                        }
                        i21 = 2;
                    }
                    i21 = 1;
                }
                eb.c cVar2 = new eb.c(a2Var);
                int iA = q.g.a(i21);
                if (iA == 0) {
                    ((eb.f) d3.e.k()).c(cVar2);
                } else if (iA == 1) {
                    ((eb.f) d3.e.k()).a(cVar2);
                }
                p0 p0Var = dVar4.f18770m;
                if (p0Var != null) {
                    p0Var.a(a2Var);
                }
                Object[] array = ((CopyOnWriteArrayList) list).toArray(new p0[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var2 : (p0[]) array) {
                    z9.a.IO.b(new u(p0Var2, a2Var));
                }
                if (!(dVar4.A instanceof za.a) && !a2Var.a().b()) {
                    boolean z11 = a2Var instanceof n4;
                    z9.a.IO.b(new w(a2Var, dVar4));
                }
            }
            if (((mc.r) intent.getParcelableExtra(hc.f0.f8483h)) != null) {
                d dVar5 = this.f19035a;
                List list2 = dVar5.f18773p;
                g1 g1Var = new g1(dVar5.f18763f);
                if ((g1Var instanceof p2) || (g1Var instanceof a1) || (g1Var instanceof w0) || (g1Var instanceof e1) || (g1Var instanceof p6)) {
                    i20 = 2;
                } else {
                    if (!(g1Var instanceof f6)) {
                        if (!(g1Var instanceof x6) && !(g1Var instanceof m6) && !(g1Var instanceof j6) && !(g1Var instanceof t6) && !(g1Var instanceof q5) && !(g1Var instanceof x5) && !(g1Var instanceof a6) && !(g1Var instanceof t5)) {
                            if (!(g1Var instanceof u5)) {
                                if (!(g1Var instanceof c6)) {
                                    if (!(g1Var instanceof q6) && !(g1Var instanceof o5) && !(g1Var instanceof g6) && !(g1Var instanceof p5)) {
                                        if (!(g1Var instanceof c1) && !(g1Var instanceof t4) && !(g1Var instanceof l4) && !(g1Var instanceof y1) && !(g1Var instanceof c4) && !(g1Var instanceof y4) && !(g1Var instanceof w4) && !(g1Var instanceof t3) && !(g1Var instanceof n5) && !(g1Var instanceof e5) && !(g1Var instanceof h5) && !(g1Var instanceof i4) && !(g1Var instanceof q4) && !(g1Var instanceof j5) && !(g1Var instanceof z3) && !(g1Var instanceof f4) && !(g1Var instanceof f2) && !(g1Var instanceof w3) && !(g1Var instanceof n4)) {
                                            boolean z12 = g1Var instanceof a2;
                                        }
                                    }
                                }
                            }
                        }
                        i20 = 2;
                    }
                    i20 = 1;
                }
                eb.c cVar3 = new eb.c(g1Var);
                int iA2 = q.g.a(i20);
                if (iA2 == 0) {
                    ((eb.f) d3.e.k()).c(cVar3);
                } else if (iA2 == 1) {
                    ((eb.f) d3.e.k()).a(cVar3);
                }
                p0 p0Var3 = dVar5.f18770m;
                if (p0Var3 != null) {
                    p0Var3.a(g1Var);
                }
                Object[] array2 = ((CopyOnWriteArrayList) list2).toArray(new p0[0]);
                p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var4 : (p0[]) array2) {
                    z9.a.IO.b(new u(p0Var4, g1Var));
                }
                if (!(dVar5.A instanceof za.a) && !g1Var.a().b()) {
                    if (g1Var instanceof n4 ? true : g1Var instanceof a2 ? true : g1Var instanceof f2 ? true : g1Var instanceof w4 ? true : g1Var instanceof f4 ? true : g1Var instanceof z3 ? true : g1Var instanceof w3 ? true : g1Var instanceof y1) {
                        z9.a.IO.b(new w(g1Var, dVar5));
                    }
                }
            }
            mc.t tVar = (mc.t) intent.getParcelableExtra(hc.f0.f8482g);
            if (tVar != null) {
                d dVar6 = this.f19035a;
                List list3 = dVar6.f18773p;
                n4 n4Var = new n4(dVar6.f18763f, new ea.i(new ea.h.a(tVar.a()), dVar6.i0().b()));
                if ((n4Var instanceof p2) || (n4Var instanceof a1) || (n4Var instanceof w0) || (n4Var instanceof e1) || (n4Var instanceof p6)) {
                    i19 = 2;
                } else {
                    if (!(n4Var instanceof f6)) {
                        if (!(n4Var instanceof x6) && !(n4Var instanceof m6) && !(n4Var instanceof j6) && !(n4Var instanceof t6) && !(n4Var instanceof q5) && !(n4Var instanceof x5) && !(n4Var instanceof a6) && !(n4Var instanceof t5)) {
                            if (!(n4Var instanceof u5)) {
                                if (!(n4Var instanceof c6)) {
                                    if (!(n4Var instanceof q6) && !(n4Var instanceof o5) && !(n4Var instanceof g6) && !(n4Var instanceof p5)) {
                                        if (!(n4Var instanceof c1) && !(n4Var instanceof t4) && !(n4Var instanceof l4) && !(n4Var instanceof y1) && !(n4Var instanceof c4) && !(n4Var instanceof y4) && !(n4Var instanceof w4) && !(n4Var instanceof t3) && !(n4Var instanceof n5) && !(n4Var instanceof e5) && !(n4Var instanceof h5) && !(n4Var instanceof i4) && !(n4Var instanceof q4) && !(n4Var instanceof j5) && !(n4Var instanceof z3) && !(n4Var instanceof f4) && !(n4Var instanceof f2)) {
                                            boolean z13 = n4Var instanceof w3;
                                        }
                                    }
                                }
                            }
                        }
                        i19 = 2;
                    }
                    i19 = 1;
                }
                eb.c cVar4 = new eb.c(n4Var);
                int iA3 = q.g.a(i19);
                if (iA3 == 0) {
                    ((eb.f) d3.e.k()).c(cVar4);
                } else if (iA3 == 1) {
                    ((eb.f) d3.e.k()).a(cVar4);
                }
                p0 p0Var5 = dVar6.f18770m;
                if (p0Var5 != null) {
                    p0Var5.a(n4Var);
                }
                Object[] array3 = ((CopyOnWriteArrayList) list3).toArray(new p0[0]);
                p4.h.h(array3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var6 : (p0[]) array3) {
                    z9.a.IO.b(new u(p0Var6, n4Var));
                }
                if (!(dVar6.A instanceof za.a) && !n4Var.a().b()) {
                    z9.a.IO.b(new w(n4Var, dVar6));
                }
            }
            mc.g0 g0Var = (mc.g0) intent.getParcelableExtra(hc.f0.f8484i);
            if (g0Var != null) {
                d dVar7 = this.f19035a;
                List list4 = dVar7.f18773p;
                c1 c1Var = new c1(dVar7.f18763f, ba.g.f3657l.b(g0Var));
                int i22 = ((c1Var instanceof p2) || (c1Var instanceof a1) || (c1Var instanceof w0) || (c1Var instanceof e1) || (c1Var instanceof p6) || (!(c1Var instanceof f6) && ((c1Var instanceof x6) || (c1Var instanceof m6) || (c1Var instanceof j6) || (c1Var instanceof t6) || (c1Var instanceof q5) || (c1Var instanceof x5) || (c1Var instanceof a6) || (c1Var instanceof t5) || (!(c1Var instanceof u5) && ((c1Var instanceof c6) || (!(c1Var instanceof q6) && !(c1Var instanceof o5) && !(c1Var instanceof g6) && !(c1Var instanceof p5))))))) ? 2 : 1;
                eb.c cVar5 = new eb.c(c1Var);
                int iA4 = q.g.a(i22);
                if (iA4 == 0) {
                    ((eb.f) d3.e.k()).c(cVar5);
                } else if (iA4 == 1) {
                    ((eb.f) d3.e.k()).a(cVar5);
                }
                p0 p0Var7 = dVar7.f18770m;
                if (p0Var7 != null) {
                    p0Var7.a(c1Var);
                }
                Object[] array4 = ((CopyOnWriteArrayList) list4).toArray(new p0[0]);
                p4.h.h(array4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var8 : (p0[]) array4) {
                    z9.a.IO.b(new u(p0Var8, c1Var));
                }
                if (!(dVar7.A instanceof za.a) && !c1Var.a().b()) {
                    if (c1Var instanceof n4 ? true : c1Var instanceof a2 ? true : c1Var instanceof f2 ? true : c1Var instanceof w4 ? true : c1Var instanceof f4 ? true : c1Var instanceof z3 ? true : c1Var instanceof w3 ? true : c1Var instanceof y1) {
                        z9.a.IO.b(new w(c1Var, dVar7));
                    }
                }
            }
            mc.j jVar = (mc.j) intent.getParcelableExtra(hc.f0.f8485j);
            if (jVar != null) {
                d dVar8 = this.f19035a;
                List list5 = dVar8.f18773p;
                c1 c1Var2 = new c1(dVar8.f18763f, ba.g.f3657l.a(jVar));
                int i23 = ((c1Var2 instanceof p2) || (c1Var2 instanceof a1) || (c1Var2 instanceof w0) || (c1Var2 instanceof e1) || (c1Var2 instanceof p6) || (!(c1Var2 instanceof f6) && ((c1Var2 instanceof x6) || (c1Var2 instanceof m6) || (c1Var2 instanceof j6) || (c1Var2 instanceof t6) || (c1Var2 instanceof q5) || (c1Var2 instanceof x5) || (c1Var2 instanceof a6) || (c1Var2 instanceof t5) || (!(c1Var2 instanceof u5) && ((c1Var2 instanceof c6) || (!(c1Var2 instanceof q6) && !(c1Var2 instanceof o5) && !(c1Var2 instanceof g6) && !(c1Var2 instanceof p5))))))) ? 2 : 1;
                eb.c cVar6 = new eb.c(c1Var2);
                int iA5 = q.g.a(i23);
                if (iA5 == 0) {
                    ((eb.f) d3.e.k()).c(cVar6);
                } else if (iA5 == 1) {
                    ((eb.f) d3.e.k()).a(cVar6);
                }
                p0 p0Var9 = dVar8.f18770m;
                if (p0Var9 != null) {
                    p0Var9.a(c1Var2);
                }
                Object[] array5 = ((CopyOnWriteArrayList) list5).toArray(new p0[0]);
                p4.h.h(array5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var10 : (p0[]) array5) {
                    z9.a.IO.b(new u(p0Var10, c1Var2));
                }
                if (!(dVar8.A instanceof za.a) && !c1Var2.a().b()) {
                    if (c1Var2 instanceof n4 ? true : c1Var2 instanceof a2 ? true : c1Var2 instanceof f2 ? true : c1Var2 instanceof w4 ? true : c1Var2 instanceof f4 ? true : c1Var2 instanceof z3 ? true : c1Var2 instanceof w3 ? true : c1Var2 instanceof y1) {
                        z9.a.IO.b(new w(c1Var2, dVar8));
                    }
                }
            }
            mc.z zVar = (mc.z) intent.getParcelableExtra(hc.f0.f8487l);
            if (zVar != null) {
                d dVar9 = this.f19035a;
                List list6 = dVar9.f18773p;
                String str = dVar9.f18763f;
                int iB = zVar.b();
                int iC = zVar.c();
                int iA6 = zVar.a();
                androidx.appcompat.widget.o.d(iA6, "event");
                int iA7 = q.g.a(iA6);
                c6 c6Var = new c6(str, new la.g(iB, iC, iA7 != 0 ? iA7 != 1 ? 3 : 2 : 1));
                int i24 = ((c6Var instanceof p2) || (c6Var instanceof a1) || (c6Var instanceof w0) || (c6Var instanceof e1) || (c6Var instanceof p6) || (!(c6Var instanceof f6) && ((c6Var instanceof x6) || (c6Var instanceof m6) || (c6Var instanceof j6) || (c6Var instanceof t6) || (c6Var instanceof q5) || (c6Var instanceof x5) || (c6Var instanceof a6) || (c6Var instanceof t5) || !(c6Var instanceof u5)))) ? 2 : 1;
                eb.c cVar7 = new eb.c(c6Var);
                int iA8 = q.g.a(i24);
                if (iA8 == 0) {
                    ((eb.f) d3.e.k()).c(cVar7);
                } else if (iA8 == 1) {
                    ((eb.f) d3.e.k()).a(cVar7);
                }
                p0 p0Var11 = dVar9.f18770m;
                if (p0Var11 != null) {
                    p0Var11.a(c6Var);
                }
                Object[] array6 = ((CopyOnWriteArrayList) list6).toArray(new p0[0]);
                p4.h.h(array6, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var12 : (p0[]) array6) {
                    z9.a.IO.b(new u(p0Var12, c6Var));
                }
                if (!(dVar9.A instanceof za.a) && !c6Var.a().b()) {
                    if (c6Var instanceof n4 ? true : c6Var instanceof a2 ? true : c6Var instanceof f2 ? true : c6Var instanceof w4 ? true : c6Var instanceof f4 ? true : c6Var instanceof z3 ? true : c6Var instanceof w3 ? true : c6Var instanceof y1) {
                        z9.a.IO.b(new w(c6Var, dVar9));
                    }
                }
            }
            mc.y yVar = (mc.y) intent.getParcelableExtra(hc.f0.f8488m);
            if (yVar != null && (cVarQ3 = (dVar3 = this.f19035a).Q()) != null) {
                List list7 = dVar3.f18773p;
                q6 q6Var = new q6(dVar3.f18763f, la.i.f10223r.a(yVar, cVarQ3.b()));
                int i25 = ((q6Var instanceof p2) || (q6Var instanceof a1) || (q6Var instanceof w0) || (q6Var instanceof e1) || (q6Var instanceof p6) || (!(q6Var instanceof f6) && ((q6Var instanceof x6) || (q6Var instanceof m6) || (q6Var instanceof j6) || (q6Var instanceof t6) || (q6Var instanceof q5) || (q6Var instanceof x5) || (q6Var instanceof a6) || (q6Var instanceof t5) || (!(q6Var instanceof u5) && (q6Var instanceof c6))))) ? 2 : 1;
                eb.c cVar8 = new eb.c(q6Var);
                int iA9 = q.g.a(i25);
                if (iA9 == 0) {
                    ((eb.f) d3.e.k()).c(cVar8);
                } else if (iA9 == 1) {
                    ((eb.f) d3.e.k()).a(cVar8);
                }
                p0 p0Var13 = dVar3.f18770m;
                if (p0Var13 != null) {
                    p0Var13.a(q6Var);
                }
                Object[] array7 = ((CopyOnWriteArrayList) list7).toArray(new p0[0]);
                p4.h.h(array7, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var14 : (p0[]) array7) {
                    z9.a.IO.b(new u(p0Var14, q6Var));
                }
                if (!(dVar3.A instanceof za.a) && !q6Var.a().b()) {
                    if (q6Var instanceof n4 ? true : q6Var instanceof a2 ? true : q6Var instanceof f2 ? true : q6Var instanceof w4 ? true : q6Var instanceof f4 ? true : q6Var instanceof z3 ? true : q6Var instanceof w3 ? true : q6Var instanceof y1) {
                        z9.a.IO.b(new w(q6Var, dVar3));
                    }
                }
            }
            mc.v vVar = (mc.v) intent.getParcelableExtra(hc.f0.f8489n);
            if (vVar != null && (cVarQ2 = (dVar2 = this.f19035a).Q()) != null) {
                List list8 = dVar2.f18773p;
                o5 o5Var = new o5(dVar2.f18763f, new la.e(vVar.c() + cVarQ2.b(), vVar.b(), vVar.a()));
                if ((o5Var instanceof p2) || (o5Var instanceof a1) || (o5Var instanceof w0) || (o5Var instanceof e1) || (o5Var instanceof p6)) {
                    i18 = 2;
                } else {
                    if (!(o5Var instanceof f6)) {
                        if (!(o5Var instanceof x6) && !(o5Var instanceof m6) && !(o5Var instanceof j6) && !(o5Var instanceof t6) && !(o5Var instanceof q5) && !(o5Var instanceof x5) && !(o5Var instanceof a6) && !(o5Var instanceof t5)) {
                            if (!(o5Var instanceof u5)) {
                                if (!(o5Var instanceof c6)) {
                                    boolean z14 = o5Var instanceof q6;
                                }
                            }
                        }
                        i18 = 2;
                    }
                    i18 = 1;
                }
                eb.c cVar9 = new eb.c(o5Var);
                int iA10 = q.g.a(i18);
                if (iA10 == 0) {
                    ((eb.f) d3.e.k()).c(cVar9);
                } else if (iA10 == 1) {
                    ((eb.f) d3.e.k()).a(cVar9);
                }
                p0 p0Var15 = dVar2.f18770m;
                if (p0Var15 != null) {
                    p0Var15.a(o5Var);
                }
                Object[] array8 = ((CopyOnWriteArrayList) list8).toArray(new p0[0]);
                p4.h.h(array8, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var16 : (p0[]) array8) {
                    z9.a.IO.b(new u(p0Var16, o5Var));
                }
                if (!(dVar2.A instanceof za.a) && !o5Var.a().b()) {
                    if (o5Var instanceof n4 ? true : o5Var instanceof a2 ? true : o5Var instanceof f2 ? true : o5Var instanceof w4 ? true : o5Var instanceof f4 ? true : o5Var instanceof z3 ? true : o5Var instanceof w3 ? true : o5Var instanceof y1) {
                        z9.a.IO.b(new w(o5Var, dVar2));
                    }
                }
            }
            mc.w wVar = (mc.w) intent.getParcelableExtra(hc.f0.f8491p);
            if (wVar != null && (cVarQ = (dVar = this.f19035a).Q()) != null) {
                List list9 = dVar.f18773p;
                p5 p5Var = new p5(dVar.f18763f, new la.f(wVar.f11101h + cVarQ.b(), wVar.f11102i, wVar.f11103j, wVar.f11104k));
                if ((p5Var instanceof p2) || (p5Var instanceof a1) || (p5Var instanceof w0) || (p5Var instanceof e1) || (p5Var instanceof p6)) {
                    i17 = 2;
                } else {
                    if (!(p5Var instanceof f6)) {
                        if (!(p5Var instanceof x6) && !(p5Var instanceof m6) && !(p5Var instanceof j6) && !(p5Var instanceof t6) && !(p5Var instanceof q5) && !(p5Var instanceof x5) && !(p5Var instanceof a6) && !(p5Var instanceof t5)) {
                            if (!(p5Var instanceof u5)) {
                                if (!(p5Var instanceof c6)) {
                                    if (!(p5Var instanceof q6) && !(p5Var instanceof o5)) {
                                        boolean z15 = p5Var instanceof g6;
                                    }
                                }
                            }
                        }
                        i17 = 2;
                    }
                    i17 = 1;
                }
                eb.c cVar10 = new eb.c(p5Var);
                int iA11 = q.g.a(i17);
                if (iA11 == 0) {
                    ((eb.f) d3.e.k()).c(cVar10);
                } else if (iA11 == 1) {
                    ((eb.f) d3.e.k()).a(cVar10);
                }
                p0 p0Var17 = dVar.f18770m;
                if (p0Var17 != null) {
                    p0Var17.a(p5Var);
                }
                Object[] array9 = ((CopyOnWriteArrayList) list9).toArray(new p0[0]);
                p4.h.h(array9, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var18 : (p0[]) array9) {
                    z9.a.IO.b(new u(p0Var18, p5Var));
                }
                if (!(dVar.A instanceof za.a) && !p5Var.a().b()) {
                    if (p5Var instanceof n4 ? true : p5Var instanceof a2 ? true : p5Var instanceof f2 ? true : p5Var instanceof w4 ? true : p5Var instanceof f4 ? true : p5Var instanceof z3 ? true : p5Var instanceof w3 ? true : p5Var instanceof y1) {
                        z9.a.IO.b(new w(p5Var, dVar));
                    }
                }
            }
            mc.c0 c0Var = (mc.c0) intent.getParcelableExtra(hc.f0.f8490o);
            if (c0Var != null) {
                d dVar10 = this.f19035a;
                fb.r rVar = dVar10.f18768k;
                if (rVar != null) {
                    fb.s sVar = (fb.s) rVar;
                    if (sVar.f() != fb.r.b.FAST) {
                        sVar.h();
                    }
                }
                la.c cVarQ4 = dVar10.Q();
                if (cVarQ4 != null) {
                    List list10 = dVar10.f18773p;
                    g6 g6Var = new g6(dVar10.f18763f, new la.h(cVarQ4.b() + c0Var.m(), new la.h.b(c0Var.a(), c0Var.b(), c0Var.c()), new la.h.b(c0Var.d(), c0Var.e(), c0Var.f())));
                    if ((g6Var instanceof p2) || (g6Var instanceof a1) || (g6Var instanceof w0) || (g6Var instanceof e1) || (g6Var instanceof p6)) {
                        i16 = 2;
                    } else {
                        if (!(g6Var instanceof f6)) {
                            if (!(g6Var instanceof x6) && !(g6Var instanceof m6) && !(g6Var instanceof j6) && !(g6Var instanceof t6) && !(g6Var instanceof q5) && !(g6Var instanceof x5) && !(g6Var instanceof a6) && !(g6Var instanceof t5)) {
                                if (!(g6Var instanceof u5)) {
                                    if (!(g6Var instanceof c6)) {
                                        if (!(g6Var instanceof q6)) {
                                            boolean z16 = g6Var instanceof o5;
                                        }
                                    }
                                }
                            }
                            i16 = 2;
                        }
                        i16 = 1;
                    }
                    eb.c cVar11 = new eb.c(g6Var);
                    int iA12 = q.g.a(i16);
                    if (iA12 == 0) {
                        ((eb.f) d3.e.k()).c(cVar11);
                    } else if (iA12 == 1) {
                        ((eb.f) d3.e.k()).a(cVar11);
                    }
                    p0 p0Var19 = dVar10.f18770m;
                    if (p0Var19 != null) {
                        p0Var19.a(g6Var);
                    }
                    Object[] array10 = ((CopyOnWriteArrayList) list10).toArray(new p0[0]);
                    p4.h.h(array10, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    for (p0 p0Var20 : (p0[]) array10) {
                        z9.a.IO.b(new u(p0Var20, g6Var));
                    }
                    if (!(dVar10.A instanceof za.a) && !g6Var.a().b()) {
                        if (g6Var instanceof n4 ? true : g6Var instanceof a2 ? true : g6Var instanceof f2 ? true : g6Var instanceof w4 ? true : g6Var instanceof f4 ? true : g6Var instanceof z3 ? true : g6Var instanceof w3 ? true : g6Var instanceof y1) {
                            z9.a.IO.b(new w(g6Var, dVar10));
                        }
                    }
                }
            }
            mc.b bVar = (mc.b) intent.getParcelableExtra(hc.f0.f8494s);
            if (bVar != null) {
                d dVar11 = this.f19035a;
                List list11 = dVar11.f18773p;
                int iOrdinal = bVar.ordinal();
                if (iOrdinal == 0) {
                    i14 = 2;
                } else {
                    if (iOrdinal != 1) {
                        throw new j2.a();
                    }
                    i14 = 1;
                }
                n1 n1Var = new n1(i14, dVar11.f18763f);
                if ((n1Var instanceof p2) || (n1Var instanceof a1) || (n1Var instanceof w0) || (n1Var instanceof e1) || (n1Var instanceof p6)) {
                    i15 = 2;
                } else {
                    if (!(n1Var instanceof f6)) {
                        if (!(n1Var instanceof x6) && !(n1Var instanceof m6) && !(n1Var instanceof j6) && !(n1Var instanceof t6) && !(n1Var instanceof q5) && !(n1Var instanceof x5) && !(n1Var instanceof a6) && !(n1Var instanceof t5)) {
                            if (!(n1Var instanceof u5)) {
                                if (!(n1Var instanceof c6)) {
                                    if (!(n1Var instanceof q6) && !(n1Var instanceof o5) && !(n1Var instanceof g6) && !(n1Var instanceof p5)) {
                                        if (!(n1Var instanceof c1) && !(n1Var instanceof t4) && !(n1Var instanceof l4) && !(n1Var instanceof y1) && !(n1Var instanceof c4) && !(n1Var instanceof y4) && !(n1Var instanceof w4) && !(n1Var instanceof t3) && !(n1Var instanceof n5) && !(n1Var instanceof e5) && !(n1Var instanceof h5) && !(n1Var instanceof i4) && !(n1Var instanceof q4) && !(n1Var instanceof j5) && !(n1Var instanceof z3) && !(n1Var instanceof f4) && !(n1Var instanceof f2) && !(n1Var instanceof w3) && !(n1Var instanceof n4) && !(n1Var instanceof a2) && !(n1Var instanceof g1) && !(n1Var instanceof s2) && !(n1Var instanceof h1) && !(n1Var instanceof d3) && !(n1Var instanceof a3) && !(n1Var instanceof k5) && !(n1Var instanceof k2) && !(n1Var instanceof s1) && !(n1Var instanceof v1)) {
                                            boolean z17 = n1Var instanceof p1;
                                        }
                                    }
                                }
                            }
                        }
                        i15 = 2;
                    }
                    i15 = 1;
                }
                eb.c cVar12 = new eb.c(n1Var);
                int iA13 = q.g.a(i15);
                if (iA13 == 0) {
                    ((eb.f) d3.e.k()).c(cVar12);
                } else if (iA13 == 1) {
                    ((eb.f) d3.e.k()).a(cVar12);
                }
                p0 p0Var21 = dVar11.f18770m;
                if (p0Var21 != null) {
                    p0Var21.a(n1Var);
                }
                Object[] array11 = ((CopyOnWriteArrayList) list11).toArray(new p0[0]);
                p4.h.h(array11, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var22 : (p0[]) array11) {
                    z9.a.IO.b(new u(p0Var22, n1Var));
                }
                if (!(dVar11.A instanceof za.a) && !n1Var.a().b()) {
                    if (n1Var instanceof n4 ? true : n1Var instanceof a2 ? true : n1Var instanceof f2 ? true : n1Var instanceof w4 ? true : n1Var instanceof f4 ? true : n1Var instanceof z3 ? true : n1Var instanceof w3 ? true : n1Var instanceof y1) {
                        z9.a.IO.b(new w(n1Var, dVar11));
                    }
                }
            }
            mc.a aVar = (mc.a) intent.getParcelableExtra(hc.f0.f8493r);
            if (aVar != null) {
                d dVar12 = this.f19035a;
                List list12 = dVar12.f18773p;
                int iOrdinal2 = aVar.ordinal();
                if (iOrdinal2 == 0) {
                    i10 = 2;
                    i12 = 1;
                } else if (iOrdinal2 != 1) {
                    i10 = 2;
                    if (iOrdinal2 == 2) {
                        i12 = 3;
                    } else if (iOrdinal2 == 3) {
                        i12 = 4;
                    } else if (iOrdinal2 == 4) {
                        i12 = 5;
                    } else {
                        if (iOrdinal2 != 5) {
                            throw new j2.a();
                        }
                        i12 = 6;
                    }
                } else {
                    i10 = 2;
                    i12 = 2;
                }
                j1 j1Var = new j1(i12, dVar12.f18763f);
                if ((j1Var instanceof p2) || (j1Var instanceof a1) || (j1Var instanceof w0) || (j1Var instanceof e1) || (j1Var instanceof p6)) {
                    i13 = i10;
                } else {
                    if (!(j1Var instanceof f6)) {
                        if (!(j1Var instanceof x6) && !(j1Var instanceof m6) && !(j1Var instanceof j6) && !(j1Var instanceof t6) && !(j1Var instanceof q5) && !(j1Var instanceof x5) && !(j1Var instanceof a6) && !(j1Var instanceof t5)) {
                            if (!(j1Var instanceof u5)) {
                                if (!(j1Var instanceof c6)) {
                                    if (!(j1Var instanceof q6) && !(j1Var instanceof o5) && !(j1Var instanceof g6) && !(j1Var instanceof p5)) {
                                        if (!(j1Var instanceof c1) && !(j1Var instanceof t4) && !(j1Var instanceof l4) && !(j1Var instanceof y1) && !(j1Var instanceof c4) && !(j1Var instanceof y4) && !(j1Var instanceof w4) && !(j1Var instanceof t3) && !(j1Var instanceof n5) && !(j1Var instanceof e5) && !(j1Var instanceof h5) && !(j1Var instanceof i4) && !(j1Var instanceof q4) && !(j1Var instanceof j5) && !(j1Var instanceof z3) && !(j1Var instanceof f4) && !(j1Var instanceof f2) && !(j1Var instanceof w3) && !(j1Var instanceof n4) && !(j1Var instanceof a2) && !(j1Var instanceof g1) && !(j1Var instanceof s2) && !(j1Var instanceof h1) && !(j1Var instanceof d3) && !(j1Var instanceof a3) && !(j1Var instanceof k5) && !(j1Var instanceof k2) && !(j1Var instanceof s1) && !(j1Var instanceof v1) && !(j1Var instanceof p1) && !(j1Var instanceof n1)) {
                                            boolean z18 = j1Var instanceof l1;
                                        }
                                    }
                                }
                            }
                        }
                        i13 = i10;
                    }
                    i13 = 1;
                }
                eb.c cVar13 = new eb.c(j1Var);
                int iA14 = q.g.a(i13);
                if (iA14 == 0) {
                    ((eb.f) d3.e.k()).c(cVar13);
                } else if (iA14 == 1) {
                    ((eb.f) d3.e.k()).a(cVar13);
                }
                p0 p0Var23 = dVar12.f18770m;
                if (p0Var23 != null) {
                    p0Var23.a(j1Var);
                }
                Object[] array12 = ((CopyOnWriteArrayList) list12).toArray(new p0[0]);
                p4.h.h(array12, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var24 : (p0[]) array12) {
                    z9.a.IO.b(new u(p0Var24, j1Var));
                }
                if (!(dVar12.A instanceof za.a) && !j1Var.a().b()) {
                    if (j1Var instanceof n4 ? true : j1Var instanceof a2 ? true : j1Var instanceof f2 ? true : j1Var instanceof w4 ? true : j1Var instanceof f4 ? true : j1Var instanceof z3 ? true : j1Var instanceof w3 ? true : j1Var instanceof y1) {
                        z9.a.IO.b(new w(j1Var, dVar12));
                    }
                }
            } else {
                i10 = 2;
            }
            mc.p pVar = (mc.p) intent.getParcelableExtra(hc.f0.f8495t);
            if (pVar != null) {
                d dVar13 = this.f19035a;
                List list13 = dVar13.f18773p;
                k3 k3Var = new k3(new ga.c(pVar.f11082h, pVar.f11083i, ga.a.f7896j.a(pVar.f11084j)), dVar13.f18763f);
                if ((k3Var instanceof p2) || (k3Var instanceof a1) || (k3Var instanceof w0) || (k3Var instanceof e1) || (k3Var instanceof p6)) {
                    i11 = i10;
                } else {
                    if (!(k3Var instanceof f6)) {
                        if (!(k3Var instanceof x6) && !(k3Var instanceof m6) && !(k3Var instanceof j6) && !(k3Var instanceof t6) && !(k3Var instanceof q5) && !(k3Var instanceof x5) && !(k3Var instanceof a6) && !(k3Var instanceof t5)) {
                            if (!(k3Var instanceof u5)) {
                                if (!(k3Var instanceof c6)) {
                                    if (!(k3Var instanceof q6) && !(k3Var instanceof o5) && !(k3Var instanceof g6) && !(k3Var instanceof p5)) {
                                        if (!(k3Var instanceof c1) && !(k3Var instanceof t4) && !(k3Var instanceof l4) && !(k3Var instanceof y1) && !(k3Var instanceof c4) && !(k3Var instanceof y4) && !(k3Var instanceof w4) && !(k3Var instanceof t3) && !(k3Var instanceof n5) && !(k3Var instanceof e5) && !(k3Var instanceof h5) && !(k3Var instanceof i4) && !(k3Var instanceof q4) && !(k3Var instanceof j5) && !(k3Var instanceof z3) && !(k3Var instanceof f4) && !(k3Var instanceof f2) && !(k3Var instanceof w3) && !(k3Var instanceof n4) && !(k3Var instanceof a2) && !(k3Var instanceof g1) && !(k3Var instanceof s2) && !(k3Var instanceof h1) && !(k3Var instanceof d3) && !(k3Var instanceof a3) && !(k3Var instanceof k5) && !(k3Var instanceof k2) && !(k3Var instanceof s1) && !(k3Var instanceof v1) && !(k3Var instanceof p1) && !(k3Var instanceof n1) && !(k3Var instanceof l1) && !(k3Var instanceof j1) && !(k3Var instanceof g3) && !(k3Var instanceof j3) && !(k3Var instanceof n3)) {
                                            boolean z19 = k3Var instanceof q3;
                                        }
                                    }
                                }
                            }
                        }
                        i11 = i10;
                    }
                    i11 = 1;
                }
                eb.c cVar14 = new eb.c(k3Var);
                int iA15 = q.g.a(i11);
                if (iA15 == 0) {
                    ((eb.f) d3.e.k()).c(cVar14);
                } else if (iA15 == 1) {
                    ((eb.f) d3.e.k()).a(cVar14);
                }
                p0 p0Var25 = dVar13.f18770m;
                if (p0Var25 != null) {
                    p0Var25.a(k3Var);
                }
                Object[] array13 = ((CopyOnWriteArrayList) list13).toArray(new p0[0]);
                p4.h.h(array13, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var26 : (p0[]) array13) {
                    z9.a.IO.b(new u(p0Var26, k3Var));
                }
                if (!(dVar13.A instanceof za.a) && !k3Var.a().b()) {
                    if (k3Var instanceof n4 ? true : k3Var instanceof a2 ? true : k3Var instanceof f2 ? true : k3Var instanceof w4 ? true : k3Var instanceof f4 ? true : k3Var instanceof z3 ? true : k3Var instanceof w3 ? true : k3Var instanceof y1) {
                        z9.a.IO.b(new w(k3Var, dVar13));
                    }
                }
            }
            mc.d0 d0Var = (mc.d0) intent.getParcelableExtra(hc.f0.f8492q);
            if (d0Var != null) {
                d dVar14 = this.f19035a;
                List list14 = dVar14.f18773p;
                y6 y6Var = new y6(new la.d(d0Var.b(), d0Var.a()), dVar14.f18763f);
                if (!(y6Var instanceof p2) && !(y6Var instanceof a1) && !(y6Var instanceof w0) && !(y6Var instanceof e1) && !(y6Var instanceof p6)) {
                    if (y6Var instanceof f6) {
                        i10 = 1;
                    } else if (!(y6Var instanceof x6) && !(y6Var instanceof m6) && !(y6Var instanceof j6) && !(y6Var instanceof t6) && !(y6Var instanceof q5) && !(y6Var instanceof x5) && !(y6Var instanceof a6) && !(y6Var instanceof t5)) {
                        if (y6Var instanceof u5) {
                            i10 = 1;
                        } else if (!(y6Var instanceof c6)) {
                            if ((y6Var instanceof q6) || (y6Var instanceof o5) || (y6Var instanceof g6) || (y6Var instanceof p5)) {
                                i10 = 1;
                            } else if (!(y6Var instanceof c1) && !(y6Var instanceof t4) && !(y6Var instanceof l4) && !(y6Var instanceof y1) && !(y6Var instanceof c4) && !(y6Var instanceof y4) && !(y6Var instanceof w4) && !(y6Var instanceof t3) && !(y6Var instanceof n5) && !(y6Var instanceof e5) && !(y6Var instanceof h5) && !(y6Var instanceof i4) && !(y6Var instanceof q4) && !(y6Var instanceof j5) && !(y6Var instanceof z3) && !(y6Var instanceof f4) && !(y6Var instanceof f2) && !(y6Var instanceof w3) && !(y6Var instanceof n4) && !(y6Var instanceof a2) && !(y6Var instanceof g1) && !(y6Var instanceof s2) && !(y6Var instanceof h1) && !(y6Var instanceof d3) && !(y6Var instanceof a3) && !(y6Var instanceof k5) && !(y6Var instanceof k2) && !(y6Var instanceof s1) && !(y6Var instanceof v1) && !(y6Var instanceof p1) && !(y6Var instanceof n1) && !(y6Var instanceof l1) && !(y6Var instanceof j1) && !(y6Var instanceof g3) && !(y6Var instanceof j3) && !(y6Var instanceof n3) && !(y6Var instanceof q3) && !(y6Var instanceof k3)) {
                                boolean z20 = y6Var instanceof u2;
                                i10 = 1;
                            }
                        }
                    }
                }
                eb.c cVar15 = new eb.c(y6Var);
                int iA16 = q.g.a(i10);
                if (iA16 == 0) {
                    ((eb.f) d3.e.k()).c(cVar15);
                } else if (iA16 == 1) {
                    ((eb.f) d3.e.k()).a(cVar15);
                }
                p0 p0Var27 = dVar14.f18770m;
                if (p0Var27 != null) {
                    p0Var27.a(y6Var);
                }
                Object[] array14 = ((CopyOnWriteArrayList) list14).toArray(new p0[0]);
                p4.h.h(array14, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (p0 p0Var28 : (p0[]) array14) {
                    z9.a.IO.b(new u(p0Var28, y6Var));
                }
                if ((dVar14.A instanceof za.a) || y6Var.a().b()) {
                    return;
                }
                if (y6Var instanceof n4 ? true : y6Var instanceof a2 ? true : y6Var instanceof f2 ? true : y6Var instanceof w4 ? true : y6Var instanceof f4 ? true : y6Var instanceof z3 ? true : y6Var instanceof w3 ? true : y6Var instanceof y1) {
                    z9.a.IO.b(new w(y6Var, dVar14));
                }
            }
        }
    }
}
