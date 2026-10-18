package r4;

import android.net.Uri;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import l5.c0;
import l5.d0;
import l5.i0;
import m5.g0;
import m5.p;
import n3.s0;
import p4.e0;
import p4.k0;
import p4.l0;
import p4.m0;
import p4.n0;
import r4.i;
import y0.r;

/* JADX INFO: compiled from: ChunkSampleStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class h<T extends i> implements m0, n0, d0.a<e>, d0.e {
    public long A;
    public int B;
    public r4.a C;
    public boolean D;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f14569h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f14570i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final s0[] f14571j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean[] f14572k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final T f14573l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final n0.a<h<T>> f14574m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final e0.a f14575n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final c0 f14576o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final d0 f14577p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final g f14578q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final ArrayList<r4.a> f14579r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final List<r4.a> f14580s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final l0 f14581t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final l0[] f14582u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final c f14583v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public e f14584w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public s0 f14585x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public b<T> f14586y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f14587z;

    /* JADX INFO: compiled from: ChunkSampleStream.java */
    public final class a implements m0 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final h<T> f14588h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final l0 f14589i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f14590j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f14591k;

        public a(h<T> hVar, l0 l0Var, int i10) {
            this.f14588h = hVar;
            this.f14589i = l0Var;
            this.f14590j = i10;
        }

        public final void a() {
            if (this.f14591k) {
                return;
            }
            h hVar = h.this;
            e0.a aVar = hVar.f14575n;
            int[] iArr = hVar.f14570i;
            int i10 = this.f14590j;
            aVar.b(iArr[i10], hVar.f14571j[i10], 0, null, hVar.A);
            this.f14591k = true;
        }

        @Override // p4.m0
        public final void b() {
        }

        public final void c() {
            m5.a.e(h.this.f14572k[this.f14590j]);
            h.this.f14572k[this.f14590j] = false;
        }

        @Override // p4.m0
        public final boolean isReady() {
            return !h.this.x() && this.f14589i.u(h.this.D);
        }

        @Override // p4.m0
        public final int j(r rVar, q3.g gVar, int i10) {
            if (h.this.x()) {
                return -3;
            }
            r4.a aVar = h.this.C;
            if (aVar != null) {
                int iE = aVar.e(this.f14590j + 1);
                l0 l0Var = this.f14589i;
                if (iE <= l0Var.f13108q + l0Var.f13110s) {
                    return -3;
                }
            }
            a();
            return this.f14589i.A(rVar, gVar, i10, h.this.D);
        }

        @Override // p4.m0
        public final int p(long j10) {
            if (h.this.x()) {
                return 0;
            }
            int iR = this.f14589i.r(j10, h.this.D);
            r4.a aVar = h.this.C;
            if (aVar != null) {
                int iE = aVar.e(this.f14590j + 1);
                l0 l0Var = this.f14589i;
                iR = Math.min(iR, iE - (l0Var.f13108q + l0Var.f13110s));
            }
            this.f14589i.F(iR);
            if (iR > 0) {
                a();
            }
            return iR;
        }
    }

    /* JADX INFO: compiled from: ChunkSampleStream.java */
    public interface b<T extends i> {
    }

    public h(int i10, int[] iArr, s0[] s0VarArr, T t10, n0.a<h<T>> aVar, l5.b bVar, long j10, r3.l lVar, r3.k.a aVar2, c0 c0Var, e0.a aVar3) {
        this.f14569h = i10;
        int i11 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f14570i = iArr;
        this.f14571j = s0VarArr == null ? new s0[0] : s0VarArr;
        this.f14573l = t10;
        this.f14574m = aVar;
        this.f14575n = aVar3;
        this.f14576o = c0Var;
        this.f14577p = new d0("ChunkSampleStream");
        this.f14578q = new g();
        ArrayList<r4.a> arrayList = new ArrayList<>();
        this.f14579r = arrayList;
        this.f14580s = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f14582u = new l0[length];
        this.f14572k = new boolean[length];
        int i12 = length + 1;
        int[] iArr2 = new int[i12];
        l0[] l0VarArr = new l0[i12];
        Objects.requireNonNull(lVar);
        Objects.requireNonNull(aVar2);
        l0 l0Var = new l0(bVar, lVar, aVar2);
        this.f14581t = l0Var;
        iArr2[0] = i10;
        l0VarArr[0] = l0Var;
        while (i11 < length) {
            l0 l0VarG = l0.g(bVar);
            this.f14582u[i11] = l0VarG;
            int i13 = i11 + 1;
            l0VarArr[i13] = l0VarG;
            iArr2[i13] = this.f14570i[i11];
            i11 = i13;
        }
        this.f14583v = new c(iArr2, l0VarArr);
        this.f14587z = j10;
        this.A = j10;
    }

    public final void A(b<T> bVar) {
        this.f14586y = bVar;
        this.f14581t.z();
        for (l0 l0Var : this.f14582u) {
            l0Var.z();
        }
        this.f14577p.f(this);
    }

    public final void B() {
        this.f14581t.C(false);
        for (l0 l0Var : this.f14582u) {
            l0Var.C(false);
        }
    }

    public final void C(long j10) {
        r4.a aVar;
        boolean zD;
        this.A = j10;
        if (x()) {
            this.f14587z = j10;
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 < this.f14579r.size()) {
                aVar = this.f14579r.get(i11);
                long j11 = aVar.f14564g;
                if (j11 == j10 && aVar.f14531k == -9223372036854775807L) {
                    break;
                } else if (j11 <= j10) {
                    i11++;
                }
            }
            aVar = null;
            break;
        }
        if (aVar != null) {
            l0 l0Var = this.f14581t;
            int iE = aVar.e(0);
            synchronized (l0Var) {
                synchronized (l0Var) {
                    l0Var.f13110s = 0;
                    k0 k0Var = l0Var.f13092a;
                    k0Var.f13083e = k0Var.f13082d;
                }
            }
            int i12 = l0Var.f13108q;
            if (iE < i12 || iE > l0Var.f13107p + i12) {
                zD = false;
            } else {
                l0Var.f13111t = Long.MIN_VALUE;
                l0Var.f13110s = iE - i12;
                zD = true;
            }
        } else {
            zD = this.f14581t.D(j10, j10 < c());
        }
        if (zD) {
            l0 l0Var2 = this.f14581t;
            this.B = z(l0Var2.f13108q + l0Var2.f13110s, 0);
            l0[] l0VarArr = this.f14582u;
            int length = l0VarArr.length;
            while (i10 < length) {
                l0VarArr[i10].D(j10, true);
                i10++;
            }
            return;
        }
        this.f14587z = j10;
        this.D = false;
        this.f14579r.clear();
        this.B = 0;
        if (!this.f14577p.d()) {
            this.f14577p.f9994c = null;
            B();
            return;
        }
        this.f14581t.j();
        l0[] l0VarArr2 = this.f14582u;
        int length2 = l0VarArr2.length;
        while (i10 < length2) {
            l0VarArr2[i10].j();
            i10++;
        }
        this.f14577p.a();
    }

    @Override // p4.n0
    public final boolean a() {
        return this.f14577p.d();
    }

    @Override // p4.m0
    public final void b() throws IOException {
        this.f14577p.b();
        this.f14581t.w();
        if (this.f14577p.d()) {
            return;
        }
        this.f14573l.b();
    }

    @Override // p4.n0
    public final long c() {
        if (x()) {
            return this.f14587z;
        }
        if (this.D) {
            return Long.MIN_VALUE;
        }
        return v().f14565h;
    }

    @Override // p4.n0
    public final long e() {
        if (this.D) {
            return Long.MIN_VALUE;
        }
        if (x()) {
            return this.f14587z;
        }
        long jMax = this.A;
        r4.a aVarV = v();
        if (!aVarV.d()) {
            if (this.f14579r.size() > 1) {
                ArrayList<r4.a> arrayList = this.f14579r;
                aVarV = arrayList.get(arrayList.size() - 2);
            } else {
                aVarV = null;
            }
        }
        if (aVarV != null) {
            jMax = Math.max(jMax, aVarV.f14565h);
        }
        return Math.max(jMax, this.f14581t.o());
    }

    @Override // p4.n0
    public final boolean f(long j10) {
        List<r4.a> listEmptyList;
        long j11;
        int i10 = 0;
        if (this.D || this.f14577p.d() || this.f14577p.c()) {
            return false;
        }
        boolean zX = x();
        if (zX) {
            listEmptyList = Collections.emptyList();
            j11 = this.f14587z;
        } else {
            listEmptyList = this.f14580s;
            j11 = v().f14565h;
        }
        this.f14573l.i(j10, j11, listEmptyList, this.f14578q);
        g gVar = this.f14578q;
        boolean z10 = gVar.f14568b;
        e eVar = gVar.f14567a;
        gVar.f14567a = null;
        gVar.f14568b = false;
        if (z10) {
            this.f14587z = -9223372036854775807L;
            this.D = true;
            return true;
        }
        if (eVar == null) {
            return false;
        }
        this.f14584w = eVar;
        if (eVar instanceof r4.a) {
            r4.a aVar = (r4.a) eVar;
            if (zX) {
                long j12 = aVar.f14564g;
                long j13 = this.f14587z;
                if (j12 != j13) {
                    this.f14581t.f13111t = j13;
                    for (l0 l0Var : this.f14582u) {
                        l0Var.f13111t = this.f14587z;
                    }
                }
                this.f14587z = -9223372036854775807L;
            }
            c cVar = this.f14583v;
            aVar.f14533m = cVar;
            int[] iArr = new int[cVar.f14539b.length];
            while (true) {
                l0[] l0VarArr = cVar.f14539b;
                if (i10 >= l0VarArr.length) {
                    break;
                }
                l0 l0Var2 = l0VarArr[i10];
                iArr[i10] = l0Var2.f13108q + l0Var2.f13107p;
                i10++;
            }
            aVar.f14534n = iArr;
            this.f14579r.add(aVar);
        } else if (eVar instanceof l) {
            ((l) eVar).f14602k = this.f14583v;
        }
        this.f14575n.n(new p4.r(eVar.f14558a, eVar.f14559b, this.f14577p.g(eVar, this, this.f14576o.c(eVar.f14560c))), eVar.f14560c, this.f14569h, eVar.f14561d, eVar.f14562e, eVar.f14563f, eVar.f14564g, eVar.f14565h);
        return true;
    }

    @Override // p4.n0
    public final void g(long j10) {
        if (this.f14577p.c() || x()) {
            return;
        }
        if (this.f14577p.d()) {
            e eVar = this.f14584w;
            Objects.requireNonNull(eVar);
            boolean z10 = eVar instanceof r4.a;
            if (!(z10 && w(this.f14579r.size() - 1)) && this.f14573l.g(j10, eVar, this.f14580s)) {
                this.f14577p.a();
                if (z10) {
                    this.C = (r4.a) eVar;
                    return;
                }
                return;
            }
            return;
        }
        int iH = this.f14573l.h(j10, this.f14580s);
        if (iH < this.f14579r.size()) {
            m5.a.e(!this.f14577p.d());
            int size = this.f14579r.size();
            while (true) {
                if (iH >= size) {
                    iH = -1;
                    break;
                } else if (!w(iH)) {
                    break;
                } else {
                    iH++;
                }
            }
            if (iH == -1) {
                return;
            }
            long j11 = v().f14565h;
            r4.a aVarR = r(iH);
            if (this.f14579r.isEmpty()) {
                this.f14587z = this.A;
            }
            this.D = false;
            this.f14575n.p(this.f14569h, aVarR.f14564g, j11);
        }
    }

    @Override // l5.d0.a
    public final void h(d0.d dVar, long j10, long j11) {
        e eVar = (e) dVar;
        this.f14584w = null;
        this.f14573l.k(eVar);
        long j12 = eVar.f14558a;
        i0 i0Var = eVar.f14566i;
        Uri uri = i0Var.f10053c;
        p4.r rVar = new p4.r(i0Var.f10054d);
        this.f14576o.d();
        this.f14575n.h(rVar, eVar.f14560c, this.f14569h, eVar.f14561d, eVar.f14562e, eVar.f14563f, eVar.f14564g, eVar.f14565h);
        this.f14574m.j(this);
    }

    @Override // l5.d0.e
    public final void i() {
        this.f14581t.B();
        for (l0 l0Var : this.f14582u) {
            l0Var.B();
        }
        this.f14573l.a();
        b<T> bVar = this.f14586y;
        if (bVar != null) {
            com.google.android.exoplayer2.source.dash.b bVar2 = (com.google.android.exoplayer2.source.dash.b) bVar;
            synchronized (bVar2) {
                com.google.android.exoplayer2.source.dash.d.c cVarRemove = bVar2.f4572u.remove(this);
                if (cVarRemove != null) {
                    cVarRemove.f4620a.B();
                }
            }
        }
    }

    @Override // p4.m0
    public final boolean isReady() {
        return !x() && this.f14581t.u(this.D);
    }

    @Override // p4.m0
    public final int j(r rVar, q3.g gVar, int i10) {
        if (x()) {
            return -3;
        }
        r4.a aVar = this.C;
        if (aVar != null) {
            int iE = aVar.e(0);
            l0 l0Var = this.f14581t;
            if (iE <= l0Var.f13108q + l0Var.f13110s) {
                return -3;
            }
        }
        y();
        return this.f14581t.A(rVar, gVar, i10, this.D);
    }

    @Override // l5.d0.a
    public final void k(d0.d dVar, long j10, long j11, boolean z10) {
        e eVar = (e) dVar;
        this.f14584w = null;
        this.C = null;
        long j12 = eVar.f14558a;
        i0 i0Var = eVar.f14566i;
        Uri uri = i0Var.f10053c;
        p4.r rVar = new p4.r(i0Var.f10054d);
        this.f14576o.d();
        this.f14575n.e(rVar, eVar.f14560c, this.f14569h, eVar.f14561d, eVar.f14562e, eVar.f14563f, eVar.f14564g, eVar.f14565h);
        if (z10) {
            return;
        }
        if (x()) {
            B();
        } else if (eVar instanceof r4.a) {
            r(this.f14579r.size() - 1);
            if (this.f14579r.isEmpty()) {
                this.f14587z = this.A;
            }
        }
        this.f14574m.j(this);
    }

    @Override // l5.d0.a
    public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
        d0.b bVar;
        e eVar = (e) dVar;
        long j12 = eVar.f14566i.f10052b;
        boolean z10 = eVar instanceof r4.a;
        int size = this.f14579r.size() - 1;
        boolean z11 = (j12 != 0 && z10 && w(size)) ? false : true;
        i0 i0Var = eVar.f14566i;
        Uri uri = i0Var.f10053c;
        p4.r rVar = new p4.r(i0Var.f10054d);
        g0.X(eVar.f14564g);
        g0.X(eVar.f14565h);
        c0.c cVar = new c0.c(iOException, i10);
        if (!this.f14573l.j(eVar, z11, cVar, this.f14576o)) {
            bVar = null;
        } else if (z11) {
            bVar = d0.f9990e;
            if (z10) {
                m5.a.e(r(size) == eVar);
                if (this.f14579r.isEmpty()) {
                    this.f14587z = this.A;
                }
            }
        } else {
            p.g("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
            bVar = null;
        }
        if (bVar == null) {
            long jB = this.f14576o.b(cVar);
            bVar = jB != -9223372036854775807L ? new d0.b(0, jB) : d0.f9991f;
        }
        boolean zA = true ^ bVar.a();
        d0.b bVar2 = bVar;
        this.f14575n.j(rVar, eVar.f14560c, this.f14569h, eVar.f14561d, eVar.f14562e, eVar.f14563f, eVar.f14564g, eVar.f14565h, iOException, zA);
        if (zA) {
            this.f14584w = null;
            this.f14576o.d();
            this.f14574m.j(this);
        }
        return bVar2;
    }

    @Override // p4.m0
    public final int p(long j10) {
        if (x()) {
            return 0;
        }
        int iR = this.f14581t.r(j10, this.D);
        r4.a aVar = this.C;
        if (aVar != null) {
            int iE = aVar.e(0);
            l0 l0Var = this.f14581t;
            iR = Math.min(iR, iE - (l0Var.f13108q + l0Var.f13110s));
        }
        this.f14581t.F(iR);
        y();
        return iR;
    }

    public final r4.a r(int i10) {
        r4.a aVar = this.f14579r.get(i10);
        ArrayList<r4.a> arrayList = this.f14579r;
        g0.Q(arrayList, i10, arrayList.size());
        this.B = Math.max(this.B, this.f14579r.size());
        int i11 = 0;
        this.f14581t.l(aVar.e(0));
        while (true) {
            l0[] l0VarArr = this.f14582u;
            if (i11 >= l0VarArr.length) {
                return aVar;
            }
            l0 l0Var = l0VarArr[i11];
            i11++;
            l0Var.l(aVar.e(i11));
        }
    }

    public final void s(long j10, boolean z10) {
        long j11;
        if (x()) {
            return;
        }
        l0 l0Var = this.f14581t;
        int i10 = l0Var.f13108q;
        l0Var.i(j10, z10, true);
        l0 l0Var2 = this.f14581t;
        int i11 = l0Var2.f13108q;
        if (i11 > i10) {
            synchronized (l0Var2) {
                j11 = l0Var2.f13107p == 0 ? Long.MIN_VALUE : l0Var2.f13105n[l0Var2.f13109r];
            }
            int i12 = 0;
            while (true) {
                l0[] l0VarArr = this.f14582u;
                if (i12 >= l0VarArr.length) {
                    break;
                }
                l0VarArr[i12].i(j11, z10, this.f14572k[i12]);
                i12++;
            }
        }
        int iMin = Math.min(z(i11, 0), this.B);
        if (iMin > 0) {
            g0.Q(this.f14579r, 0, iMin);
            this.B -= iMin;
        }
    }

    public final r4.a v() {
        ArrayList<r4.a> arrayList = this.f14579r;
        return arrayList.get(arrayList.size() - 1);
    }

    public final boolean w(int i10) {
        l0 l0Var;
        r4.a aVar = this.f14579r.get(i10);
        l0 l0Var2 = this.f14581t;
        if (l0Var2.f13108q + l0Var2.f13110s > aVar.e(0)) {
            return true;
        }
        int i11 = 0;
        do {
            l0[] l0VarArr = this.f14582u;
            if (i11 >= l0VarArr.length) {
                return false;
            }
            l0Var = l0VarArr[i11];
            i11++;
        } while (l0Var.f13108q + l0Var.f13110s <= aVar.e(i11));
        return true;
    }

    public final boolean x() {
        return this.f14587z != -9223372036854775807L;
    }

    public final void y() {
        l0 l0Var = this.f14581t;
        int iZ = z(l0Var.f13108q + l0Var.f13110s, this.B - 1);
        while (true) {
            int i10 = this.B;
            if (i10 > iZ) {
                return;
            }
            this.B = i10 + 1;
            r4.a aVar = this.f14579r.get(i10);
            s0 s0Var = aVar.f14561d;
            if (!s0Var.equals(this.f14585x)) {
                this.f14575n.b(this.f14569h, s0Var, aVar.f14562e, aVar.f14563f, aVar.f14564g);
            }
            this.f14585x = s0Var;
        }
    }

    public final int z(int i10, int i11) {
        do {
            i11++;
            if (i11 >= this.f14579r.size()) {
                return this.f14579r.size() - 1;
            }
        } while (this.f14579r.get(i11).e(0) <= i10);
        return i11 - 1;
    }
}
