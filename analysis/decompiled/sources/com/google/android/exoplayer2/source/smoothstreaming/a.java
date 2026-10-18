package com.google.android.exoplayer2.source.smoothstreaming;

import a4.e;
import a4.m;
import j5.l;
import j5.r;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import l5.c0;
import l5.e0;
import l5.j;
import l5.j0;
import n3.s0;
import n3.w1;
import r4.d;
import r4.f;
import r4.g;
import r4.n;

/* JADX INFO: compiled from: DefaultSsChunkSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements com.google.android.exoplayer2.source.smoothstreaming.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f4791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f[] f4793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final j f4794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l f4795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public y4.a f4796f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4797g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p4.b f4798h;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.smoothstreaming.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultSsChunkSource.java */
    public static final class C0084a implements com.google.android.exoplayer2.source.smoothstreaming.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j.a f4799a;

        public C0084a(j.a aVar) {
            this.f4799a = aVar;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.b.a
        public final com.google.android.exoplayer2.source.smoothstreaming.b a(e0 e0Var, y4.a aVar, int i10, l lVar, j0 j0Var) {
            j jVarA = this.f4799a.a();
            if (j0Var != null) {
                jVarA.j(j0Var);
            }
            return new a(e0Var, aVar, i10, lVar, jVarA);
        }
    }

    /* JADX INFO: compiled from: DefaultSsChunkSource.java */
    public static final class b extends r4.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final y4.a.b f4800e;

        public b(y4.a.b bVar, int i10) {
            super(i10, bVar.f18612k - 1);
            this.f4800e = bVar;
        }

        @Override // r4.n
        public final long a() {
            return this.f4800e.b((int) this.f14537d) + b();
        }

        @Override // r4.n
        public final long b() {
            c();
            y4.a.b bVar = this.f4800e;
            return bVar.f18616o[(int) this.f14537d];
        }
    }

    public a(e0 e0Var, y4.a aVar, int i10, l lVar, j jVar) {
        m[] mVarArr;
        this.f4791a = e0Var;
        this.f4796f = aVar;
        this.f4792b = i10;
        this.f4795e = lVar;
        this.f4794d = jVar;
        y4.a.b bVar = aVar.f18596f[i10];
        this.f4793c = new f[lVar.length()];
        int i11 = 0;
        while (i11 < this.f4793c.length) {
            int i12 = lVar.i(i11);
            s0 s0Var = bVar.f18611j[i12];
            if (s0Var.f11690v != null) {
                y4.a.C0320a c0320a = aVar.f18595e;
                Objects.requireNonNull(c0320a);
                mVarArr = c0320a.f18601c;
            } else {
                mVarArr = null;
            }
            int i13 = bVar.f18602a;
            int i14 = i11;
            this.f4793c[i14] = new d(new e(3, null, new a4.l(i12, i13, bVar.f18604c, -9223372036854775807L, aVar.f18597g, s0Var, 0, mVarArr, i13 == 2 ? 4 : 0, null, null), Collections.emptyList()), bVar.f18602a, s0Var);
            i11 = i14 + 1;
        }
    }

    @Override // r4.i
    public final void a() {
        for (f fVar : this.f4793c) {
            ((d) fVar).f14542h.a();
        }
    }

    @Override // r4.i
    public final void b() throws IOException {
        p4.b bVar = this.f4798h;
        if (bVar != null) {
            throw bVar;
        }
        this.f4791a.b();
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.b
    public final void c(l lVar) {
        this.f4795e = lVar;
    }

    @Override // r4.i
    public final long d(long j10, w1 w1Var) {
        y4.a.b bVar = this.f4796f.f18596f[this.f4792b];
        int iC = bVar.c(j10);
        long[] jArr = bVar.f18616o;
        long j11 = jArr[iC];
        return w1Var.a(j10, j11, (j11 >= j10 || iC >= bVar.f18612k + (-1)) ? j11 : jArr[iC + 1]);
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.b
    public final void e(y4.a aVar) {
        y4.a.b[] bVarArr = this.f4796f.f18596f;
        int i10 = this.f4792b;
        y4.a.b bVar = bVarArr[i10];
        int i11 = bVar.f18612k;
        y4.a.b bVar2 = aVar.f18596f[i10];
        if (i11 == 0 || bVar2.f18612k == 0) {
            this.f4797g += i11;
        } else {
            int i12 = i11 - 1;
            long jB = bVar.b(i12) + bVar.f18616o[i12];
            long j10 = bVar2.f18616o[0];
            if (jB <= j10) {
                this.f4797g += i11;
            } else {
                this.f4797g = bVar.c(j10) + this.f4797g;
            }
        }
        this.f4796f = aVar;
    }

    @Override // r4.i
    public final boolean g(long j10, r4.e eVar, List<? extends r4.m> list) {
        if (this.f4798h != null) {
            return false;
        }
        return this.f4795e.h(j10, eVar, list);
    }

    @Override // r4.i
    public final int h(long j10, List<? extends r4.m> list) {
        return (this.f4798h != null || this.f4795e.length() < 2) ? list.size() : this.f4795e.j(j10, list);
    }

    @Override // r4.i
    public final void i(long j10, long j11, List<? extends r4.m> list, g gVar) {
        int iC;
        long jB;
        if (this.f4798h != null) {
            return;
        }
        y4.a aVar = this.f4796f;
        y4.a.b bVar = aVar.f18596f[this.f4792b];
        if (bVar.f18612k == 0) {
            gVar.f14568b = !aVar.f18594d;
            return;
        }
        if (list.isEmpty()) {
            iC = bVar.c(j11);
        } else {
            iC = (int) (list.get(list.size() - 1).c() - ((long) this.f4797g));
            if (iC < 0) {
                this.f4798h = new p4.b();
                return;
            }
        }
        int i10 = iC;
        if (i10 >= bVar.f18612k) {
            gVar.f14568b = !this.f4796f.f18594d;
            return;
        }
        long j12 = j11 - j10;
        y4.a aVar2 = this.f4796f;
        if (aVar2.f18594d) {
            y4.a.b bVar2 = aVar2.f18596f[this.f4792b];
            int i11 = bVar2.f18612k - 1;
            jB = (bVar2.b(i11) + bVar2.f18616o[i11]) - j10;
        } else {
            jB = -9223372036854775807L;
        }
        int length = this.f4795e.length();
        n[] nVarArr = new n[length];
        for (int i12 = 0; i12 < length; i12++) {
            this.f4795e.i(i12);
            nVarArr[i12] = new b(bVar, i10);
        }
        this.f4795e.g(j10, j12, jB, list, nVarArr);
        long j13 = bVar.f18616o[i10];
        long jB2 = bVar.b(i10) + j13;
        long j14 = list.isEmpty() ? j11 : -9223372036854775807L;
        int i13 = i10 + this.f4797g;
        int iO = this.f4795e.o();
        f fVar = this.f4793c[iO];
        int i14 = this.f4795e.i(iO);
        m5.a.e(bVar.f18611j != null);
        m5.a.e(bVar.f18615n != null);
        m5.a.e(i10 < bVar.f18615n.size());
        String string = Integer.toString(bVar.f18611j[i14].f11683o);
        String string2 = bVar.f18615n.get(i10).toString();
        gVar.f14567a = new r4.j(this.f4794d, new l5.m(m5.e0.d(bVar.f18613l, bVar.f18614m.replace("{bitrate}", string).replace("{Bitrate}", string).replace("{start time}", string2).replace("{start_time}", string2))), this.f4795e.m(), this.f4795e.n(), this.f4795e.q(), j13, jB2, j14, -9223372036854775807L, i13, 1, j13, fVar);
    }

    @Override // r4.i
    public final boolean j(r4.e eVar, boolean z10, c0.c cVar, c0 c0Var) {
        c0.b bVarA = c0Var.a(r.a(this.f4795e), cVar);
        if (z10 && bVarA != null && bVarA.f9981a == 2) {
            l lVar = this.f4795e;
            if (lVar.b(lVar.a(eVar.f14561d), bVarA.f9982b)) {
                return true;
            }
        }
        return false;
    }

    @Override // r4.i
    public final void k(r4.e eVar) {
    }
}
