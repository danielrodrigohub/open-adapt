package p4;

import android.util.Pair;
import java.util.Objects;
import n3.b2;
import n3.y0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: MaskingMediaSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class t extends g<Void> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final x f13207r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f13208s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final b2.d f13209t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final b2.b f13210u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public a f13211v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public s f13212w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f13213x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f13214y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f13215z;

    /* JADX INFO: compiled from: MaskingMediaSource.java */
    public static final class a extends p {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final Object f13216l = new Object();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Object f13217j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final Object f13218k;

        public a(b2 b2Var, Object obj, Object obj2) {
            super(b2Var);
            this.f13217j = obj;
            this.f13218k = obj2;
        }

        @Override // p4.p, n3.b2
        public final int d(Object obj) {
            Object obj2;
            b2 b2Var = this.f13144i;
            if (f13216l.equals(obj) && (obj2 = this.f13218k) != null) {
                obj = obj2;
            }
            return b2Var.d(obj);
        }

        @Override // p4.p, n3.b2
        public final b2.b i(int i10, b2.b bVar, boolean z10) {
            this.f13144i.i(i10, bVar, z10);
            if (m5.g0.a(bVar.f11296i, this.f13218k) && z10) {
                bVar.f11296i = f13216l;
            }
            return bVar;
        }

        @Override // p4.p, n3.b2
        public final Object o(int i10) {
            Object objO = this.f13144i.o(i10);
            return m5.g0.a(objO, this.f13218k) ? f13216l : objO;
        }

        @Override // p4.p, n3.b2
        public final b2.d q(int i10, b2.d dVar, long j10) {
            this.f13144i.q(i10, dVar, j10);
            if (m5.g0.a(dVar.f11308h, this.f13217j)) {
                dVar.f11308h = b2.d.f11306y;
            }
            return dVar;
        }

        public final a u(b2 b2Var) {
            return new a(b2Var, this.f13217j, this.f13218k);
        }
    }

    /* JADX INFO: compiled from: MaskingMediaSource.java */
    public static final class b extends b2 {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final y0 f13219i;

        public b(y0 y0Var) {
            this.f13219i = y0Var;
        }

        @Override // n3.b2
        public final int d(Object obj) {
            return obj == a.f13216l ? 0 : -1;
        }

        @Override // n3.b2
        public final b2.b i(int i10, b2.b bVar, boolean z10) {
            bVar.j(z10 ? 0 : null, z10 ? a.f13216l : null, 0, -9223372036854775807L, 0L, q4.a.f13606n, true);
            return bVar;
        }

        @Override // n3.b2
        public final int k() {
            return 1;
        }

        @Override // n3.b2
        public final Object o(int i10) {
            return a.f13216l;
        }

        @Override // n3.b2
        public final b2.d q(int i10, b2.d dVar, long j10) {
            dVar.f(b2.d.f11306y, this.f13219i, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            dVar.f11319s = true;
            return dVar;
        }

        @Override // n3.b2
        public final int r() {
            return 1;
        }
    }

    public t(x xVar, boolean z10) {
        boolean z11;
        this.f13207r = xVar;
        if (z10) {
            xVar.e();
            z11 = true;
        } else {
            z11 = false;
        }
        this.f13208s = z11;
        this.f13209t = new b2.d();
        this.f13210u = new b2.b();
        xVar.i();
        this.f13211v = new a(new b(xVar.a()), b2.d.f11306y, a.f13216l);
    }

    @Override // p4.x
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final s q(x.b bVar, l5.b bVar2, long j10) {
        s sVar = new s(bVar, bVar2, j10);
        sVar.k(this.f13207r);
        if (this.f13214y) {
            Object obj = bVar.f13238a;
            if (this.f13211v.f13218k != null && obj.equals(a.f13216l)) {
                obj = this.f13211v.f13218k;
            }
            sVar.b(bVar.b(obj));
        } else {
            this.f13212w = sVar;
            if (!this.f13213x) {
                this.f13213x = true;
                A(null, this.f13207r);
            }
        }
        return sVar;
    }

    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    public final void C(long j10) {
        s sVar = this.f13212w;
        int iD = this.f13211v.d(sVar.f13195h.f13238a);
        if (iD == -1) {
            return;
        }
        a aVar = this.f13211v;
        b2.b bVar = this.f13210u;
        aVar.i(iD, bVar, false);
        long j11 = bVar.f11298k;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        sVar.f13203p = j10;
    }

    @Override // p4.x
    public final y0 a() {
        return this.f13207r.a();
    }

    @Override // p4.g, p4.x
    public final void b() {
    }

    @Override // p4.x
    public final void d(v vVar) {
        ((s) vVar).h();
        if (vVar == this.f13212w) {
            this.f13212w = null;
        }
    }

    @Override // p4.g, p4.a
    public final void v(l5.j0 j0Var) {
        super.v(j0Var);
        if (this.f13208s) {
            return;
        }
        this.f13213x = true;
        A(null, this.f13207r);
    }

    @Override // p4.g, p4.a
    public final void x() {
        this.f13214y = false;
        this.f13213x = false;
        super.x();
    }

    @Override // p4.g
    public final x.b y(Void r10, x.b bVar) {
        Object obj = bVar.f13238a;
        Object obj2 = this.f13211v.f13218k;
        if (obj2 != null && obj2.equals(obj)) {
            obj = a.f13216l;
        }
        return bVar.b(obj);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006b  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // p4.g
    public final void z(Void r10, x xVar, b2 b2Var) {
        long j10;
        x.b bVarB;
        if (this.f13214y) {
            this.f13211v = this.f13211v.u(b2Var);
            s sVar = this.f13212w;
            if (sVar != null) {
                C(sVar.f13203p);
            }
        } else {
            if (!b2Var.s()) {
                b2Var.p(0, this.f13209t);
                b2.d dVar = this.f13209t;
                long j11 = dVar.f11320t;
                Object obj = dVar.f11308h;
                s sVar2 = this.f13212w;
                if (sVar2 != null) {
                    long j12 = sVar2.f13196i;
                    this.f13211v.j(sVar2.f13195h.f13238a, this.f13210u);
                    long j13 = this.f13210u.f11299l + j12;
                    if (j13 != this.f13211v.p(0, this.f13209t).f11320t) {
                        j10 = j13;
                    } else {
                        j10 = j11;
                    }
                } else {
                    j10 = j11;
                }
                Pair<Object, Long> pairL = b2Var.l(this.f13209t, this.f13210u, 0, j10);
                Object obj2 = pairL.first;
                long jLongValue = ((Long) pairL.second).longValue();
                this.f13211v = this.f13215z ? this.f13211v.u(b2Var) : new a(b2Var, obj, obj2);
                s sVar3 = this.f13212w;
                if (sVar3 != null) {
                    C(jLongValue);
                    x.b bVar = sVar3.f13195h;
                    Object obj3 = bVar.f13238a;
                    if (this.f13211v.f13218k != null && obj3.equals(a.f13216l)) {
                        obj3 = this.f13211v.f13218k;
                    }
                    bVarB = bVar.b(obj3);
                }
                this.f13215z = true;
                this.f13214y = true;
                w(this.f13211v);
                if (bVarB != null) {
                    s sVar4 = this.f13212w;
                    Objects.requireNonNull(sVar4);
                    sVar4.b(bVarB);
                }
            }
            this.f13211v = this.f13215z ? this.f13211v.u(b2Var) : new a(b2Var, b2.d.f11306y, a.f13216l);
        }
        bVarB = null;
        this.f13215z = true;
        this.f13214y = true;
        w(this.f13211v);
        if (bVarB != null) {
            s sVar5 = this.f13212w;
            Objects.requireNonNull(sVar5);
            sVar5.b(bVarB);
        }
    }
}
