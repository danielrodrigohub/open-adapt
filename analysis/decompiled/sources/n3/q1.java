package n3;

import java.util.Collection;
import java.util.HashMap;

/* JADX INFO: compiled from: PlaylistTimeline.java */
/* JADX INFO: loaded from: classes.dex */
public final class q1 extends a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f11640m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f11641n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int[] f11642o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int[] f11643p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final b2[] f11644q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Object[] f11645r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final HashMap<Object, Integer> f11646s;

    public q1(Collection<? extends f1> collection, p4.o0 o0Var) {
        super(o0Var);
        int size = collection.size();
        this.f11642o = new int[size];
        this.f11643p = new int[size];
        this.f11644q = new b2[size];
        this.f11645r = new Object[size];
        this.f11646s = new HashMap<>();
        int iR = 0;
        int iK = 0;
        int i10 = 0;
        for (f1 f1Var : collection) {
            this.f11644q[i10] = f1Var.b();
            this.f11643p[i10] = iR;
            this.f11642o[i10] = iK;
            iR += this.f11644q[i10].r();
            iK += this.f11644q[i10].k();
            this.f11645r[i10] = f1Var.a();
            this.f11646s.put(this.f11645r[i10], Integer.valueOf(i10));
            i10++;
        }
        this.f11640m = iR;
        this.f11641n = iK;
    }

    @Override // n3.b2
    public final int k() {
        return this.f11641n;
    }

    @Override // n3.b2
    public final int r() {
        return this.f11640m;
    }

    @Override // n3.a
    public final int u(int i10) {
        return m5.g0.e(this.f11643p, i10 + 1, false, false);
    }
}
