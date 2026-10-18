package w9;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import v9.d5;
import v9.e6;
import v9.f3;
import v9.g5;
import v9.i3;
import v9.i6;
import v9.l6;
import v9.m3;
import v9.o6;
import v9.p3;
import v9.s5;
import v9.s6;
import v9.w5;
import v9.w6;
import v9.z5;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public interface d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f17265a = a.f17266a;

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f17266a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Map<String, d> f17267b = new LinkedHashMap();
    }

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class b {

        /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
        public static final class a extends rd.o implements qd.l<v9.j, fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public static final a f17268h = new a();

            public a() {
                super(1);
            }

            @Override // qd.l
            public final fd.o invoke(v9.j jVar) {
                v9.j jVar2 = jVar;
                p4.h.j(jVar2, "$this$null");
                d3.e.j().b("AdaptKit>MoveTo", jVar2.f16648k);
                return fd.o.f7408a;
            }
        }

        /* JADX INFO: renamed from: w9.d$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
        public static final class C0305b extends rd.o implements qd.l<v9.r, fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public static final C0305b f17269h = new C0305b();

            public C0305b() {
                super(1);
            }

            @Override // qd.l
            public final fd.o invoke(v9.r rVar) {
                v9.r rVar2 = rVar;
                p4.h.j(rVar2, "$this$null");
                d3.e.j().b("AdaptKit>MoveTo", rVar2.f16793j);
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void a(d dVar, w9.a aVar, ea.h hVar, qd.l lVar, qd.l lVar2, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                lVar = a.f17268h;
            }
            if ((i10 & 8) != 0) {
                lVar2 = C0305b.f17269h;
            }
            dVar.C(aVar, hVar, lVar, lVar2);
        }
    }

    da.f A();

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void B(w9.a aVar, s6 s6Var);

    void C(w9.a aVar, ea.h hVar, qd.l<? super v9.j, fd.o> lVar, qd.l<? super v9.r, fd.o> lVar2);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void D(w9.a aVar, z5 z5Var);

    void E(w9.a aVar, ea.d dVar, qd.l<? super v9.j, fd.o> lVar);

    void F(v9.t0 t0Var);

    @v9.n(minimumFirmwareVersion = "1.5.0")
    void G(w9.a aVar, v9.x0 x0Var);

    void H(w9.a aVar, qd.l<? super v9.h, fd.o> lVar, qd.l<? super v9.l0, fd.o> lVar2);

    void I(fa.j jVar, w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void J(v9.a aVar, ea.e eVar, qd.l<? super v9.j, fd.o> lVar, qd.l<? super v9.y, fd.o> lVar2);

    void K(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void L(v9.a aVar, ea.e eVar, qd.l<? super v9.r, fd.o> lVar, qd.l<? super v9.y, fd.o> lVar2);

    void M(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void N(v9.s sVar);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void O(w9.a aVar, w5 w5Var);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void P(w9.a aVar, v9.k1 k1Var);

    void Q(v9.a aVar, ea.e eVar, qd.l<? super v9.y, fd.o> lVar);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void R(w9.a aVar, e6 e6Var);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void S(w9.a aVar, i6 i6Var);

    void T(v9.a aVar);

    @v9.n(minimumFirmwareVersion = "1.4.0")
    void U(w9.a aVar, g5 g5Var);

    void V(v9.o oVar);

    void W(qd.l<? super ea.m, fd.o> lVar);

    void X(v9.i iVar);

    void Y(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void Z(w9.a aVar, i3 i3Var);

    @v9.n(minimumFirmwareVersion = "1.5.0")
    void a(w9.a aVar, v9.v0 v0Var);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void a0(w9.a aVar, v9.u1 u1Var);

    void b(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    @v9.n(minimumFirmwareVersion = "1.5.0")
    void b0(w9.a aVar, v9.z0 z0Var);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void c(w9.a aVar, o6 o6Var);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void c0(w9.a aVar, w6 w6Var);

    void d(v9.o oVar);

    void d0(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void e(w9.a aVar, m3 m3Var);

    List<ea.e> e0();

    void f(w9.a aVar);

    void f0(w9.a aVar, p3 p3Var);

    void g(w9.a aVar, ea.h hVar, qd.l<? super v9.j, fd.o> lVar, qd.l<? super v9.r, fd.o> lVar2);

    void g0(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void h(qd.l<? super ea.m, fd.o> lVar);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void h0(w9.a aVar, l6 l6Var);

    fb.c i(w9.a aVar);

    void i0(fb.d dVar);

    void j(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void j0(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void k(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void k0(fb.d dVar);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void l(w9.a aVar, v9.r1 r1Var);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void l0(w9.a aVar, s5 s5Var);

    @v9.n(minimumFirmwareVersion = "1.5.0")
    void m(w9.a aVar, v9.d1 d1Var);

    void n(v9.i iVar);

    void o(w9.a aVar, qd.l<? super v9.h, fd.o> lVar);

    void p(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    void q(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    @v9.n(minimumFirmwareVersion = "2.3.0")
    void r(w9.a aVar, v9.o1 o1Var);

    void s(v9.a aVar, qd.l<? super v9.j, fd.o> lVar, qd.l<? super v9.j, fd.o> lVar2);

    fa.d t();

    Object u(jd.d<? super fa.a> dVar);

    void updatePair(ea.m mVar);

    void v(v9.a aVar, qd.l<? super v9.b, fd.o> lVar);

    void w(v9.s sVar);

    void x(w9.a aVar, qd.l<? super v9.j, fd.o> lVar);

    @v9.n(minimumFirmwareVersion = "1.4.0")
    void y(w9.a aVar, d5 d5Var);

    void z(w9.a aVar, f3 f3Var);
}
