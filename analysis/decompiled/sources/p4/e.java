package p4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import n3.b2;
import n3.y0;

/* JADX INFO: compiled from: ClippingMediaSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends g<Void> {
    public b A;
    public long B;
    public long C;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final x f12955r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final long f12956s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f12957t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f12958u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f12959v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f12960w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ArrayList<d> f12961x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final b2.d f12962y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public a f12963z;

    /* JADX INFO: compiled from: ClippingMediaSource.java */
    public static final class a extends p {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f12964j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final long f12965k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final long f12966l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final boolean f12967m;

        public a(b2 b2Var, long j10, long j11) throws b {
            super(b2Var);
            boolean z10 = false;
            if (b2Var.k() != 1) {
                throw new b(0);
            }
            b2.d dVarP = b2Var.p(0, new b2.d());
            long jMax = Math.max(0L, j10);
            if (!dVarP.f11319s && jMax != 0 && !dVarP.f11315o) {
                throw new b(1);
            }
            long jMax2 = j11 == Long.MIN_VALUE ? dVarP.f11321u : Math.max(0L, j11);
            long j12 = dVarP.f11321u;
            if (j12 != -9223372036854775807L) {
                jMax2 = jMax2 > j12 ? j12 : jMax2;
                if (jMax > jMax2) {
                    throw new b(2);
                }
            }
            this.f12964j = jMax;
            this.f12965k = jMax2;
            this.f12966l = jMax2 == -9223372036854775807L ? -9223372036854775807L : jMax2 - jMax;
            if (dVarP.f11316p && (jMax2 == -9223372036854775807L || (j12 != -9223372036854775807L && jMax2 == j12))) {
                z10 = true;
            }
            this.f12967m = z10;
        }

        @Override // p4.p, n3.b2
        public final b2.b i(int i10, b2.b bVar, boolean z10) {
            this.f13144i.i(0, bVar, z10);
            long j10 = bVar.f11299l - this.f12964j;
            long j11 = this.f12966l;
            bVar.k(bVar.f11295h, bVar.f11296i, j11 == -9223372036854775807L ? -9223372036854775807L : j11 - j10, j10);
            return bVar;
        }

        @Override // p4.p, n3.b2
        public final b2.d q(int i10, b2.d dVar, long j10) {
            this.f13144i.q(0, dVar, 0L);
            long j11 = dVar.f11324x;
            long j12 = this.f12964j;
            dVar.f11324x = j11 + j12;
            dVar.f11321u = this.f12966l;
            dVar.f11316p = this.f12967m;
            long j13 = dVar.f11320t;
            if (j13 != -9223372036854775807L) {
                long jMax = Math.max(j13, j12);
                dVar.f11320t = jMax;
                long j14 = this.f12965k;
                if (j14 != -9223372036854775807L) {
                    jMax = Math.min(jMax, j14);
                }
                dVar.f11320t = jMax - this.f12964j;
            }
            long jX = m5.g0.X(this.f12964j);
            long j15 = dVar.f11312l;
            if (j15 != -9223372036854775807L) {
                dVar.f11312l = j15 + jX;
            }
            long j16 = dVar.f11313m;
            if (j16 != -9223372036854775807L) {
                dVar.f11313m = j16 + jX;
            }
            return dVar;
        }
    }

    /* JADX INFO: compiled from: ClippingMediaSource.java */
    public static final class b extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        public b(int i10) {
            StringBuilder sbC = a0.b.c("Illegal clipping: ");
            sbC.append(i10 != 0 ? i10 != 1 ? i10 != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count");
            super(sbC.toString());
        }
    }

    public e(x xVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
        m5.a.a(j10 >= 0);
        Objects.requireNonNull(xVar);
        this.f12955r = xVar;
        this.f12956s = j10;
        this.f12957t = j11;
        this.f12958u = z10;
        this.f12959v = z11;
        this.f12960w = z12;
        this.f12961x = new ArrayList<>();
        this.f12962y = new b2.d();
    }

    public final void B(b2 b2Var) {
        long j10;
        long j11;
        long j12;
        b2Var.p(0, this.f12962y);
        long j13 = this.f12962y.f11324x;
        if (this.f12963z == null || this.f12961x.isEmpty() || this.f12959v) {
            long j14 = this.f12956s;
            long j15 = this.f12957t;
            if (this.f12960w) {
                long j16 = this.f12962y.f11320t;
                j14 += j16;
                j10 = j16 + j15;
            } else {
                j10 = j15;
            }
            this.B = j13 + j14;
            this.C = j15 != Long.MIN_VALUE ? j13 + j10 : Long.MIN_VALUE;
            int size = this.f12961x.size();
            for (int i10 = 0; i10 < size; i10++) {
                d dVar = this.f12961x.get(i10);
                long j17 = this.B;
                long j18 = this.C;
                dVar.f12943l = j17;
                dVar.f12944m = j18;
            }
            j11 = j14;
            j12 = j10;
        } else {
            long j19 = this.B - j13;
            j12 = this.f12957t != Long.MIN_VALUE ? this.C - j13 : Long.MIN_VALUE;
            j11 = j19;
        }
        try {
            a aVar = new a(b2Var, j11, j12);
            this.f12963z = aVar;
            w(aVar);
        } catch (b e10) {
            this.A = e10;
            for (int i11 = 0; i11 < this.f12961x.size(); i11++) {
                this.f12961x.get(i11).f12945n = this.A;
            }
        }
    }

    @Override // p4.x
    public final y0 a() {
        return this.f12955r.a();
    }

    @Override // p4.g, p4.x
    public final void b() throws IOException {
        b bVar = this.A;
        if (bVar != null) {
            throw bVar;
        }
        super.b();
    }

    @Override // p4.x
    public final void d(v vVar) {
        m5.a.e(this.f12961x.remove(vVar));
        this.f12955r.d(((d) vVar).f12939h);
        if (!this.f12961x.isEmpty() || this.f12959v) {
            return;
        }
        a aVar = this.f12963z;
        Objects.requireNonNull(aVar);
        B(aVar.f13144i);
    }

    @Override // p4.x
    public final v q(x.b bVar, l5.b bVar2, long j10) {
        d dVar = new d(this.f12955r.q(bVar, bVar2, j10), this.f12958u, this.B, this.C);
        this.f12961x.add(dVar);
        return dVar;
    }

    @Override // p4.g, p4.a
    public final void v(l5.j0 j0Var) {
        super.v(j0Var);
        A(null, this.f12955r);
    }

    @Override // p4.g, p4.a
    public final void x() {
        super.x();
        this.A = null;
        this.f12963z = null;
    }

    @Override // p4.g
    public final void z(Void r10, x xVar, b2 b2Var) {
        if (this.A != null) {
            return;
        }
        B(b2Var);
    }
}
