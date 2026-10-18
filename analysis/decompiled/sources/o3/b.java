package o3;

import android.util.SparseArray;
import java.util.Arrays;
import java.util.Objects;
import n3.b2;
import n3.k1;
import n3.o1;

/* JADX INFO: compiled from: AnalyticsListener.java */
/* JADX INFO: loaded from: classes.dex */
public interface b {

    /* JADX INFO: compiled from: AnalyticsListener.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f12079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final b2 f12080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12081c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final p4.x.b f12082d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f12083e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final b2 f12084f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f12085g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final p4.x.b f12086h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f12087i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f12088j;

        public a(long j10, b2 b2Var, int i10, p4.x.b bVar, long j11, b2 b2Var2, int i11, p4.x.b bVar2, long j12, long j13) {
            this.f12079a = j10;
            this.f12080b = b2Var;
            this.f12081c = i10;
            this.f12082d = bVar;
            this.f12083e = j11;
            this.f12084f = b2Var2;
            this.f12085g = i11;
            this.f12086h = bVar2;
            this.f12087i = j12;
            this.f12088j = j13;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f12079a == aVar.f12079a && this.f12081c == aVar.f12081c && this.f12083e == aVar.f12083e && this.f12085g == aVar.f12085g && this.f12087i == aVar.f12087i && this.f12088j == aVar.f12088j && t6.f.a(this.f12080b, aVar.f12080b) && t6.f.a(this.f12082d, aVar.f12082d) && t6.f.a(this.f12084f, aVar.f12084f) && t6.f.a(this.f12086h, aVar.f12086h);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Long.valueOf(this.f12079a), this.f12080b, Integer.valueOf(this.f12081c), this.f12082d, Long.valueOf(this.f12083e), this.f12084f, Integer.valueOf(this.f12085g), this.f12086h, Long.valueOf(this.f12087i), Long.valueOf(this.f12088j)});
        }
    }

    /* JADX INFO: renamed from: o3.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AnalyticsListener.java */
    public static final class C0219b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m5.j f12089a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SparseArray<a> f12090b;

        public C0219b(m5.j jVar, SparseArray<a> sparseArray) {
            this.f12089a = jVar;
            SparseArray<a> sparseArray2 = new SparseArray<>(jVar.c());
            for (int i10 = 0; i10 < jVar.c(); i10++) {
                int iB = jVar.b(i10);
                a aVar = sparseArray.get(iB);
                Objects.requireNonNull(aVar);
                sparseArray2.append(iB, aVar);
            }
            this.f12090b = sparseArray2;
        }

        public final boolean a(int i10) {
            return this.f12089a.a(i10);
        }

        public final a b(int i10) {
            a aVar = this.f12090b.get(i10);
            Objects.requireNonNull(aVar);
            return aVar;
        }
    }

    @Deprecated
    default void A0() {
    }

    default void B0() {
    }

    default void C0() {
    }

    default void D0() {
    }

    @Deprecated
    default void E() {
    }

    @Deprecated
    default void E0() {
    }

    default void F() {
    }

    default void F0() {
    }

    default void G() {
    }

    default void G0() {
    }

    default void H() {
    }

    default void H0() {
    }

    default void I() {
    }

    default void I0() {
    }

    default void J(int i10) {
    }

    default void J0(p4.u uVar) {
    }

    default void K() {
    }

    @Deprecated
    default void K0() {
    }

    default void L(o1 o1Var, C0219b c0219b) {
    }

    @Deprecated
    default void L0() {
    }

    default void M() {
    }

    default void M0() {
    }

    default void N() {
    }

    default void N0() {
    }

    default void O() {
    }

    @Deprecated
    default void O0() {
    }

    @Deprecated
    default void P() {
    }

    @Deprecated
    default void P0() {
    }

    default void Q() {
    }

    default void R() {
    }

    default void S(a aVar, int i10, long j10) {
    }

    default void T() {
    }

    default void U() {
    }

    default void V() {
    }

    default void W() {
    }

    default void X() {
    }

    default void Y() {
    }

    default void Z() {
    }

    @Deprecated
    default void a() {
    }

    default void a0() {
    }

    default void b(n5.t tVar) {
    }

    default void b0() {
    }

    default void c(q3.e eVar) {
    }

    @Deprecated
    default void c0() {
    }

    default void d0() {
    }

    @Deprecated
    default void e() {
    }

    default void e0() {
    }

    default void f0(a aVar, p4.u uVar) {
    }

    default void g0() {
    }

    default void h0() {
    }

    default void i(k1 k1Var) {
    }

    default void i0() {
    }

    default void j() {
    }

    default void j0() {
    }

    @Deprecated
    default void k() {
    }

    default void k0() {
    }

    default void l0() {
    }

    @Deprecated
    default void m0() {
    }

    default void n0() {
    }

    default void o0() {
    }

    default void p0() {
    }

    default void q0() {
    }

    @Deprecated
    default void r() {
    }

    default void r0() {
    }

    default void s0() {
    }

    default void t0() {
    }

    default void u0() {
    }

    default void v0() {
    }

    default void w0() {
    }

    @Deprecated
    default void x0() {
    }

    default void y0() {
    }

    @Deprecated
    default void z() {
    }

    default void z0() {
    }
}
