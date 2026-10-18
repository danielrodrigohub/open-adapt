package p4;

import android.os.Handler;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import n3.b2;

/* JADX INFO: compiled from: CompositeMediaSource.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g<T> extends p4.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final HashMap<T, b<T>> f12992o = new HashMap<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Handler f12993p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public l5.j0 f12994q;

    /* JADX INFO: compiled from: CompositeMediaSource.java */
    public final class a implements e0, r3.k {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final T f12995h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public e0.a f12996i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public r3.k.a f12997j;

        public a(T t10) {
            this.f12996i = g.this.s(null);
            this.f12997j = g.this.r(null);
            this.f12995h = t10;
        }

        @Override // p4.e0
        public final void H(int i10, x.b bVar, u uVar) {
            if (b(i10, bVar)) {
                this.f12996i.c(e(uVar));
            }
        }

        @Override // r3.k
        public final void J(int i10, x.b bVar) {
            if (b(i10, bVar)) {
                this.f12997j.f();
            }
        }

        @Override // p4.e0
        public final void M(int i10, x.b bVar, u uVar) {
            if (b(i10, bVar)) {
                this.f12996i.q(e(uVar));
            }
        }

        @Override // p4.e0
        public final void O(int i10, x.b bVar, r rVar, u uVar) {
            if (b(i10, bVar)) {
                this.f12996i.o(rVar, e(uVar));
            }
        }

        @Override // p4.e0
        public final void P(int i10, x.b bVar, r rVar, u uVar, IOException iOException, boolean z10) {
            if (b(i10, bVar)) {
                this.f12996i.l(rVar, e(uVar), iOException, z10);
            }
        }

        @Override // p4.e0
        public final void Q(int i10, x.b bVar, r rVar, u uVar) {
            if (b(i10, bVar)) {
                this.f12996i.f(rVar, e(uVar));
            }
        }

        @Override // r3.k
        public final void T(int i10, x.b bVar) {
            if (b(i10, bVar)) {
                this.f12997j.c();
            }
        }

        @Override // p4.e0
        public final void Y(int i10, x.b bVar, r rVar, u uVar) {
            if (b(i10, bVar)) {
                this.f12996i.i(rVar, e(uVar));
            }
        }

        public final boolean b(int i10, x.b bVar) {
            x.b bVarY;
            if (bVar != null) {
                bVarY = g.this.y(this.f12995h, bVar);
                if (bVarY == null) {
                    return false;
                }
            } else {
                bVarY = null;
            }
            Objects.requireNonNull(g.this);
            e0.a aVar = this.f12996i;
            if (aVar.f12968a != i10 || !m5.g0.a(aVar.f12969b, bVarY)) {
                this.f12996i = g.this.f12918j.r(i10, bVarY, 0L);
            }
            r3.k.a aVar2 = this.f12997j;
            if (aVar2.f14502a == i10 && m5.g0.a(aVar2.f14503b, bVarY)) {
                return true;
            }
            this.f12997j = g.this.f12919k.g(i10, bVarY);
            return true;
        }

        @Override // r3.k
        public final void d0(int i10, x.b bVar, Exception exc) {
            if (b(i10, bVar)) {
                this.f12997j.e(exc);
            }
        }

        public final u e(u uVar) {
            g gVar = g.this;
            long j10 = uVar.f13231f;
            Objects.requireNonNull(gVar);
            g gVar2 = g.this;
            long j11 = uVar.f13232g;
            Objects.requireNonNull(gVar2);
            return (j10 == uVar.f13231f && j11 == uVar.f13232g) ? uVar : new u(uVar.f13226a, uVar.f13227b, uVar.f13228c, uVar.f13229d, uVar.f13230e, j10, j11);
        }

        @Override // r3.k
        public final void i0(int i10, x.b bVar) {
            if (b(i10, bVar)) {
                this.f12997j.b();
            }
        }

        @Override // r3.k
        public final void k0(int i10, x.b bVar, int i11) {
            if (b(i10, bVar)) {
                this.f12997j.d(i11);
            }
        }

        @Override // r3.k
        public final void p0(int i10, x.b bVar) {
            if (b(i10, bVar)) {
                this.f12997j.a();
            }
        }
    }

    /* JADX INFO: compiled from: CompositeMediaSource.java */
    public static final class b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final x f12999a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final x.c f13000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final g<T>.a f13001c;

        public b(x xVar, x.c cVar, g<T>.a aVar) {
            this.f12999a = xVar;
            this.f13000b = cVar;
            this.f13001c = aVar;
        }
    }

    public final void A(final T t10, x xVar) {
        m5.a.a(!this.f12992o.containsKey(t10));
        x.c cVar = new x.c() { // from class: p4.f
            @Override // p4.x.c
            public final void a(x xVar2, b2 b2Var) {
                this.f12974a.z(t10, xVar2, b2Var);
            }
        };
        a aVar = new a(t10);
        this.f12992o.put(t10, new b<>(xVar, cVar, aVar));
        Handler handler = this.f12993p;
        Objects.requireNonNull(handler);
        xVar.f(handler, aVar);
        Handler handler2 = this.f12993p;
        Objects.requireNonNull(handler2);
        xVar.p(handler2, aVar);
        l5.j0 j0Var = this.f12994q;
        o3.v0 v0Var = this.f12922n;
        m5.a.f(v0Var);
        xVar.c(cVar, j0Var, v0Var);
        if (!this.f12917i.isEmpty()) {
            return;
        }
        xVar.l(cVar);
    }

    @Override // p4.x
    public void b() throws IOException {
        Iterator<b<T>> it = this.f12992o.values().iterator();
        while (it.hasNext()) {
            it.next().f12999a.b();
        }
    }

    @Override // p4.a
    public final void t() {
        for (b<T> bVar : this.f12992o.values()) {
            bVar.f12999a.l(bVar.f13000b);
        }
    }

    @Override // p4.a
    public final void u() {
        for (b<T> bVar : this.f12992o.values()) {
            bVar.f12999a.o(bVar.f13000b);
        }
    }

    @Override // p4.a
    public void v(l5.j0 j0Var) {
        this.f12994q = j0Var;
        this.f12993p = m5.g0.l(null);
    }

    @Override // p4.a
    public void x() {
        for (b<T> bVar : this.f12992o.values()) {
            bVar.f12999a.g(bVar.f13000b);
            bVar.f12999a.j(bVar.f13001c);
            bVar.f12999a.n(bVar.f13001c);
        }
        this.f12992o.clear();
    }

    public x.b y(T t10, x.b bVar) {
        return bVar;
    }

    public abstract void z(T t10, x xVar, b2 b2Var);
}
