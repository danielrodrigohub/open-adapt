package p4;

import android.net.Uri;
import java.util.Objects;
import n3.b2;
import n3.y0;

/* JADX INFO: compiled from: SinglePeriodTimeline.java */
/* JADX INFO: loaded from: classes.dex */
public final class p0 extends b2 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Object f13145u = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f13146i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f13147j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f13148k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f13149l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f13150m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f13151n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f13152o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f13153p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f13154q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Object f13155r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final y0 f13156s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final y0.f f13157t;

    static {
        y0.b bVar = new y0.b();
        bVar.f11753a = "SinglePeriodTimeline";
        bVar.f11754b = Uri.EMPTY;
        bVar.a();
    }

    public p0(long j10, boolean z10, boolean z11, y0 y0Var) {
        this(j10, j10, 0L, 0L, z10, false, z11, null, y0Var);
    }

    @Override // n3.b2
    public final int d(Object obj) {
        return f13145u.equals(obj) ? 0 : -1;
    }

    @Override // n3.b2
    public final b2.b i(int i10, b2.b bVar, boolean z10) {
        m5.a.c(i10, 1);
        bVar.k(null, z10 ? f13145u : null, this.f13148k, -this.f13150m);
        return bVar;
    }

    @Override // n3.b2
    public final int k() {
        return 1;
    }

    @Override // n3.b2
    public final Object o(int i10) {
        m5.a.c(i10, 1);
        return f13145u;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002d A[PHI: r1
      0x002d: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v5 long) binds: [B:3:0x0011, B:5:0x0015, B:7:0x001b, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // n3.b2
    public final b2.d q(int i10, b2.d dVar, long j10) {
        long j11;
        m5.a.c(i10, 1);
        long j12 = this.f13151n;
        boolean z10 = this.f13153p;
        if (!z10 || this.f13154q || j10 == 0) {
            j11 = j12;
        } else {
            long j13 = this.f13149l;
            if (j13 != -9223372036854775807L) {
                j12 += j10;
                if (j12 <= j13) {
                    j11 = j12;
                }
            }
            j11 = -9223372036854775807L;
        }
        dVar.f(b2.d.f11306y, this.f13156s, this.f13155r, this.f13146i, this.f13147j, -9223372036854775807L, this.f13152o, z10, this.f13157t, j11, this.f13149l, 0, 0, this.f13150m);
        return dVar;
    }

    @Override // n3.b2
    public final int r() {
        return 1;
    }

    public p0(long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, Object obj, y0 y0Var) {
        this(-9223372036854775807L, -9223372036854775807L, j10, j11, j12, j13, z10, z11, false, obj, y0Var, z12 ? y0Var.f11749j : null);
    }

    public p0(long j10, long j11, long j12, long j13, long j14, long j15, boolean z10, boolean z11, boolean z12, Object obj, y0 y0Var, y0.f fVar) {
        this.f13146i = j10;
        this.f13147j = j11;
        this.f13148k = j12;
        this.f13149l = j13;
        this.f13150m = j14;
        this.f13151n = j15;
        this.f13152o = z10;
        this.f13153p = z11;
        this.f13154q = z12;
        this.f13155r = obj;
        Objects.requireNonNull(y0Var);
        this.f13156s = y0Var;
        this.f13157t = fVar;
    }
}
