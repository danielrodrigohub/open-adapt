package n3;

import android.os.Bundle;
import android.os.Looper;
import android.util.SparseBooleanArray;
import android.view.SurfaceView;
import android.view.TextureView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: Player.java */
/* JADX INFO: loaded from: classes.dex */
public interface o1 {

    /* JADX INFO: compiled from: Player.java */
    public static final class a implements h {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final a f11600i;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final m5.j f11601h;

        /* JADX INFO: renamed from: n3.o1$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Player.java */
        public static final class C0214a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final m5.j.a f11602a = new m5.j.a();

            public final C0214a a(a aVar) {
                m5.j.a aVar2 = this.f11602a;
                m5.j jVar = aVar.f11601h;
                Objects.requireNonNull(aVar2);
                for (int i10 = 0; i10 < jVar.c(); i10++) {
                    aVar2.a(jVar.b(i10));
                }
                return this;
            }

            public final C0214a b(int i10, boolean z10) {
                m5.j.a aVar = this.f11602a;
                Objects.requireNonNull(aVar);
                if (z10) {
                    aVar.a(i10);
                }
                return this;
            }

            public final a c() {
                return new a(this.f11602a.b());
            }
        }

        static {
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            m5.a.e(!false);
            f11600i = new a(new m5.j(sparseBooleanArray));
            n1 n1Var = n1.f11551b;
        }

        public a(m5.j jVar) {
            this.f11601h = jVar;
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < this.f11601h.c(); i10++) {
                arrayList.add(Integer.valueOf(this.f11601h.b(i10)));
            }
            bundle.putIntegerArrayList(Integer.toString(0, 36), arrayList);
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.f11601h.equals(((a) obj).f11601h);
            }
            return false;
        }

        public final int hashCode() {
            return this.f11601h.hashCode();
        }
    }

    /* JADX INFO: compiled from: Player.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m5.j f11603a;

        public b(m5.j jVar) {
            this.f11603a = jVar;
        }

        public final boolean a(int... iArr) {
            m5.j jVar = this.f11603a;
            Objects.requireNonNull(jVar);
            for (int i10 : iArr) {
                if (jVar.a(i10)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f11603a.equals(((b) obj).f11603a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f11603a.hashCode();
        }
    }

    /* JADX INFO: compiled from: Player.java */
    public interface c {
        default void C(f4.a aVar) {
        }

        @Deprecated
        default void F(boolean z10, int i10) {
        }

        default void G(int i10) {
        }

        default void I(a1 a1Var) {
        }

        default void K(int i10) {
        }

        default void L(o oVar) {
        }

        default void N(boolean z10) {
        }

        default void R(float f10) {
        }

        default void U(int i10) {
        }

        default void V(boolean z10, int i10) {
        }

        default void Z(y0 y0Var, int i10) {
        }

        default void a0(m1 m1Var) {
        }

        default void b(n5.t tVar) {
        }

        @Deprecated
        default void e() {
        }

        default void e0(boolean z10) {
        }

        default void f0(int i10, int i11) {
        }

        default void g0(d dVar, d dVar2, int i10) {
        }

        default void h0(k1 k1Var) {
        }

        default void i(k1 k1Var) {
        }

        default void j() {
        }

        default void j0(a aVar) {
        }

        @Deprecated
        default void k() {
        }

        default void l(boolean z10) {
        }

        default void l0(c2 c2Var) {
        }

        default void m0(b bVar) {
        }

        @Deprecated
        default void n(List<z4.a> list) {
        }

        default void n0(int i10, boolean z10) {
        }

        default void o(z4.c cVar) {
        }

        default void o0(boolean z10) {
        }

        @Deprecated
        default void r() {
        }

        default void z(int i10) {
        }
    }

    /* JADX INFO: compiled from: Player.java */
    public static final class d implements h {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Object f11604h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f11605i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final y0 f11606j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final Object f11607k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f11608l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final long f11609m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f11610n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final int f11611o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final int f11612p;

        static {
            t0 t0Var = t0.f11723d;
        }

        public d(Object obj, int i10, y0 y0Var, Object obj2, int i11, long j10, long j11, int i12, int i13) {
            this.f11604h = obj;
            this.f11605i = i10;
            this.f11606j = y0Var;
            this.f11607k = obj2;
            this.f11608l = i11;
            this.f11609m = j10;
            this.f11610n = j11;
            this.f11611o = i12;
            this.f11612p = i13;
        }

        public static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putInt(b(0), this.f11605i);
            if (this.f11606j != null) {
                bundle.putBundle(b(1), this.f11606j.a());
            }
            bundle.putInt(b(2), this.f11608l);
            bundle.putLong(b(3), this.f11609m);
            bundle.putLong(b(4), this.f11610n);
            bundle.putInt(b(5), this.f11611o);
            bundle.putInt(b(6), this.f11612p);
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f11605i == dVar.f11605i && this.f11608l == dVar.f11608l && this.f11609m == dVar.f11609m && this.f11610n == dVar.f11610n && this.f11611o == dVar.f11611o && this.f11612p == dVar.f11612p && t6.f.a(this.f11604h, dVar.f11604h) && t6.f.a(this.f11607k, dVar.f11607k) && t6.f.a(this.f11606j, dVar.f11606j);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.f11604h, Integer.valueOf(this.f11605i), this.f11606j, this.f11607k, Integer.valueOf(this.f11608l), Long.valueOf(this.f11609m), Long.valueOf(this.f11610n), Integer.valueOf(this.f11611o), Integer.valueOf(this.f11612p)});
        }
    }

    n5.t A();

    int B();

    int C();

    boolean D(int i10);

    void E(int i10);

    boolean F();

    int G();

    void H(c cVar);

    void I(SurfaceView surfaceView);

    void J(SurfaceView surfaceView);

    boolean K();

    int L();

    int M();

    long N();

    b2 O();

    Looper P();

    boolean Q();

    void R(long j10);

    long S();

    void T();

    void U();

    void V(TextureView textureView);

    void W();

    a1 X();

    void Y(List list);

    void Z();

    void a0(c cVar);

    void b();

    long b0();

    void c();

    long c0();

    m1 d();

    boolean d0();

    void g();

    k1 h();

    void i(boolean z10);

    boolean j();

    long k();

    long l();

    long m();

    void n(int i10, long j10);

    a o();

    boolean p();

    boolean q();

    void r(boolean z10);

    int s();

    c2 t();

    void u();

    boolean v();

    boolean w();

    int x();

    z4.c y();

    void z(TextureView textureView);
}
