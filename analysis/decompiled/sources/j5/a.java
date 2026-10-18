package j5;

import java.util.List;
import m5.a0;
import m5.g0;
import n3.s0;
import p4.t0;
import u6.v;

/* JADX INFO: compiled from: AdaptiveTrackSelection.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final l5.e f9273g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f9274h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f9275i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f9276j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9277k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9278l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f9279m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f9280n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final v<C0181a> f9281o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final m5.c f9282p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f9283q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f9284r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f9285s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f9286t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public r4.m f9287u;

    /* JADX INFO: renamed from: j5.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptiveTrackSelection.java */
    public static final class C0181a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f9288a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f9289b;

        public C0181a(long j10, long j11) {
            this.f9288a = j10;
            this.f9289b = j11;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0181a)) {
                return false;
            }
            C0181a c0181a = (C0181a) obj;
            return this.f9288a == c0181a.f9288a && this.f9289b == c0181a.f9289b;
        }

        public final int hashCode() {
            return (((int) this.f9288a) * 31) + ((int) this.f9289b);
        }
    }

    /* JADX INFO: compiled from: AdaptiveTrackSelection.java */
    public static class b implements l.b {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(t0 t0Var, int[] iArr, int i10, l5.e eVar, long j10, long j11, long j12, List list) {
        super(t0Var, iArr);
        a0 a0Var = m5.c.f10364a;
        if (j12 < j10) {
            m5.p.g("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j12 = j10;
        }
        this.f9273g = eVar;
        this.f9274h = j10 * 1000;
        this.f9275i = j11 * 1000;
        this.f9276j = j12 * 1000;
        this.f9277k = 1279;
        this.f9278l = 719;
        this.f9279m = 0.7f;
        this.f9280n = 0.75f;
        this.f9281o = v.s(list);
        this.f9282p = a0Var;
        this.f9283q = 1.0f;
        this.f9285s = 0;
        this.f9286t = -9223372036854775807L;
    }

    public static void u(List<v.a<C0181a>> list, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            v.a<C0181a> aVar = list.get(i10);
            if (aVar != null) {
                aVar.c(new C0181a(j10, jArr[i10]));
            }
        }
    }

    @Override // j5.c, j5.l
    public final void disable() {
        this.f9287u = null;
    }

    @Override // j5.c, j5.l
    public final void f() {
        this.f9286t = -9223372036854775807L;
        this.f9287u = null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0041  */
    /* JADX WARN: Code duplicated, block: B:19:0x004b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    /* JADX WARN: Code duplicated, block: B:22:0x0056  */
    /* JADX WARN: Code duplicated, block: B:24:0x0064  */
    /* JADX WARN: Code duplicated, block: B:27:0x0077  */
    /* JADX WARN: Code duplicated, block: B:29:0x0086  */
    /* JADX WARN: Code duplicated, block: B:30:0x0089  */
    /* JADX WARN: Code duplicated, block: B:32:0x008d  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0  */
    @Override // j5.l
    public final void g(long j10, long j11, long j12, List<? extends r4.m> list, r4.n[] nVarArr) {
        long jW;
        long jA;
        long jB;
        int i10;
        int i11;
        int iA;
        int iV;
        long jMin;
        int i12;
        int i13;
        long jD = this.f9282p.d();
        int i14 = this.f9284r;
        if (i14 >= nVarArr.length || !nVarArr[i14].next()) {
            int length = nVarArr.length;
            int i15 = 0;
            while (true) {
                if (i15 >= length) {
                    jW = w(list);
                    break;
                }
                r4.n nVar = nVarArr[i15];
                if (nVar.next()) {
                    jA = nVar.a();
                    jB = nVar.b();
                } else {
                    i15++;
                }
            }
            i10 = this.f9285s;
            if (i10 == 0) {
                this.f9285s = 1;
                this.f9284r = v(jD, jW);
                return;
            }
            i11 = this.f9284r;
            if (list.isEmpty()) {
                iA = -1;
            } else {
                iA = a(((r4.m) g0.n.b(list)).f14561d);
            }
            if (iA != -1) {
                i10 = ((r4.m) g0.n.b(list)).f14562e;
                i11 = iA;
            }
            iV = v(jD, jW);
            if (!c(i11, jD)) {
                s0[] s0VarArr = this.f9296d;
                s0 s0Var = s0VarArr[i11];
                s0 s0Var2 = s0VarArr[iV];
                if (j12 == -9223372036854775807L) {
                    jMin = this.f9274h;
                } else {
                    if (jW != -9223372036854775807L) {
                        j12 -= jW;
                    }
                    jMin = Math.min((long) (j12 * this.f9280n), this.f9274h);
                }
                i12 = s0Var2.f11683o;
                i13 = s0Var.f11683o;
                if ((i12 <= i13 && j11 < jMin) || (i12 < i13 && j11 >= this.f9275i)) {
                }
            }
            if (iV != i11) {
                i10 = 3;
            }
            this.f9285s = i10;
            this.f9284r = iV;
        }
        r4.n nVar2 = nVarArr[this.f9284r];
        jA = nVar2.a();
        jB = nVar2.b();
        jW = jA - jB;
        i10 = this.f9285s;
        if (i10 == 0) {
            this.f9285s = 1;
            this.f9284r = v(jD, jW);
            return;
        }
        i11 = this.f9284r;
        if (list.isEmpty()) {
            iA = -1;
        } else {
            iA = a(((r4.m) g0.n.b(list)).f14561d);
        }
        if (iA != -1) {
            i10 = ((r4.m) g0.n.b(list)).f14562e;
            i11 = iA;
        }
        iV = v(jD, jW);
        if (!c(i11, jD)) {
            s0[] s0VarArr2 = this.f9296d;
            s0 s0Var3 = s0VarArr2[i11];
            s0 s0Var4 = s0VarArr2[iV];
            if (j12 == -9223372036854775807L) {
                jMin = this.f9274h;
            } else {
                if (jW != -9223372036854775807L) {
                    j12 -= jW;
                }
                jMin = Math.min((long) (j12 * this.f9280n), this.f9274h);
            }
            i12 = s0Var4.f11683o;
            i13 = s0Var3.f11683o;
            iV = i12 <= i13 ? i11 : i11;
        }
        if (iV != i11) {
            i10 = 3;
        }
        this.f9285s = i10;
        this.f9284r = iV;
    }

    @Override // j5.c, j5.l
    public final int j(long j10, List<? extends r4.m> list) {
        int i10;
        int i11;
        long jD = this.f9282p.d();
        long j11 = this.f9286t;
        if (!(j11 == -9223372036854775807L || jD - j11 >= 1000 || !(list.isEmpty() || ((r4.m) g0.n.b(list)).equals(this.f9287u)))) {
            return list.size();
        }
        this.f9286t = jD;
        this.f9287u = list.isEmpty() ? null : (r4.m) g0.n.b(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jA = g0.A(list.get(size - 1).f14564g - j10, this.f9283q);
        long j12 = this.f9276j;
        if (jA < j12) {
            return size;
        }
        s0 s0Var = this.f9296d[v(jD, w(list))];
        for (int i12 = 0; i12 < size; i12++) {
            r4.m mVar = list.get(i12);
            s0 s0Var2 = mVar.f14561d;
            if (g0.A(mVar.f14564g - j10, this.f9283q) >= j12 && s0Var2.f11683o < s0Var.f11683o && (i10 = s0Var2.f11693y) != -1 && i10 <= this.f9278l && (i11 = s0Var2.f11692x) != -1 && i11 <= this.f9277k && i10 < s0Var.f11693y) {
                return i12;
            }
        }
        return size;
    }

    @Override // j5.l
    public final int n() {
        return this.f9285s;
    }

    @Override // j5.l
    public final int o() {
        return this.f9284r;
    }

    @Override // j5.c, j5.l
    public final void p(float f10) {
        this.f9283q = f10;
    }

    @Override // j5.l
    public final Object q() {
        return null;
    }

    public final int v(long j10, long j11) {
        long jE = (long) (this.f9273g.e() * this.f9279m);
        this.f9273g.c();
        long j12 = (long) (jE / this.f9283q);
        if (!this.f9281o.isEmpty()) {
            int i10 = 1;
            while (i10 < this.f9281o.size() - 1 && this.f9281o.get(i10).f9288a < j12) {
                i10++;
            }
            C0181a c0181a = this.f9281o.get(i10 - 1);
            C0181a c0181a2 = this.f9281o.get(i10);
            long j13 = c0181a.f9288a;
            float f10 = (j12 - j13) / (c0181a2.f9288a - j13);
            long j14 = c0181a.f9289b;
            j12 = ((long) (f10 * (c0181a2.f9289b - j14))) + j14;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f9294b; i12++) {
            if (j10 == Long.MIN_VALUE || !c(i12, j10)) {
                if (((long) this.f9296d[i12].f11683o) <= j12) {
                    return i12;
                }
                i11 = i12;
            }
        }
        return i11;
    }

    public final long w(List<? extends r4.m> list) {
        if (list.isEmpty()) {
            return -9223372036854775807L;
        }
        r4.m mVar = (r4.m) g0.n.b(list);
        long j10 = mVar.f14564g;
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = mVar.f14565h;
        if (j11 != -9223372036854775807L) {
            return j11 - j10;
        }
        return -9223372036854775807L;
    }
}
