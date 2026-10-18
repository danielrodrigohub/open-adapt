package p4;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import n3.b2;
import n3.y0;

/* JADX INFO: compiled from: MergingMediaSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends g<Integer> {
    public static final y0 A;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final x[] f13002r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final b2[] f13003s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ArrayList<x> f13004t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final h f13005u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Map<Object, Long> f13006v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final u6.i0<Object, d> f13007w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13008x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long[][] f13009y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public a f13010z;

    /* JADX INFO: compiled from: MergingMediaSource.java */
    public static final class a extends IOException {
    }

    static {
        y0.b bVar = new y0.b();
        bVar.f11753a = "MergingMediaSource";
        A = bVar.a();
    }

    public g0(x... xVarArr) {
        h hVar = new h();
        this.f13002r = xVarArr;
        this.f13005u = hVar;
        this.f13004t = new ArrayList<>(Arrays.asList(xVarArr));
        this.f13008x = -1;
        this.f13003s = new b2[xVarArr.length];
        this.f13009y = new long[0][];
        this.f13006v = new HashMap();
        u6.h.b(8, "expectedKeys");
        u6.h.b(2, "expectedValuesPerKey");
        this.f13007w = new u6.k0(new u6.m(8), new u6.j0(2));
    }

    @Override // p4.x
    public final y0 a() {
        x[] xVarArr = this.f13002r;
        return xVarArr.length > 0 ? xVarArr[0].a() : A;
    }

    @Override // p4.g, p4.x
    public final void b() throws IOException {
        a aVar = this.f13010z;
        if (aVar != null) {
            throw aVar;
        }
        super.b();
    }

    @Override // p4.x
    public final void d(v vVar) {
        f0 f0Var = (f0) vVar;
        int i10 = 0;
        while (true) {
            x[] xVarArr = this.f13002r;
            if (i10 >= xVarArr.length) {
                return;
            }
            x xVar = xVarArr[i10];
            v[] vVarArr = f0Var.f12976h;
            xVar.d(vVarArr[i10] instanceof f0.b ? ((f0.b) vVarArr[i10]).f12987h : vVarArr[i10]);
            i10++;
        }
    }

    @Override // p4.x
    public final v q(x.b bVar, l5.b bVar2, long j10) {
        int length = this.f13002r.length;
        v[] vVarArr = new v[length];
        int iD = this.f13003s[0].d(bVar.f13238a);
        for (int i10 = 0; i10 < length; i10++) {
            vVarArr[i10] = this.f13002r[i10].q(bVar.b(this.f13003s[i10].o(iD)), bVar2, j10 - this.f13009y[iD][i10]);
        }
        return new f0(this.f13005u, this.f13009y[iD], vVarArr);
    }

    @Override // p4.g, p4.a
    public final void v(l5.j0 j0Var) {
        super.v(j0Var);
        for (int i10 = 0; i10 < this.f13002r.length; i10++) {
            A(Integer.valueOf(i10), this.f13002r[i10]);
        }
    }

    @Override // p4.g, p4.a
    public final void x() {
        super.x();
        Arrays.fill(this.f13003s, (Object) null);
        this.f13008x = -1;
        this.f13010z = null;
        this.f13004t.clear();
        Collections.addAll(this.f13004t, this.f13002r);
    }

    @Override // p4.g
    public final x.b y(Integer num, x.b bVar) {
        if (num.intValue() == 0) {
            return bVar;
        }
        return null;
    }

    @Override // p4.g
    public final void z(Integer num, x xVar, b2 b2Var) {
        Integer num2 = num;
        if (this.f13010z != null) {
            return;
        }
        if (this.f13008x == -1) {
            this.f13008x = b2Var.k();
        } else if (b2Var.k() != this.f13008x) {
            this.f13010z = new a();
            return;
        }
        if (this.f13009y.length == 0) {
            this.f13009y = (long[][]) Array.newInstance((Class<?>) long.class, this.f13008x, this.f13003s.length);
        }
        this.f13004t.remove(xVar);
        this.f13003s[num2.intValue()] = b2Var;
        if (this.f13004t.isEmpty()) {
            w(this.f13003s[0]);
        }
    }
}
