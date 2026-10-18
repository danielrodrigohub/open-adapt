package n3;

import android.os.Handler;
import android.util.Pair;
import java.util.Objects;

/* JADX INFO: compiled from: MediaPeriodQueue.java */
/* JADX INFO: loaded from: classes.dex */
public final class e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b2.b f11366a = new b2.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b2.d f11367b = new b2.d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o3.a f11368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f11369d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f11370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11371f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f11372g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b1 f11373h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public b1 f11374i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public b1 f11375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11376k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Object f11377l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f11378m;

    public e1(o3.a aVar, Handler handler) {
        this.f11368c = aVar;
        this.f11369d = handler;
    }

    public static p4.x.b o(b2 b2Var, Object obj, long j10, long j11, b2.d dVar, b2.b bVar) {
        b2Var.j(obj, bVar);
        b2Var.p(bVar.f11297j, dVar);
        int iD = b2Var.d(obj);
        Object obj2 = obj;
        while (bVar.f11298k == 0) {
            q4.a aVar = bVar.f11301n;
            if (aVar.f13610i <= 0 || !bVar.h(aVar.f13613l) || bVar.d(0L) != -1) {
                break;
            }
            int i10 = iD + 1;
            if (iD >= dVar.f11323w) {
                break;
            }
            b2Var.i(i10, bVar, true);
            obj2 = bVar.f11296i;
            Objects.requireNonNull(obj2);
            iD = i10;
        }
        b2Var.j(obj2, bVar);
        int iD2 = bVar.d(j10);
        return iD2 == -1 ? new p4.x.b(obj2, j11, bVar.c(j10)) : new p4.x.b(obj2, iD2, bVar.g(iD2), j11);
    }

    public final b1 a() {
        b1 b1Var = this.f11373h;
        if (b1Var == null) {
            return null;
        }
        if (b1Var == this.f11374i) {
            this.f11374i = b1Var.f11289l;
        }
        b1Var.h();
        int i10 = this.f11376k - 1;
        this.f11376k = i10;
        if (i10 == 0) {
            this.f11375j = null;
            b1 b1Var2 = this.f11373h;
            this.f11377l = b1Var2.f11279b;
            this.f11378m = b1Var2.f11283f.f11328a.f13241d;
        }
        this.f11373h = this.f11373h.f11289l;
        l();
        return this.f11373h;
    }

    public final void b() {
        if (this.f11376k == 0) {
            return;
        }
        b1 b1Var = this.f11373h;
        m5.a.f(b1Var);
        this.f11377l = b1Var.f11279b;
        this.f11378m = b1Var.f11283f.f11328a.f13241d;
        while (b1Var != null) {
            b1Var.h();
            b1Var = b1Var.f11289l;
        }
        this.f11373h = null;
        this.f11375j = null;
        this.f11374i = null;
        this.f11376k = 0;
        l();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:36:0x00de  */
    public final c1 c(b2 b2Var, b1 b1Var, long j10) {
        long j11;
        long j12;
        long j13;
        long j14;
        boolean z10;
        long j15;
        c1 c1Var = b1Var.f11283f;
        long j16 = (b1Var.f11292o + c1Var.f11332e) - j10;
        if (!c1Var.f11334g) {
            p4.x.b bVar = c1Var.f11328a;
            b2Var.j(bVar.f13238a, this.f11366a);
            if (!bVar.a()) {
                int iG = this.f11366a.g(bVar.f13242e);
                boolean z11 = this.f11366a.h(bVar.f13242e) && this.f11366a.f(bVar.f13242e, iG) == 3;
                if (iG == this.f11366a.f11301n.b(bVar.f13242e).f13617i || z11) {
                    return f(b2Var, bVar.f13238a, g(b2Var, bVar.f13238a, bVar.f13242e), c1Var.f11332e, bVar.f13241d);
                }
                return e(b2Var, bVar.f13238a, bVar.f13242e, iG, c1Var.f11332e, bVar.f13241d);
            }
            int i10 = bVar.f13239b;
            int i11 = this.f11366a.f11301n.b(i10).f13617i;
            if (i11 == -1) {
                return null;
            }
            int iB = this.f11366a.f11301n.b(i10).b(bVar.f13240c);
            if (iB < i11) {
                return e(b2Var, bVar.f13238a, i10, iB, c1Var.f11330c, bVar.f13241d);
            }
            long jLongValue = c1Var.f11330c;
            if (jLongValue == -9223372036854775807L) {
                b2.d dVar = this.f11367b;
                b2.b bVar2 = this.f11366a;
                Pair<Object, Long> pairM = b2Var.m(dVar, bVar2, bVar2.f11297j, -9223372036854775807L, Math.max(0L, j16));
                if (pairM == null) {
                    return null;
                }
                jLongValue = ((Long) pairM.second).longValue();
            }
            return f(b2Var, bVar.f13238a, Math.max(g(b2Var, bVar.f13238a, bVar.f13239b), jLongValue), c1Var.f11330c, bVar.f13241d);
        }
        int iF = b2Var.f(b2Var.d(c1Var.f11328a.f13238a), this.f11366a, this.f11367b, this.f11371f, this.f11372g);
        if (iF == -1) {
            return null;
        }
        int i12 = b2Var.i(iF, this.f11366a, true).f11297j;
        Object obj = this.f11366a.f11296i;
        Objects.requireNonNull(obj);
        long j17 = c1Var.f11328a.f13241d;
        if (b2Var.p(i12, this.f11367b).f11322v == iF) {
            Pair<Object, Long> pairM2 = b2Var.m(this.f11367b, this.f11366a, i12, -9223372036854775807L, Math.max(0L, j16));
            if (pairM2 == null) {
                return null;
            }
            obj = pairM2.first;
            long jLongValue2 = ((Long) pairM2.second).longValue();
            b1 b1Var2 = b1Var.f11289l;
            if (b1Var2 == null || !b1Var2.f11279b.equals(obj)) {
                j15 = this.f11370e;
                this.f11370e = 1 + j15;
            } else {
                j15 = b1Var2.f11283f.f11328a.f13241d;
            }
            j11 = jLongValue2;
            j12 = -9223372036854775807L;
            j17 = j15;
        } else {
            j11 = 0;
            j12 = 0;
        }
        p4.x.b bVarO = o(b2Var, obj, j11, j17, this.f11367b, this.f11366a);
        if (j12 == -9223372036854775807L || c1Var.f11330c == -9223372036854775807L) {
            j13 = j11;
            j14 = j12;
        } else {
            if (b2Var.j(c1Var.f11328a.f13238a, this.f11366a).f11301n.f13610i > 0) {
                b2.b bVar3 = this.f11366a;
                z10 = bVar3.h(bVar3.f11301n.f13613l);
            }
            if (bVarO.a() && z10) {
                j14 = c1Var.f11330c;
                j13 = j11;
            } else {
                if (z10) {
                    j13 = c1Var.f11330c;
                } else {
                    j13 = j11;
                }
                j14 = j12;
            }
        }
        return d(b2Var, bVarO, j14, j13);
    }

    public final c1 d(b2 b2Var, p4.x.b bVar, long j10, long j11) {
        b2Var.j(bVar.f13238a, this.f11366a);
        return bVar.a() ? e(b2Var, bVar.f13238a, bVar.f13239b, bVar.f13240c, j10, bVar.f13241d) : f(b2Var, bVar.f13238a, j11, j10, bVar.f13241d);
    }

    public final c1 e(b2 b2Var, Object obj, int i10, int i11, long j10, long j11) {
        p4.x.b bVar = new p4.x.b(obj, i10, i11, j11);
        long jB = b2Var.j(obj, this.f11366a).b(i10, i11);
        long j12 = i11 == this.f11366a.g(i10) ? this.f11366a.f11301n.f13611j : 0L;
        return new c1(bVar, (jB == -9223372036854775807L || j12 < jB) ? j12 : Math.max(0L, jB - 1), j10, -9223372036854775807L, jB, this.f11366a.h(i10), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0099  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    public final c1 f(b2 b2Var, Object obj, long j10, long j11, long j12) {
        boolean z10;
        long j13;
        long jE;
        long j14;
        long jMax = j10;
        b2Var.j(obj, this.f11366a);
        int iC = this.f11366a.c(jMax);
        if (iC == -1) {
            b2.b bVar = this.f11366a;
            q4.a aVar = bVar.f11301n;
            z10 = aVar.f13610i > 0 && bVar.h(aVar.f13613l);
        } else {
            if (this.f11366a.h(iC)) {
                long jE2 = this.f11366a.e(iC);
                b2.b bVar2 = this.f11366a;
                if (jE2 == bVar2.f11298k && (!bVar2.f11301n.b(iC).c())) {
                    iC = -1;
                }
            }
        }
        p4.x.b bVar3 = new p4.x.b(obj, j12, iC);
        boolean zI = i(bVar3);
        boolean zK = k(b2Var, bVar3);
        boolean zJ = j(b2Var, bVar3, zI);
        boolean z11 = iC != -1 && this.f11366a.h(iC);
        if (iC == -1) {
            if (z10) {
                jE = this.f11366a.f11298k;
            } else {
                j13 = -9223372036854775807L;
            }
            if (j13 != -9223372036854775807L || j13 == Long.MIN_VALUE) {
                j14 = this.f11366a.f11298k;
            } else {
                j14 = j13;
            }
            if (j14 != -9223372036854775807L && jMax >= j14) {
                jMax = Math.max(0L, j14 - ((long) ((zJ && z10) ? 0 : 1)));
            }
            return new c1(bVar3, jMax, j11, j13, j14, z11, zI, zK, zJ);
        }
        jE = this.f11366a.e(iC);
        j13 = jE;
        if (j13 != -9223372036854775807L) {
            j14 = this.f11366a.f11298k;
        } else {
            j14 = this.f11366a.f11298k;
        }
        if (j14 != -9223372036854775807L) {
            jMax = Math.max(0L, j14 - ((long) ((zJ && z10) ? 0 : 1)));
        }
        return new c1(bVar3, jMax, j11, j13, j14, z11, zI, zK, zJ);
    }

    public final long g(b2 b2Var, Object obj, int i10) {
        b2Var.j(obj, this.f11366a);
        long jE = this.f11366a.e(i10);
        return jE == Long.MIN_VALUE ? this.f11366a.f11298k : jE + this.f11366a.f11301n.b(i10).f13621m;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:24:0x006a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0078  */
    public final c1 h(b2 b2Var, c1 c1Var) {
        long jB;
        long j10;
        int i10;
        boolean zH;
        int i11;
        p4.x.b bVar = c1Var.f11328a;
        boolean zI = i(bVar);
        boolean zK = k(b2Var, bVar);
        boolean zJ = j(b2Var, bVar, zI);
        b2Var.j(c1Var.f11328a.f13238a, this.f11366a);
        long jE = (bVar.a() || (i11 = bVar.f13242e) == -1) ? -9223372036854775807L : this.f11366a.e(i11);
        if (!bVar.a()) {
            if (jE == -9223372036854775807L || jE == Long.MIN_VALUE) {
                jB = this.f11366a.f11298k;
            } else {
                j10 = jE;
            }
            if (bVar.a()) {
                zH = this.f11366a.h(bVar.f13239b);
            } else {
                i10 = bVar.f13242e;
                if (i10 == -1 && this.f11366a.h(i10)) {
                    zH = true;
                } else {
                    zH = false;
                }
            }
            return new c1(bVar, c1Var.f11329b, c1Var.f11330c, jE, j10, zH, zI, zK, zJ);
        }
        jB = this.f11366a.b(bVar.f13239b, bVar.f13240c);
        j10 = jB;
        if (bVar.a()) {
            zH = this.f11366a.h(bVar.f13239b);
        } else {
            i10 = bVar.f13242e;
            if (i10 == -1) {
                zH = false;
            } else {
                zH = false;
            }
        }
        return new c1(bVar, c1Var.f11329b, c1Var.f11330c, jE, j10, zH, zI, zK, zJ);
    }

    public final boolean i(p4.x.b bVar) {
        return !bVar.a() && bVar.f13242e == -1;
    }

    public final boolean j(b2 b2Var, p4.x.b bVar, boolean z10) {
        int iD = b2Var.d(bVar.f13238a);
        if (b2Var.p(b2Var.i(iD, this.f11366a, false).f11297j, this.f11367b).f11316p) {
            return false;
        }
        return (b2Var.f(iD, this.f11366a, this.f11367b, this.f11371f, this.f11372g) == -1) && z10;
    }

    public final boolean k(b2 b2Var, p4.x.b bVar) {
        if (i(bVar)) {
            return b2Var.p(b2Var.j(bVar.f13238a, this.f11366a).f11297j, this.f11367b).f11323w == b2Var.d(bVar.f13238a);
        }
        return false;
    }

    public final void l() {
        u6.a aVar = u6.v.f16002i;
        final u6.v.a aVar2 = new u6.v.a();
        for (b1 b1Var = this.f11373h; b1Var != null; b1Var = b1Var.f11289l) {
            aVar2.c(b1Var.f11283f.f11328a);
        }
        b1 b1Var2 = this.f11374i;
        final p4.x.b bVar = b1Var2 == null ? null : b1Var2.f11283f.f11328a;
        this.f11369d.post(new Runnable() { // from class: n3.d1
            @Override // java.lang.Runnable
            public final void run() {
                e1 e1Var = this.f11357h;
                u6.v.a aVar3 = aVar2;
                e1Var.f11368c.S(aVar3.e(), bVar);
            }
        });
    }

    public final void m(long j10) {
        b1 b1Var = this.f11375j;
        if (b1Var != null) {
            m5.a.e(b1Var.g());
            if (b1Var.f11281d) {
                b1Var.f11278a.g(j10 - b1Var.f11292o);
            }
        }
    }

    public final boolean n(b1 b1Var) {
        boolean z10 = false;
        m5.a.e(b1Var != null);
        if (b1Var.equals(this.f11375j)) {
            return false;
        }
        this.f11375j = b1Var;
        while (true) {
            b1Var = b1Var.f11289l;
            if (b1Var == null) {
                break;
            }
            if (b1Var == this.f11374i) {
                this.f11374i = this.f11373h;
                z10 = true;
            }
            b1Var.h();
            this.f11376k--;
        }
        b1 b1Var2 = this.f11375j;
        if (b1Var2.f11289l != null) {
            b1Var2.b();
            b1Var2.f11289l = null;
            b1Var2.c();
        }
        l();
        return z10;
    }

    public final p4.x.b p(b2 b2Var, Object obj, long j10) {
        long j11;
        int iD;
        Object obj2 = obj;
        int i10 = b2Var.j(obj, this.f11366a).f11297j;
        Object obj3 = this.f11377l;
        if (obj3 == null || (iD = b2Var.d(obj3)) == -1 || b2Var.i(iD, this.f11366a, false).f11297j != i10) {
            b1 b1Var = this.f11373h;
            while (true) {
                if (b1Var == null) {
                    b1 b1Var2 = this.f11373h;
                    while (true) {
                        if (b1Var2 == null) {
                            j11 = this.f11370e;
                            this.f11370e = 1 + j11;
                            if (this.f11373h != null) {
                                break;
                            }
                            this.f11377l = obj2;
                            this.f11378m = j11;
                            break;
                        }
                        int iD2 = b2Var.d(b1Var2.f11279b);
                        if (iD2 != -1 && b2Var.i(iD2, this.f11366a, false).f11297j == i10) {
                            j11 = b1Var2.f11283f.f11328a.f13241d;
                            break;
                        }
                        b1Var2 = b1Var2.f11289l;
                    }
                } else {
                    if (b1Var.f11279b.equals(obj)) {
                        j11 = b1Var.f11283f.f11328a.f13241d;
                        break;
                    }
                    b1Var = b1Var.f11289l;
                }
            }
        } else {
            j11 = this.f11378m;
        }
        long j12 = j11;
        b2Var.j(obj, this.f11366a);
        b2Var.p(this.f11366a.f11297j, this.f11367b);
        boolean z10 = false;
        for (int iD3 = b2Var.d(obj); iD3 >= this.f11367b.f11322v; iD3--) {
            b2Var.i(iD3, this.f11366a, true);
            b2.b bVar = this.f11366a;
            boolean z11 = bVar.f11301n.f13610i > 0;
            z10 |= z11;
            if (bVar.d(bVar.f11298k) != -1) {
                obj2 = this.f11366a.f11296i;
                Objects.requireNonNull(obj2);
            }
            if (z10 && (!z11 || this.f11366a.f11298k != 0)) {
                break;
            }
        }
        return o(b2Var, obj2, j10, j12, this.f11367b, this.f11366a);
    }

    public final boolean q(b2 b2Var) {
        b1 b1Var;
        b1 b1Var2 = this.f11373h;
        if (b1Var2 == null) {
            return true;
        }
        int iD = b2Var.d(b1Var2.f11279b);
        while (true) {
            iD = b2Var.f(iD, this.f11366a, this.f11367b, this.f11371f, this.f11372g);
            while (true) {
                b1Var = b1Var2.f11289l;
                if (b1Var == null || b1Var2.f11283f.f11334g) {
                    break;
                }
                b1Var2 = b1Var;
            }
            if (iD == -1 || b1Var == null || b2Var.d(b1Var.f11279b) != iD) {
                break;
            }
            b1Var2 = b1Var;
        }
        boolean zN = n(b1Var2);
        b1Var2.f11283f = h(b2Var, b1Var2.f11283f);
        return !zN;
    }

    public final boolean r(b2 b2Var, long j10, long j11) {
        boolean zN;
        c1 c1VarH;
        b1 b1Var = this.f11373h;
        b1 b1Var2 = null;
        while (b1Var != null) {
            c1 c1Var = b1Var.f11283f;
            if (b1Var2 != null) {
                c1 c1VarC = c(b2Var, b1Var2, j10);
                if (c1VarC == null) {
                    zN = n(b1Var2);
                } else {
                    if (c1Var.f11329b == c1VarC.f11329b && c1Var.f11328a.equals(c1VarC.f11328a)) {
                        c1VarH = c1VarC;
                    } else {
                        zN = n(b1Var2);
                    }
                }
                return !zN;
            }
            c1VarH = h(b2Var, c1Var);
            b1Var.f11283f = c1VarH.a(c1Var.f11330c);
            long j12 = c1Var.f11332e;
            if (!(j12 == -9223372036854775807L || j12 == c1VarH.f11332e)) {
                b1Var.j();
                long j13 = c1VarH.f11332e;
                return (n(b1Var) || (b1Var == this.f11374i && !b1Var.f11283f.f11333f && ((j11 > Long.MIN_VALUE ? 1 : (j11 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j11 > ((j13 > (-9223372036854775807L) ? 1 : (j13 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : j13 + b1Var.f11292o) ? 1 : (j11 == ((j13 > (-9223372036854775807L) ? 1 : (j13 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : j13 + b1Var.f11292o) ? 0 : -1)) >= 0))) ? false : true;
            }
            b1Var2 = b1Var;
            b1Var = b1Var.f11289l;
        }
        return true;
    }
}
