package v9;

import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: AdaptKitDeviceRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ea.m f16680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v9.a f16681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final qd.l<ea.m, fd.o> f16682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final fd.d f16683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public i f16684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s f16685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public q f16686g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public t0 f16687h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o f16688i;

    /* JADX INFO: compiled from: AdaptKitDeviceRequester.kt */
    public static final class a extends rd.o implements qd.l<ea.m, fd.o> {
        public a() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(ea.m mVar) {
            ea.m mVar2 = mVar;
            p4.h.j(mVar2, "$this$null");
            l.this.f16680a = mVar2;
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: InjectionKtx.kt */
    public static final class b extends rd.o implements qd.a<w9.d> {
        public b() {
            super(0);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // qd.a
        public final w9.d invoke() {
            w9.d dVar;
            w9.d.a aVar = w9.d.f17265a;
            ea.m mVar = l.this.f16680a;
            w9.c cVar = new w9.c(mVar);
            Objects.requireNonNull(aVar);
            p4.h.j(mVar, "adaptKitPairedDevices");
            synchronized (aVar) {
                Map<String, w9.d> map = w9.d.a.f17267b;
                String str = mVar.f6664h;
                Object xVar = map.get(str);
                if (xVar == null) {
                    xVar = new w9.x(mVar, cVar);
                    map.put(str, (w9.d) xVar);
                }
                dVar = (w9.d) xVar;
            }
            return dVar;
        }
    }

    public l(ea.m mVar, v9.a aVar) {
        p4.h.j(mVar, "adaptKitPairedDevices");
        p4.h.j(aVar, "identifier");
        this.f16680a = mVar;
        this.f16681b = aVar;
        this.f16682c = new a();
        this.f16683d = androidx.lifecycle.o.w(1, new b());
    }

    public final da.f a() {
        return c().A();
    }

    public final fb.c b(w9.u1 u1Var) {
        p4.h.j(u1Var, "shoe");
        return c().i(new w9.a(this.f16681b, u1Var));
    }

    public final w9.d c() {
        return (w9.d) this.f16683d.getValue();
    }

    public final void d() {
        j(null);
        f(null);
        h(null);
        i(null);
        t0 t0Var = this.f16687h;
        if (t0Var != null) {
            c().F(t0Var);
        }
        this.f16687h = null;
        g(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(w9.u1 u1Var, k kVar) {
        String str;
        p4.h.j(u1Var, "shoe");
        p4.h.j(kVar, "adaptKitDeviceRequest");
        w9.d dVarC = c();
        w9.a aVar = new w9.a(this.f16681b, u1Var);
        t tVar = t.f16822a;
        eb.f fVar = t.f16830i;
        eb.g[] gVarArr = new eb.g[1];
        String strC = a0.d.c("DeviceRequest[request: ", kVar.c(), "]");
        w9.u1 u1Var2 = aVar.f17254i;
        Objects.requireNonNull(u1Var2);
        if (u1Var2 == w9.u1.LEFT) {
            str = "Left";
        } else {
            str = u1Var2 == w9.u1.RIGHT ? "Right" : "Both";
        }
        gVarArr[0] = new eb.c(new eb.a(a0.b.a("AdaptKitRequester[request: ", strC, " shoe: ", a0.b.a("IdentifierShoe[shoe: ", a0.d.c("Shoe[shoe: ", str, "]"), " identifier: ", aVar.f17253h.c(), "]"), "]")));
        fVar.a(gVarArr);
        fd.o oVar = null;
        if (kVar instanceof c2) {
            qd.l<h, fd.o> lVar = ((c2) kVar).f16491b;
            if (lVar != null) {
                dVarC.o(aVar, lVar);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.o(aVar, w9.i.f17286h);
                return;
            }
            return;
        }
        if (kVar instanceof d2) {
            if (aa.a.a()) {
                d2 d2Var = (d2) kVar;
                qd.l<h, fd.o> lVar2 = d2Var.f16506b;
                if (lVar2 != null) {
                    if (aa.a.a()) {
                        dVarC.H(aVar, lVar2, d2Var.f16507c);
                    }
                    oVar = fd.o.f7408a;
                }
                if (oVar == null) {
                    dVarC.H(aVar, w9.j.f17291h, d2Var.f16507c);
                    return;
                }
                return;
            }
            return;
        }
        if (kVar instanceof o2) {
            dVarC.f(aVar);
            return;
        }
        if (kVar instanceof z0) {
            dVarC.b0(aVar, (z0) kVar);
            return;
        }
        if (kVar instanceof x0) {
            dVarC.G(aVar, (x0) kVar);
            return;
        }
        if (kVar instanceof d1) {
            dVarC.m(aVar, (d1) kVar);
            return;
        }
        if (kVar instanceof v0) {
            if (((e2) kVar).b() != null) {
                dVarC.a(aVar, (v0) kVar);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.a(aVar, (v0) kVar);
                return;
            }
            return;
        }
        if (kVar instanceof x1) {
            qd.l<j, fd.o> lVarB = ((e2) kVar).b();
            if (lVarB != null) {
                dVarC.K(new w9.a(this.f16681b, u1Var), lVarB);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.K(aVar, w9.e.f17272h);
                return;
            }
            return;
        }
        if (kVar instanceof s3) {
            qd.l<j, fd.o> lVarB2 = ((e2) kVar).b();
            if (lVarB2 != null) {
                dVarC.q(aVar, lVarB2);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.q(aVar, w9.f.f17275h);
                return;
            }
            return;
        }
        if (kVar instanceof y3) {
            qd.l<j, fd.o> lVarB3 = ((e2) kVar).b();
            if (lVarB3 != null) {
                dVarC.E(aVar, ((y3) kVar).f16932b, lVarB3);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.E(aVar, ((y3) kVar).f16932b, w9.h.f17282h);
                return;
            }
            return;
        }
        if (kVar instanceof v3) {
            qd.l<j, fd.o> lVarB4 = ((e2) kVar).b();
            if (lVarB4 != null) {
                dVarC.j0(aVar, lVarB4);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.j0(aVar, w9.g.f17278h);
                return;
            }
            return;
        }
        if (kVar instanceof j2) {
            dVarC.v(this.f16681b, ((j2) kVar).f16652b);
            return;
        }
        if (kVar instanceof e4) {
            qd.l<j, fd.o> lVarB5 = ((e2) kVar).b();
            if (lVarB5 != null) {
                dVarC.x(new w9.a(this.f16681b, u1Var), lVarB5);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.x(aVar, w9.p.f17338h);
                return;
            }
            return;
        }
        if (kVar instanceof h4) {
            qd.l<j, fd.o> lVarB6 = ((e2) kVar).b();
            if (lVarB6 != null) {
                dVarC.Y(new w9.a(this.f16681b, u1Var), lVarB6);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.Y(aVar, w9.q.f17343h);
                return;
            }
            return;
        }
        if (kVar instanceof p4) {
            qd.l<j, fd.o> lVarB7 = ((e2) kVar).b();
            if (lVarB7 != null) {
                p4 p4Var = (p4) kVar;
                dVarC.g(aVar, p4Var.f16764b, lVarB7, p4Var.f16766d);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                p4 p4Var2 = (p4) kVar;
                dVarC.g(aVar, p4Var2.f16764b, w9.s.f17354h, p4Var2.f16766d);
                return;
            }
            return;
        }
        if (kVar instanceof v4) {
            qd.l<j, fd.o> lVarB8 = ((e2) kVar).b();
            if (lVarB8 != null) {
                v4 v4Var = (v4) kVar;
                dVarC.C(aVar, v4Var.f16879b, lVarB8, v4Var.f16881d);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                v4 v4Var2 = (v4) kVar;
                w9.d.b.a(dVarC, aVar, v4Var2.f16879b, null, v4Var2.f16881d, 4, null);
                return;
            }
            return;
        }
        if (kVar instanceof k4) {
            qd.l<j, fd.o> lVarB9 = ((e2) kVar).b();
            if (lVarB9 != null) {
                dVarC.d0(aVar, lVarB9);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.d0(aVar, w9.r.f17349h);
                return;
            }
            return;
        }
        if (kVar instanceof s4) {
            qd.l<j, fd.o> lVarB10 = ((e2) kVar).b();
            if (lVarB10 != null) {
                dVarC.k(aVar, lVarB10);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.k(aVar, w9.t.f17359h);
                return;
            }
            return;
        }
        if (kVar instanceof v2) {
            qd.l<j, fd.o> lVarB11 = ((e2) kVar).b();
            if (lVarB11 != null) {
                dVarC.I(((v2) kVar).f16876b, aVar, lVarB11);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.I(((v2) kVar).f16876b, aVar, w9.l.f17301h);
                return;
            }
            return;
        }
        if (kVar instanceof r2) {
            qd.l<j, fd.o> lVarB12 = ((e2) kVar).b();
            if (lVarB12 != null) {
                dVarC.p(new w9.a(this.f16681b, u1Var), lVarB12);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.p(aVar, w9.k.f17296h);
                return;
            }
            return;
        }
        if (kVar instanceof c3) {
            qd.l<j, fd.o> lVarB13 = ((e2) kVar).b();
            if (lVarB13 != null) {
                dVarC.j(new w9.a(this.f16681b, u1Var), lVarB13);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.j(aVar, w9.n.f17328h);
                return;
            }
            return;
        }
        if (kVar instanceof z2) {
            qd.l<j, fd.o> lVarB14 = ((e2) kVar).b();
            if (lVarB14 != null) {
                dVarC.g0(new w9.a(this.f16681b, u1Var), lVarB14);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.g0(aVar, w9.m.f17306h);
                return;
            }
            return;
        }
        if (kVar instanceof b5) {
            qd.l<j, fd.o> lVarB15 = ((e2) kVar).b();
            if (lVarB15 != null) {
                b5 b5Var = (b5) kVar;
                dVarC.J(this.f16681b, b5Var.f16480b, lVarB15, b5Var.f16482d);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                b5 b5Var2 = (b5) kVar;
                dVarC.J(this.f16681b, b5Var2.f16480b, w9.u.f17368h, b5Var2.f16482d);
                return;
            }
            return;
        }
        if (kVar instanceof b4) {
            qd.l<j, fd.o> lVarB16 = ((e2) kVar).b();
            if (lVarB16 != null) {
                dVarC.b(new w9.a(this.f16681b, u1Var), lVarB16);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.b(aVar, w9.o.f17331h);
                return;
            }
            return;
        }
        if (kVar instanceof z4) {
            z4 z4Var = (z4) kVar;
            dVarC.L(this.f16681b, z4Var.f16955b, z4Var.f16956c, z4Var.f16957d);
            return;
        }
        if (kVar instanceof a5) {
            a5 a5Var = (a5) kVar;
            dVarC.Q(this.f16681b, a5Var.f16459b, a5Var.f16460c);
            return;
        }
        if (kVar instanceof m5) {
            qd.l<j, fd.o> lVarB17 = ((e2) kVar).b();
            if (lVarB17 != null) {
                dVarC.M(aVar, lVarB17);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.M(aVar, w9.w.f17380h);
                return;
            }
            return;
        }
        if (kVar instanceof x2) {
            x2 x2Var = (x2) kVar;
            dVarC.s(this.f16681b, x2Var.f16907b, x2Var.f16908c);
            return;
        }
        if (kVar instanceof w2) {
            dVarC.T(aVar.f17253h);
            return;
        }
        if (kVar instanceof d5) {
            if (((e2) kVar).b() != null) {
                dVarC.y(aVar, (d5) kVar);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                dVarC.y(aVar, (d5) kVar);
                return;
            }
            return;
        }
        if (kVar instanceof g5) {
            dVarC.U(aVar, (g5) kVar);
            return;
        }
        if (kVar instanceof o6) {
            dVarC.c(aVar, (o6) kVar);
            return;
        }
        if (kVar instanceof l6) {
            dVarC.h0(aVar, (l6) kVar);
            return;
        }
        if (kVar instanceof i6) {
            dVarC.S(aVar, (i6) kVar);
            return;
        }
        if (kVar instanceof s6) {
            dVarC.B(aVar, (s6) kVar);
            return;
        }
        if (kVar instanceof e6) {
            dVarC.R(aVar, (e6) kVar);
            return;
        }
        if (kVar instanceof w6) {
            dVarC.c0(aVar, (w6) kVar);
            return;
        }
        if (kVar instanceof w5) {
            dVarC.O(aVar, (w5) kVar);
            return;
        }
        if (kVar instanceof z5) {
            dVarC.D(aVar, (z5) kVar);
            return;
        }
        if (kVar instanceof s5) {
            dVarC.l0(aVar, (s5) kVar);
            return;
        }
        if (kVar instanceof r1) {
            dVarC.l(aVar, (r1) kVar);
            return;
        }
        if (kVar instanceof u1) {
            dVarC.a0(aVar, (u1) kVar);
            return;
        }
        if (kVar instanceof k1) {
            dVarC.P(aVar, (k1) kVar);
            return;
        }
        if (kVar instanceof o1) {
            dVarC.r(aVar, (o1) kVar);
            return;
        }
        if (kVar instanceof f3) {
            dVarC.z(aVar, (f3) kVar);
            return;
        }
        if (kVar instanceof i3) {
            dVarC.Z(aVar, (i3) kVar);
        } else if (kVar instanceof m3) {
            dVarC.e(aVar, (m3) kVar);
        } else if (kVar instanceof p3) {
            dVarC.f0(aVar, (p3) kVar);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return p4.h.c(this.f16680a, lVar.f16680a) && p4.h.c(this.f16681b, lVar.f16681b);
    }

    public final void f(i iVar) {
        i iVar2 = this.f16684e;
        if (iVar == null) {
            if (iVar2 != null) {
                c().n(iVar2);
            }
        } else if (iVar2 != null && !p4.h.c(iVar2, iVar)) {
            c().n(iVar2);
            c().X(iVar);
        } else if (iVar2 == null) {
            c().X(iVar);
        }
        this.f16684e = iVar;
    }

    public final void g(o oVar) {
        o oVar2 = this.f16688i;
        if (oVar == null) {
            if (oVar2 != null) {
                c().V(oVar2);
            }
        } else if (oVar2 != null && !p4.h.c(oVar2, oVar)) {
            c().V(oVar2);
            c().d(oVar);
        } else if (oVar2 == null) {
            c().d(oVar);
        }
        this.f16688i = oVar;
    }

    public final void h(q qVar) {
        q qVar2 = this.f16686g;
        if (qVar == null) {
            if (qVar2 != null) {
                c().k0(qVar2);
            }
        } else if (qVar2 != null && !p4.h.c(qVar2, qVar)) {
            c().k0(qVar2);
            c().i0(qVar);
        } else if (qVar2 == null) {
            c().i0(qVar);
        }
        this.f16686g = qVar;
    }

    public final int hashCode() {
        return this.f16681b.hashCode() + (this.f16680a.hashCode() * 31);
    }

    public final void i(s sVar) {
        s sVar2 = this.f16685f;
        if (sVar == null) {
            if (sVar2 != null) {
                c().w(sVar2);
            }
        } else if (sVar2 != null && !p4.h.c(sVar2, sVar)) {
            c().w(sVar2);
            c().N(sVar);
        } else if (sVar2 == null) {
            c().N(sVar);
        }
        this.f16685f = sVar;
    }

    public final void j(e0 e0Var) {
        if (e0Var == null) {
            c().W(this.f16682c);
        } else {
            c().h(this.f16682c);
        }
    }

    public final void k(ea.m mVar) {
        p4.h.j(mVar, "adaptKitPairedDevices");
        c().updatePair(mVar);
    }

    public final String toString() {
        return "AdaptKitDeviceRequester(adaptKitPairedDevices=" + this.f16680a + ", identifier=" + this.f16681b + ")";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l(ea.m mVar) {
        this(mVar, v9.a.f16442j);
        v9.a.C0295a c0295a = v9.a.f16441i;
    }
}
