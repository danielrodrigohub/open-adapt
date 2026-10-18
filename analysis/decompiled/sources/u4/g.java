package u4;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import l5.j0;
import m5.e0;
import m5.g0;
import n3.s0;
import o3.v0;
import okhttp3.internal.http2.Http2;
import p4.t0;
import u6.p0;
import u6.v;

/* JADX INFO: compiled from: HlsChunkSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f15742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l5.j f15743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l5.j f15744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e2.e f15745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uri[] f15746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final s0[] f15747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final v4.j f15748g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final t0 f15749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<s0> f15750i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final v0 f15752k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f15753l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p4.b f15755n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Uri f15756o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f15757p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public j5.l f15758q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f15760s;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f f15751j = new f();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte[] f15754m = g0.f10389f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f15759r = -9223372036854775807L;

    /* JADX INFO: compiled from: HlsChunkSource.java */
    public static final class a extends r4.k {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public byte[] f15761l;

        public a(l5.j jVar, l5.m mVar, s0 s0Var, int i10, Object obj, byte[] bArr) {
            super(jVar, mVar, s0Var, i10, obj, bArr);
        }
    }

    /* JADX INFO: compiled from: HlsChunkSource.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public r4.e f15762a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f15763b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Uri f15764c = null;
    }

    /* JADX INFO: compiled from: HlsChunkSource.java */
    public static final class c extends r4.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List<v4.e.d> f15765e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f15766f;

        public c(long j10, List list) {
            super(0L, list.size() - 1);
            this.f15766f = j10;
            this.f15765e = list;
        }

        @Override // r4.n
        public final long a() {
            c();
            v4.e.d dVar = this.f15765e.get((int) this.f14537d);
            return this.f15766f + dVar.f16292l + dVar.f16290j;
        }

        @Override // r4.n
        public final long b() {
            c();
            return this.f15766f + this.f15765e.get((int) this.f14537d).f16292l;
        }
    }

    /* JADX INFO: compiled from: HlsChunkSource.java */
    public static final class d extends j5.c {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f15767g;

        public d(t0 t0Var, int[] iArr) {
            super(t0Var, iArr);
            this.f15767g = a(t0Var.f13224k[iArr[0]]);
        }

        @Override // j5.l
        public final void g(long j10, long j11, long j12, List<? extends r4.m> list, r4.n[] nVarArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (c(this.f15767g, jElapsedRealtime)) {
                int i10 = this.f9294b;
                do {
                    i10--;
                    if (i10 < 0) {
                        throw new IllegalStateException();
                    }
                } while (c(i10, jElapsedRealtime));
                this.f15767g = i10;
            }
        }

        @Override // j5.l
        public final int n() {
            return 0;
        }

        @Override // j5.l
        public final int o() {
            return this.f15767g;
        }

        @Override // j5.l
        public final Object q() {
            return null;
        }
    }

    /* JADX INFO: compiled from: HlsChunkSource.java */
    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final v4.e.d f15768a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15769b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15770c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f15771d;

        public e(v4.e.d dVar, long j10, int i10) {
            this.f15768a = dVar;
            this.f15769b = j10;
            this.f15770c = i10;
            this.f15771d = (dVar instanceof v4.e.a) && ((v4.e.a) dVar).f16282t;
        }
    }

    public g(i iVar, v4.j jVar, Uri[] uriArr, s0[] s0VarArr, h hVar, j0 j0Var, e2.e eVar, List<s0> list, v0 v0Var) {
        this.f15742a = iVar;
        this.f15748g = jVar;
        this.f15746e = uriArr;
        this.f15747f = s0VarArr;
        this.f15745d = eVar;
        this.f15750i = list;
        this.f15752k = v0Var;
        l5.j jVarA = hVar.a();
        this.f15743b = jVarA;
        if (j0Var != null) {
            jVarA.j(j0Var);
        }
        this.f15744c = hVar.a();
        this.f15749h = new t0("", s0VarArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < uriArr.length; i10++) {
            if ((s0VarArr[i10].f11680l & Http2.INITIAL_MAX_FRAME_SIZE) == 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        this.f15758q = new d(this.f15749h, w6.a.d(arrayList));
    }

    public final r4.n[] a(j jVar, long j10) {
        List listUnmodifiableList;
        int iB = jVar == null ? -1 : this.f15749h.b(jVar.f14561d);
        int length = this.f15758q.length();
        r4.n[] nVarArr = new r4.n[length];
        boolean z10 = false;
        int i10 = 0;
        while (i10 < length) {
            int i11 = this.f15758q.i(i10);
            Uri uri = this.f15746e[i11];
            if (this.f15748g.e(uri)) {
                v4.e eVarJ = this.f15748g.j(uri, z10);
                Objects.requireNonNull(eVarJ);
                long jO = eVarJ.f16266h - this.f15748g.o();
                Pair<Long, Integer> pairC = c(jVar, i11 != iB ? true : z10, eVarJ, jO, j10);
                long jLongValue = ((Long) pairC.first).longValue();
                int iIntValue = ((Integer) pairC.second).intValue();
                int i12 = (int) (jLongValue - eVarJ.f16269k);
                if (i12 < 0 || eVarJ.f16276r.size() < i12) {
                    u6.a aVar = v.f16002i;
                    listUnmodifiableList = p0.f15967l;
                } else {
                    ArrayList arrayList = new ArrayList();
                    if (i12 < eVarJ.f16276r.size()) {
                        if (iIntValue != -1) {
                            v4.e.c cVar = eVarJ.f16276r.get(i12);
                            if (iIntValue == 0) {
                                arrayList.add(cVar);
                            } else if (iIntValue < cVar.f16287t.size()) {
                                List<v4.e.a> list = cVar.f16287t;
                                arrayList.addAll(list.subList(iIntValue, list.size()));
                            }
                            i12++;
                        }
                        List<v4.e.c> list2 = eVarJ.f16276r;
                        arrayList.addAll(list2.subList(i12, list2.size()));
                        iIntValue = 0;
                    }
                    if (eVarJ.f16272n != -9223372036854775807L) {
                        if (iIntValue == -1) {
                            iIntValue = 0;
                        }
                        if (iIntValue < eVarJ.f16277s.size()) {
                            List<v4.e.a> list3 = eVarJ.f16277s;
                            arrayList.addAll(list3.subList(iIntValue, list3.size()));
                        }
                    }
                    listUnmodifiableList = Collections.unmodifiableList(arrayList);
                }
                nVarArr[i10] = new c(jO, listUnmodifiableList);
            } else {
                nVarArr[i10] = r4.n.f14606a;
            }
            i10++;
            z10 = false;
        }
        return nVarArr;
    }

    public final int b(j jVar) {
        if (jVar.f15777o == -1) {
            return 1;
        }
        v4.e eVarJ = this.f15748g.j(this.f15746e[this.f15749h.b(jVar.f14561d)], false);
        Objects.requireNonNull(eVarJ);
        int i10 = (int) (jVar.f14605j - eVarJ.f16269k);
        if (i10 < 0) {
            return 1;
        }
        List<v4.e.a> list = i10 < eVarJ.f16276r.size() ? eVarJ.f16276r.get(i10).f16287t : eVarJ.f16277s;
        if (jVar.f15777o >= list.size()) {
            return 2;
        }
        v4.e.a aVar = list.get(jVar.f15777o);
        if (aVar.f16282t) {
            return 0;
        }
        return g0.a(Uri.parse(e0.c(eVarJ.f16324a, aVar.f16288h)), jVar.f14559b.f10071a) ? 1 : 2;
    }

    public final Pair<Long, Integer> c(j jVar, boolean z10, v4.e eVar, long j10, long j11) {
        boolean z11 = true;
        int i10 = -1;
        if (jVar != null && !z10) {
            if (!jVar.H) {
                return new Pair<>(Long.valueOf(jVar.f14605j), Integer.valueOf(jVar.f15777o));
            }
            Long lValueOf = Long.valueOf(jVar.f15777o == -1 ? jVar.c() : jVar.f14605j);
            int i11 = jVar.f15777o;
            return new Pair<>(lValueOf, Integer.valueOf(i11 != -1 ? i11 + 1 : -1));
        }
        long j12 = eVar.f16279u + j10;
        if (jVar != null && !this.f15757p) {
            j11 = jVar.f14564g;
        }
        if (!eVar.f16273o && j11 >= j12) {
            return new Pair<>(Long.valueOf(eVar.f16269k + ((long) eVar.f16276r.size())), -1);
        }
        long j13 = j11 - j10;
        List<v4.e.c> list = eVar.f16276r;
        Long lValueOf2 = Long.valueOf(j13);
        if (this.f15748g.a() && jVar != null) {
            z11 = false;
        }
        int iC = g0.c(list, lValueOf2, z11);
        long j14 = ((long) iC) + eVar.f16269k;
        if (iC >= 0) {
            v4.e.c cVar = eVar.f16276r.get(iC);
            List<v4.e.a> list2 = j13 < cVar.f16292l + cVar.f16290j ? cVar.f16287t : eVar.f16277s;
            for (int i12 = 0; i12 < list2.size(); i12++) {
                v4.e.a aVar = list2.get(i12);
                if (j13 < aVar.f16292l + aVar.f16290j) {
                    if (!aVar.f16281s) {
                        break;
                    }
                    j14 += list2 == eVar.f16277s ? 1L : 0L;
                    i10 = i12;
                    break;
                }
            }
        }
        return new Pair<>(Long.valueOf(j14), Integer.valueOf(i10));
    }

    public final r4.e d(Uri uri, int i10) {
        if (uri == null) {
            return null;
        }
        byte[] bArrRemove = this.f15751j.f15741a.remove(uri);
        if (bArrRemove != null) {
            this.f15751j.f15741a.put(uri, bArrRemove);
            return null;
        }
        return new a(this.f15744c, new l5.m(uri, 0L, 1, null, Collections.emptyMap(), 0L, -1L, null, 1, null), this.f15747f[i10], this.f15758q.n(), this.f15758q.q(), this.f15754m);
    }
}
