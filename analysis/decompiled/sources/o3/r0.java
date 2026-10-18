package o3;

import android.os.Looper;
import android.util.SparseArray;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import n3.a1;
import n3.b2;
import n3.c2;
import n3.k1;
import n3.m1;
import n3.n1;
import n3.o1;
import n3.y0;
import okhttp3.internal.ws.WebSocketProtocol;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: DefaultAnalyticsCollector.java */
/* JADX INFO: loaded from: classes.dex */
public final class r0 implements o3.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m5.c f12176h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b2.b f12177i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b2.d f12178j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f12179k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final SparseArray<b.a> f12180l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public m5.o<b> f12181m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o1 f12182n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public m5.l f12183o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f12184p;

    /* JADX INFO: compiled from: DefaultAnalyticsCollector.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b2.b f12185a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public u6.v<p4.x.b> f12186b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public u6.x<p4.x.b, b2> f12187c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public p4.x.b f12188d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public p4.x.b f12189e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public p4.x.b f12190f;

        public a(b2.b bVar) {
            this.f12185a = bVar;
            u6.a aVar = u6.v.f16002i;
            this.f12186b = u6.p0.f15967l;
            this.f12187c = u6.q0.f15971n;
        }

        public static p4.x.b b(o1 o1Var, u6.v<p4.x.b> vVar, p4.x.b bVar, b2.b bVar2) {
            b2 b2VarO = o1Var.O();
            int iX = o1Var.x();
            Object objO = b2VarO.s() ? null : b2VarO.o(iX);
            int iC = (o1Var.j() || b2VarO.s()) ? -1 : b2VarO.i(iX, bVar2, false).c(m5.g0.L(o1Var.b0()) - bVar2.f11299l);
            for (int i10 = 0; i10 < vVar.size(); i10++) {
                p4.x.b bVar3 = vVar.get(i10);
                if (c(bVar3, objO, o1Var.j(), o1Var.B(), o1Var.G(), iC)) {
                    return bVar3;
                }
            }
            if (vVar.isEmpty() && bVar != null) {
                if (c(bVar, objO, o1Var.j(), o1Var.B(), o1Var.G(), iC)) {
                    return bVar;
                }
            }
            return null;
        }

        public static boolean c(p4.x.b bVar, Object obj, boolean z10, int i10, int i11, int i12) {
            if (bVar.f13238a.equals(obj)) {
                return (z10 && bVar.f13239b == i10 && bVar.f13240c == i11) || (!z10 && bVar.f13239b == -1 && bVar.f13242e == i12);
            }
            return false;
        }

        public final void a(u6.x.a<p4.x.b, b2> aVar, p4.x.b bVar, b2 b2Var) {
            if (bVar == null) {
                return;
            }
            if (b2Var.d(bVar.f13238a) != -1) {
                aVar.c(bVar, b2Var);
                return;
            }
            b2 b2Var2 = this.f12187c.get(bVar);
            if (b2Var2 != null) {
                aVar.c(bVar, b2Var2);
            }
        }

        public final void d(b2 b2Var) {
            u6.x.a<p4.x.b, b2> aVar = new u6.x.a<>(4);
            if (this.f12186b.isEmpty()) {
                a(aVar, this.f12189e, b2Var);
                if (!t6.f.a(this.f12190f, this.f12189e)) {
                    a(aVar, this.f12190f, b2Var);
                }
                if (!t6.f.a(this.f12188d, this.f12189e) && !t6.f.a(this.f12188d, this.f12190f)) {
                    a(aVar, this.f12188d, b2Var);
                }
            } else {
                for (int i10 = 0; i10 < this.f12186b.size(); i10++) {
                    a(aVar, this.f12186b.get(i10), b2Var);
                }
                if (!this.f12186b.contains(this.f12188d)) {
                    a(aVar, this.f12188d, b2Var);
                }
            }
            this.f12187c = (u6.q0) aVar.a();
        }
    }

    public r0(m5.c cVar) {
        Objects.requireNonNull(cVar);
        this.f12176h = cVar;
        this.f12181m = new m5.o<>(new CopyOnWriteArraySet(), m5.g0.t(), cVar, n1.f11552c);
        b2.b bVar = new b2.b();
        this.f12177i = bVar;
        this.f12178j = new b2.d();
        this.f12179k = new a(bVar);
        this.f12180l = new SparseArray<>();
    }

    @Override // o3.a
    public final void A(final int i10, final long j10, final long j11) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 1011, new m5.o.a() { // from class: o3.h
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).G0();
            }
        });
    }

    @Override // o3.a
    public final void B(final int i10, final long j10) {
        final b.a aVarU0 = u0();
        x0(aVarU0, 1018, new m5.o.a() { // from class: o3.g
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).O();
            }
        });
    }

    @Override // n3.o1.c
    public final void C(f4.a aVar) {
        b.a aVarQ0 = q0();
        x0(aVarQ0, 28, new j0(aVarQ0, aVar, 0));
    }

    @Override // o3.a
    public final void D(final long j10, final int i10) {
        final b.a aVarU0 = u0();
        x0(aVarU0, 1021, new m5.o.a() { // from class: o3.m
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).u0();
            }
        });
    }

    @Override // n3.o1.c
    public final void F(final boolean z10, final int i10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, -1, new m5.o.a() { // from class: o3.f0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).P0();
            }
        });
    }

    @Override // n3.o1.c
    public final void G(final int i10) {
        a aVar = this.f12179k;
        o1 o1Var = this.f12182n;
        Objects.requireNonNull(o1Var);
        aVar.f12188d = a.b(o1Var, aVar.f12186b, aVar.f12189e, aVar.f12185a);
        aVar.d(o1Var.O());
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 0, new m5.o.a() { // from class: o3.o0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).y0();
            }
        });
    }

    @Override // p4.e0
    public final void H(int i10, p4.x.b bVar, p4.u uVar) {
        b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1004, new y0.k(aVarT0, uVar, 2));
    }

    @Override // n3.o1.c
    public final void I(a1 a1Var) {
        b.a aVarQ0 = q0();
        x0(aVarQ0, 14, new n(aVarQ0, a1Var, 0));
    }

    @Override // r3.k
    public final void J(int i10, p4.x.b bVar) {
        b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1027, new m0.b(aVarT0, 3));
    }

    @Override // n3.o1.c
    public final void K(final int i10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 8, new m5.o.a() { // from class: o3.d
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).F();
            }
        });
    }

    @Override // n3.o1.c
    public final void L(n3.o oVar) {
        b.a aVarQ0 = q0();
        x0(aVarQ0, 29, new y0.k(aVarQ0, oVar, 1));
    }

    @Override // p4.e0
    public final void M(int i10, p4.x.b bVar, p4.u uVar) {
        b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, WebSocketProtocol.CLOSE_NO_STATUS_CODE, new k0(aVarT0, uVar, 2));
    }

    @Override // n3.o1.c
    public final void N(final boolean z10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 3, new m5.o.a() { // from class: o3.b0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                b bVar = (b) obj;
                bVar.e();
                bVar.g0();
            }
        });
    }

    @Override // p4.e0
    public final void O(int i10, p4.x.b bVar, final p4.r rVar, final p4.u uVar) {
        final b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1000, new m5.o.a() { // from class: o3.v
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).i0();
            }
        });
    }

    @Override // p4.e0
    public final void P(int i10, p4.x.b bVar, final p4.r rVar, final p4.u uVar, final IOException iOException, final boolean z10) {
        final b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1003, new m5.o.a() { // from class: o3.x
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).J0(uVar);
            }
        });
    }

    @Override // p4.e0
    public final void Q(int i10, p4.x.b bVar, p4.r rVar, p4.u uVar) {
        b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1002, new l0(aVarT0, rVar, uVar, 0));
    }

    @Override // n3.o1.c
    public final void R(final float f10) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 22, new m5.o.a() { // from class: o3.n0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).v0();
            }
        });
    }

    @Override // o3.a
    public final void S(List<p4.x.b> list, p4.x.b bVar) {
        a aVar = this.f12179k;
        o1 o1Var = this.f12182n;
        Objects.requireNonNull(o1Var);
        Objects.requireNonNull(aVar);
        aVar.f12186b = u6.v.s(list);
        if (!list.isEmpty()) {
            aVar.f12189e = list.get(0);
            Objects.requireNonNull(bVar);
            aVar.f12190f = bVar;
        }
        if (aVar.f12188d == null) {
            aVar.f12188d = a.b(o1Var, aVar.f12186b, aVar.f12189e, aVar.f12185a);
        }
        aVar.d(o1Var.O());
    }

    @Override // r3.k
    public final void T(int i10, p4.x.b bVar) {
        b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1025, new c(aVarT0, 1));
    }

    @Override // n3.o1.c
    public final void U(final int i10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 4, new m5.o.a() { // from class: o3.p0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).w0();
            }
        });
    }

    @Override // n3.o1.c
    public final void V(final boolean z10, final int i10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 5, new m5.o.a() { // from class: o3.g0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).K();
            }
        });
    }

    @Override // o3.a
    public final void W(o1 o1Var, Looper looper) {
        m5.a.e(this.f12182n == null || this.f12179k.f12186b.isEmpty());
        Objects.requireNonNull(o1Var);
        this.f12182n = o1Var;
        this.f12183o = this.f12176h.b(looper, null);
        m5.o<b> oVar = this.f12181m;
        this.f12181m = new m5.o<>(oVar.f10420d, looper, oVar.f10417a, new k0(this, o1Var, 1));
    }

    @Override // l5.e.a
    public final void X(final int i10, final long j10, final long j11) {
        a aVar = this.f12179k;
        final b.a aVarS0 = s0(aVar.f12186b.isEmpty() ? null : (p4.x.b) g0.n.b(aVar.f12186b));
        x0(aVarS0, 1006, new m5.o.a() { // from class: o3.i
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).S(aVarS0, i10, j10);
            }
        });
    }

    @Override // p4.e0
    public final void Y(int i10, p4.x.b bVar, final p4.r rVar, final p4.u uVar) {
        final b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, new m5.o.a() { // from class: o3.w
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).e0();
            }
        });
    }

    @Override // n3.o1.c
    public final void Z(final y0 y0Var, final int i10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 1, new m5.o.a() { // from class: o3.u
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).l0();
            }
        });
    }

    @Override // o3.a
    public final void a() {
        m5.l lVar = this.f12183o;
        m5.a.f(lVar);
        lVar.i(new y0.s(this, 1));
    }

    @Override // n3.o1.c
    public final void a0(m1 m1Var) {
        b.a aVarQ0 = q0();
        x0(aVarQ0, 12, new i0(aVarQ0, m1Var, 2));
    }

    @Override // n3.o1.c
    public final void b(n5.t tVar) {
        b.a aVarV0 = v0();
        x0(aVarV0, 25, new n(aVarV0, tVar, 1));
    }

    @Override // o3.a
    public final void b0() {
        if (this.f12184p) {
            return;
        }
        b.a aVarQ0 = q0();
        this.f12184p = true;
        x0(aVarQ0, -1, new c(aVarQ0, 0));
    }

    @Override // o3.a
    public final void c(final q3.e eVar) {
        final b.a aVarU0 = u0();
        x0(aVarU0, 1020, new m5.o.a() { // from class: o3.a0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                b bVar = (b) obj;
                bVar.c(eVar);
                bVar.P();
            }
        });
    }

    @Override // o3.a
    public final void c0(b bVar) {
        m5.o<b> oVar = this.f12181m;
        if (oVar.f10423g) {
            return;
        }
        oVar.f10420d.add(new m5.o.c<>(bVar));
    }

    @Override // o3.a
    public final void d(final String str) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 1019, new m5.o.a() { // from class: o3.q
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).T();
            }
        });
    }

    @Override // r3.k
    public final void d0(int i10, p4.x.b bVar, Exception exc) {
        b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1024, new y0.d(aVarT0, exc, 2));
    }

    @Override // n3.o1.c
    public final void e() {
    }

    @Override // n3.o1.c
    public final void e0(final boolean z10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 9, new m5.o.a() { // from class: o3.d0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).b0();
            }
        });
    }

    @Override // o3.a
    public final void f(final Object obj, final long j10) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 26, new m5.o.a() { // from class: o3.p
            @Override // m5.o.a
            public final void invoke(Object obj2) {
                ((b) obj2).j();
            }
        });
    }

    @Override // n3.o1.c
    public final void f0(final int i10, final int i11) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 24, new m5.o.a() { // from class: o3.f
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).W();
            }
        });
    }

    @Override // o3.a
    public final void g(final String str, final long j10, final long j11) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 1016, new m5.o.a() { // from class: o3.s
            @Override // m5.o.a
            public final void invoke(Object obj) {
                b bVar = (b) obj;
                bVar.A0();
                bVar.R();
                bVar.m0();
            }
        });
    }

    @Override // n3.o1.c
    public final void g0(final o1.d dVar, final o1.d dVar2, final int i10) {
        if (i10 == 1) {
            this.f12184p = false;
        }
        a aVar = this.f12179k;
        o1 o1Var = this.f12182n;
        Objects.requireNonNull(o1Var);
        aVar.f12188d = a.b(o1Var, aVar.f12186b, aVar.f12189e, aVar.f12185a);
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 11, new m5.o.a() { // from class: o3.j
            @Override // m5.o.a
            public final void invoke(Object obj) {
                int i11 = i10;
                b bVar = (b) obj;
                bVar.r();
                bVar.J(i11);
            }
        });
    }

    @Override // o3.a
    public final void h(n3.s0 s0Var, q3.i iVar) {
        b.a aVarV0 = v0();
        x0(aVarV0, 1009, new l0(aVarV0, s0Var, iVar, 1));
    }

    @Override // n3.o1.c
    public final void h0(k1 k1Var) {
        b.a aVarW0 = w0(k1Var);
        x0(aVarW0, 10, new y(aVarW0, k1Var, 0));
    }

    @Override // n3.o1.c
    public final void i(k1 k1Var) {
        b.a aVarW0 = w0(k1Var);
        x0(aVarW0, 10, new h0(aVarW0, k1Var, 0));
    }

    @Override // r3.k
    public final void i0(int i10, p4.x.b bVar) {
        b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1026, new y0.c(aVarT0, 2));
    }

    @Override // n3.o1.c
    public final void j() {
    }

    @Override // n3.o1.c
    public final void j0(o1.a aVar) {
        b.a aVarQ0 = q0();
        x0(aVarQ0, 13, new y0.d(aVarQ0, aVar, 1));
    }

    @Override // n3.o1.c
    public final void k() {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, -1, new m5.o.a() { // from class: o3.m0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).k();
            }
        });
    }

    @Override // r3.k
    public final void k0(int i10, p4.x.b bVar, final int i11) {
        final b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1022, new m5.o.a() { // from class: o3.e
            @Override // m5.o.a
            public final void invoke(Object obj) {
                b bVar2 = (b) obj;
                bVar2.E();
                bVar2.F0();
            }
        });
    }

    @Override // n3.o1.c
    public final void l(final boolean z10) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 23, new m5.o.a() { // from class: o3.e0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).h0();
            }
        });
    }

    @Override // n3.o1.c
    public final void l0(c2 c2Var) {
        b.a aVarQ0 = q0();
        x0(aVarQ0, 2, new y(aVarQ0, c2Var, 1));
    }

    @Override // o3.a
    public final void m(Exception exc) {
        b.a aVarV0 = v0();
        x0(aVarV0, 1014, new j0(aVarV0, exc, 1));
    }

    @Override // n3.o1.c
    public final void m0(o1.b bVar) {
    }

    @Override // n3.o1.c
    public final void n(List<z4.a> list) {
        b.a aVarQ0 = q0();
        x0(aVarQ0, 27, new j0(aVarQ0, list, 3));
    }

    @Override // n3.o1.c
    public final void n0(final int i10, final boolean z10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 30, new m5.o.a() { // from class: o3.k
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).M();
            }
        });
    }

    @Override // n3.o1.c
    public final void o(z4.c cVar) {
        b.a aVarQ0 = q0();
        x0(aVarQ0, 27, new j0(aVarQ0, cVar, 2));
    }

    @Override // n3.o1.c
    public final void o0(final boolean z10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 7, new m5.o.a() { // from class: o3.c0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).H0();
            }
        });
    }

    @Override // o3.a
    public final void p(final long j10) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 1010, new m5.o.a() { // from class: o3.l
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).U();
            }
        });
    }

    @Override // r3.k
    public final void p0(int i10, p4.x.b bVar) {
        b.a aVarT0 = t0(i10, bVar);
        x0(aVarT0, 1023, new n3.z(aVarT0, 3));
    }

    @Override // o3.a
    public final void q(final q3.e eVar) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 1015, new m5.o.a() { // from class: o3.z
            @Override // m5.o.a
            public final void invoke(Object obj) {
                b bVar = (b) obj;
                bVar.r0();
                bVar.O0();
            }
        });
    }

    public final b.a q0() {
        return s0(this.f12179k.f12188d);
    }

    @Override // n3.o1.c
    public final void r() {
    }

    @RequiresNonNull({"player"})
    public final b.a r0(b2 b2Var, int i10, p4.x.b bVar) {
        long jL;
        p4.x.b bVar2 = b2Var.s() ? null : bVar;
        long jD = this.f12176h.d();
        boolean z10 = b2Var.equals(this.f12182n.O()) && i10 == this.f12182n.C();
        long jB = 0;
        if (bVar2 == null || !bVar2.a()) {
            if (z10) {
                jL = this.f12182n.l();
            } else if (!b2Var.s()) {
                jB = b2Var.p(i10, this.f12178j).b();
            }
            return new b.a(jD, b2Var, i10, bVar2, jL, this.f12182n.O(), this.f12182n.C(), this.f12179k.f12188d, this.f12182n.b0(), this.f12182n.m());
        }
        if (z10 && this.f12182n.B() == bVar2.f13239b && this.f12182n.G() == bVar2.f13240c) {
            jB = this.f12182n.b0();
        }
        jL = jB;
        return new b.a(jD, b2Var, i10, bVar2, jL, this.f12182n.O(), this.f12182n.C(), this.f12179k.f12188d, this.f12182n.b0(), this.f12182n.m());
    }

    @Override // o3.a
    public final void s(final Exception exc) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 1029, new m5.o.a() { // from class: o3.o
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).o0();
            }
        });
    }

    public final b.a s0(p4.x.b bVar) {
        Objects.requireNonNull(this.f12182n);
        b2 b2Var = bVar == null ? null : this.f12179k.f12187c.get(bVar);
        if (bVar != null && b2Var != null) {
            return r0(b2Var, b2Var.j(bVar.f13238a, this.f12177i).f11297j, bVar);
        }
        int iC = this.f12182n.C();
        b2 b2VarO = this.f12182n.O();
        if (!(iC < b2VarO.r())) {
            b2VarO = b2.f11293h;
        }
        return r0(b2VarO, iC, null);
    }

    @Override // o3.a
    public final void t(Exception exc) {
        b.a aVarV0 = v0();
        x0(aVarV0, 1030, new k0(aVarV0, exc, 0));
    }

    public final b.a t0(int i10, p4.x.b bVar) {
        Objects.requireNonNull(this.f12182n);
        if (bVar != null) {
            return this.f12179k.f12187c.get(bVar) != null ? s0(bVar) : r0(b2.f11293h, i10, bVar);
        }
        b2 b2VarO = this.f12182n.O();
        if (!(i10 < b2VarO.r())) {
            b2VarO = b2.f11293h;
        }
        return r0(b2VarO, i10, null);
    }

    @Override // o3.a
    public final void u(final n3.s0 s0Var, final q3.i iVar) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 1017, new m5.o.a() { // from class: o3.t
            @Override // m5.o.a
            public final void invoke(Object obj) {
                b bVar = (b) obj;
                bVar.z();
                bVar.k0();
                bVar.x0();
            }
        });
    }

    public final b.a u0() {
        return s0(this.f12179k.f12189e);
    }

    @Override // o3.a
    public final void v(String str) {
        b.a aVarV0 = v0();
        x0(aVarV0, 1012, new i0(aVarV0, str, 0));
    }

    public final b.a v0() {
        return s0(this.f12179k.f12190f);
    }

    @Override // o3.a
    public final void w(final String str, final long j10, final long j11) {
        final b.a aVarV0 = v0();
        x0(aVarV0, 1008, new m5.o.a() { // from class: o3.r
            @Override // m5.o.a
            public final void invoke(Object obj) {
                b bVar = (b) obj;
                bVar.L0();
                bVar.n0();
                bVar.m0();
            }
        });
    }

    public final b.a w0(k1 k1Var) {
        p4.w wVar;
        return (!(k1Var instanceof n3.q) || (wVar = ((n3.q) k1Var).f11638o) == null) ? q0() : s0(new p4.x.b(wVar));
    }

    @Override // o3.a
    public final void x(q3.e eVar) {
        b.a aVarU0 = u0();
        x0(aVarU0, 1013, new h0(aVarU0, eVar, 1));
    }

    public final void x0(b.a aVar, int i10, m5.o.a<b> aVar2) {
        this.f12180l.put(i10, aVar);
        this.f12181m.d(i10, aVar2);
    }

    @Override // o3.a
    public final void y(q3.e eVar) {
        b.a aVarV0 = v0();
        x0(aVarV0, 1007, new i0(aVarV0, eVar, 1));
    }

    @Override // n3.o1.c
    public final void z(final int i10) {
        final b.a aVarQ0 = q0();
        x0(aVarQ0, 6, new m5.o.a() { // from class: o3.q0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((b) obj).z0();
            }
        });
    }
}
