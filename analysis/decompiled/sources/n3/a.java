package n3;

import android.util.Pair;
import java.util.Objects;

/* JADX INFO: compiled from: AbstractConcatenatedTimeline.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends b2 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f11218l = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11219i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p4.o0 f11220j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f11221k = false;

    public a(p4.o0 o0Var) {
        this.f11220j = o0Var;
        this.f11219i = o0Var.a();
    }

    @Override // n3.b2
    public final int c(boolean z10) {
        if (this.f11219i == 0) {
            return -1;
        }
        if (this.f11221k) {
            z10 = false;
        }
        int iC = z10 ? this.f11220j.c() : 0;
        do {
            q1 q1Var = (q1) this;
            if (!q1Var.f11644q[iC].s()) {
                return q1Var.f11644q[iC].c(z10) + q1Var.f11643p[iC];
            }
            iC = v(iC, z10);
        } while (iC != -1);
        return -1;
    }

    @Override // n3.b2
    public final int d(Object obj) {
        int iD;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        q1 q1Var = (q1) this;
        Integer num = q1Var.f11646s.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        if (iIntValue == -1 || (iD = q1Var.f11644q[iIntValue].d(obj3)) == -1) {
            return -1;
        }
        return q1Var.f11642o[iIntValue] + iD;
    }

    @Override // n3.b2
    public final int e(boolean z10) {
        int i10 = this.f11219i;
        if (i10 == 0) {
            return -1;
        }
        if (this.f11221k) {
            z10 = false;
        }
        int iG = z10 ? this.f11220j.g() : i10 - 1;
        do {
            q1 q1Var = (q1) this;
            if (!q1Var.f11644q[iG].s()) {
                return q1Var.f11644q[iG].e(z10) + q1Var.f11643p[iG];
            }
            iG = w(iG, z10);
        } while (iG != -1);
        return -1;
    }

    @Override // n3.b2
    public final int g(int i10, int i11, boolean z10) {
        if (this.f11221k) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int iU = u(i10);
        q1 q1Var = (q1) this;
        int i12 = q1Var.f11643p[iU];
        int iG = q1Var.f11644q[iU].g(i10 - i12, i11 != 2 ? i11 : 0, z10);
        if (iG != -1) {
            return i12 + iG;
        }
        int iV = v(iU, z10);
        while (iV != -1 && q1Var.f11644q[iV].s()) {
            iV = v(iV, z10);
        }
        if (iV != -1) {
            return q1Var.f11644q[iV].c(z10) + q1Var.f11643p[iV];
        }
        if (i11 == 2) {
            return c(z10);
        }
        return -1;
    }

    @Override // n3.b2
    public final b2.b i(int i10, b2.b bVar, boolean z10) {
        q1 q1Var = (q1) this;
        int iE = m5.g0.e(q1Var.f11642o, i10 + 1, false, false);
        int i11 = q1Var.f11643p[iE];
        q1Var.f11644q[iE].i(i10 - q1Var.f11642o[iE], bVar, z10);
        bVar.f11297j += i11;
        if (z10) {
            Object obj = q1Var.f11645r[iE];
            Object obj2 = bVar.f11296i;
            Objects.requireNonNull(obj2);
            bVar.f11296i = Pair.create(obj, obj2);
        }
        return bVar;
    }

    @Override // n3.b2
    public final b2.b j(Object obj, b2.b bVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        q1 q1Var = (q1) this;
        Integer num = q1Var.f11646s.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        int i10 = q1Var.f11643p[iIntValue];
        q1Var.f11644q[iIntValue].j(obj3, bVar);
        bVar.f11297j += i10;
        bVar.f11296i = obj;
        return bVar;
    }

    @Override // n3.b2
    public final int n(int i10, int i11, boolean z10) {
        if (this.f11221k) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int iU = u(i10);
        q1 q1Var = (q1) this;
        int i12 = q1Var.f11643p[iU];
        int iN = q1Var.f11644q[iU].n(i10 - i12, i11 != 2 ? i11 : 0, z10);
        if (iN != -1) {
            return i12 + iN;
        }
        int iW = w(iU, z10);
        while (iW != -1 && q1Var.f11644q[iW].s()) {
            iW = w(iW, z10);
        }
        if (iW != -1) {
            return q1Var.f11644q[iW].e(z10) + q1Var.f11643p[iW];
        }
        if (i11 == 2) {
            return e(z10);
        }
        return -1;
    }

    @Override // n3.b2
    public final Object o(int i10) {
        q1 q1Var = (q1) this;
        int iE = m5.g0.e(q1Var.f11642o, i10 + 1, false, false);
        return Pair.create(q1Var.f11645r[iE], q1Var.f11644q[iE].o(i10 - q1Var.f11642o[iE]));
    }

    @Override // n3.b2
    public final b2.d q(int i10, b2.d dVar, long j10) {
        int iU = u(i10);
        q1 q1Var = (q1) this;
        int i11 = q1Var.f11643p[iU];
        int i12 = q1Var.f11642o[iU];
        q1Var.f11644q[iU].q(i10 - i11, dVar, j10);
        Object objCreate = q1Var.f11645r[iU];
        if (!b2.d.f11306y.equals(dVar.f11308h)) {
            objCreate = Pair.create(objCreate, dVar.f11308h);
        }
        dVar.f11308h = objCreate;
        dVar.f11322v += i12;
        dVar.f11323w += i12;
        return dVar;
    }

    public abstract int u(int i10);

    public final int v(int i10, boolean z10) {
        if (z10) {
            return this.f11220j.b(i10);
        }
        if (i10 < this.f11219i - 1) {
            return i10 + 1;
        }
        return -1;
    }

    public final int w(int i10, boolean z10) {
        if (z10) {
            return this.f11220j.f(i10);
        }
        if (i10 > 0) {
            return i10 - 1;
        }
        return -1;
    }
}
