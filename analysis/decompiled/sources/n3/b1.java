package n3;

import android.util.Pair;
import java.util.Objects;

/* JADX INFO: compiled from: MediaPeriodHolder.java */
/* JADX INFO: loaded from: classes.dex */
public final class b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p4.v f11278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f11279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p4.m0[] f11280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f11281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f11282e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c1 f11283f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f11284g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean[] f11285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final t1[] f11286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final j5.s f11287j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final h1 f11288k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b1 f11289l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public p4.u0 f11290m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public j5.t f11291n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f11292o;

    /* JADX WARN: Type inference failed for: r14v3, types: [java.util.HashSet, java.util.Set<n3.h1$c>] */
    /* JADX WARN: Type inference failed for: r14v7, types: [java.util.ArrayList, java.util.List<p4.x$b>] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.HashMap, java.util.Map<java.lang.Object, n3.h1$c>] */
    public b1(t1[] t1VarArr, long j10, j5.s sVar, l5.b bVar, h1 h1Var, c1 c1Var, j5.t tVar) {
        this.f11286i = t1VarArr;
        this.f11292o = j10;
        this.f11287j = sVar;
        this.f11288k = h1Var;
        p4.x.b bVar2 = c1Var.f11328a;
        this.f11279b = bVar2.f13238a;
        this.f11283f = c1Var;
        this.f11290m = p4.u0.f13233k;
        this.f11291n = tVar;
        this.f11280c = new p4.m0[t1VarArr.length];
        this.f11285h = new boolean[t1VarArr.length];
        long j11 = c1Var.f11329b;
        long j12 = c1Var.f11331d;
        Objects.requireNonNull(h1Var);
        Object obj = bVar2.f13238a;
        int i10 = a.f11218l;
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        p4.x.b bVarB = bVar2.b(pair.second);
        h1.c cVar = (h1.c) h1Var.f11404d.get(obj2);
        Objects.requireNonNull(cVar);
        h1Var.f11409i.add(cVar);
        h1.b bVar3 = h1Var.f11408h.get(cVar);
        if (bVar3 != null) {
            bVar3.f11417a.o(bVar3.f11418b);
        }
        cVar.f11422c.add(bVarB);
        p4.v vVarB = cVar.f11420a.q(bVarB, bVar, j11);
        h1Var.f11403c.put(vVarB, cVar);
        h1Var.d();
        this.f11278a = j12 != -9223372036854775807L ? new p4.d(vVarB, true, 0L, j12) : vVarB;
    }

    public final long a(j5.t tVar, long j10, boolean z10, boolean[] zArr) {
        int i10 = 0;
        while (true) {
            boolean z11 = true;
            if (i10 >= tVar.f9437a) {
                break;
            }
            boolean[] zArr2 = this.f11285h;
            if (z10 || !tVar.a(this.f11291n, i10)) {
                z11 = false;
            }
            zArr2[i10] = z11;
            i10++;
        }
        p4.m0[] m0VarArr = this.f11280c;
        int i11 = 0;
        while (true) {
            t1[] t1VarArr = this.f11286i;
            if (i11 >= t1VarArr.length) {
                break;
            }
            if (((f) t1VarArr[i11]).f11381h == -2) {
                m0VarArr[i11] = null;
            }
            i11++;
        }
        b();
        this.f11291n = tVar;
        c();
        long jN = this.f11278a.n(tVar.f9439c, this.f11285h, this.f11280c, zArr, j10);
        p4.m0[] m0VarArr2 = this.f11280c;
        int i12 = 0;
        while (true) {
            t1[] t1VarArr2 = this.f11286i;
            if (i12 >= t1VarArr2.length) {
                break;
            }
            if (((f) t1VarArr2[i12]).f11381h == -2 && this.f11291n.b(i12)) {
                m0VarArr2[i12] = new p4.o();
            }
            i12++;
        }
        this.f11282e = false;
        int i13 = 0;
        while (true) {
            p4.m0[] m0VarArr3 = this.f11280c;
            if (i13 >= m0VarArr3.length) {
                return jN;
            }
            if (m0VarArr3[i13] != null) {
                m5.a.e(tVar.b(i13));
                if (((f) this.f11286i[i13]).f11381h != -2) {
                    this.f11282e = true;
                }
            } else {
                m5.a.e(tVar.f9439c[i13] == null);
            }
            i13++;
        }
    }

    public final void b() {
        if (!g()) {
            return;
        }
        int i10 = 0;
        while (true) {
            j5.t tVar = this.f11291n;
            if (i10 >= tVar.f9437a) {
                return;
            }
            boolean zB = tVar.b(i10);
            j5.l lVar = this.f11291n.f9439c[i10];
            if (zB && lVar != null) {
                lVar.disable();
            }
            i10++;
        }
    }

    public final void c() {
        if (!g()) {
            return;
        }
        int i10 = 0;
        while (true) {
            j5.t tVar = this.f11291n;
            if (i10 >= tVar.f9437a) {
                return;
            }
            boolean zB = tVar.b(i10);
            j5.l lVar = this.f11291n.f9439c[i10];
            if (zB && lVar != null) {
                lVar.f();
            }
            i10++;
        }
    }

    public final long d() {
        if (!this.f11281d) {
            return this.f11283f.f11329b;
        }
        long jE = this.f11282e ? this.f11278a.e() : Long.MIN_VALUE;
        return jE == Long.MIN_VALUE ? this.f11283f.f11332e : jE;
    }

    public final long e() {
        return this.f11283f.f11329b + this.f11292o;
    }

    public final boolean f() {
        return this.f11281d && (!this.f11282e || this.f11278a.e() == Long.MIN_VALUE);
    }

    public final boolean g() {
        return this.f11289l == null;
    }

    public final void h() {
        b();
        h1 h1Var = this.f11288k;
        p4.v vVar = this.f11278a;
        try {
            if (vVar instanceof p4.d) {
                h1Var.h(((p4.d) vVar).f12939h);
            } else {
                h1Var.h(vVar);
            }
        } catch (RuntimeException e10) {
            m5.p.d("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public final j5.t i(float f10, b2 b2Var) throws q {
        j5.s sVar = this.f11287j;
        t1[] t1VarArr = this.f11286i;
        p4.u0 u0Var = this.f11290m;
        p4.x.b bVar = this.f11283f.f11328a;
        j5.t tVarC = sVar.c(t1VarArr, u0Var);
        for (j5.l lVar : tVarC.f9439c) {
            if (lVar != null) {
                lVar.p(f10);
            }
        }
        return tVarC;
    }

    public final void j() {
        p4.v vVar = this.f11278a;
        if (vVar instanceof p4.d) {
            long j10 = this.f11283f.f11331d;
            if (j10 == -9223372036854775807L) {
                j10 = Long.MIN_VALUE;
            }
            p4.d dVar = (p4.d) vVar;
            dVar.f12943l = 0L;
            dVar.f12944m = j10;
        }
    }
}
