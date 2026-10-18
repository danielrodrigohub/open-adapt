package com.google.android.exoplayer2.source.smoothstreaming;

import f.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import l5.c0;
import l5.e0;
import l5.j0;
import n3.s0;
import n3.w1;
import p4.m0;
import p4.n0;
import p4.t0;
import p4.u0;
import p4.v;
import r3.k;
import r3.l;
import r4.h;

/* JADX INFO: compiled from: SsMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements v, n0.a<h<b>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b.a f4801h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final j0 f4802i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final e0 f4803j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final l f4804k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final k.a f4805l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final c0 f4806m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final p4.e0.a f4807n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final l5.b f4808o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final u0 f4809p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final p4.h f4810q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public v.a f4811r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public y4.a f4812s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public h<b>[] f4813t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public p f4814u;

    public c(y4.a aVar, b.a aVar2, j0 j0Var, p4.h hVar, l lVar, k.a aVar3, c0 c0Var, p4.e0.a aVar4, e0 e0Var, l5.b bVar) {
        this.f4812s = aVar;
        this.f4801h = aVar2;
        this.f4802i = j0Var;
        this.f4803j = e0Var;
        this.f4804k = lVar;
        this.f4805l = aVar3;
        this.f4806m = c0Var;
        this.f4807n = aVar4;
        this.f4808o = bVar;
        this.f4810q = hVar;
        t0[] t0VarArr = new t0[aVar.f18596f.length];
        int i10 = 0;
        while (true) {
            y4.a.b[] bVarArr = aVar.f18596f;
            if (i10 >= bVarArr.length) {
                this.f4809p = new u0(t0VarArr);
                h<b>[] hVarArr = new h[0];
                this.f4813t = hVarArr;
                Objects.requireNonNull(hVar);
                this.f4814u = new p(hVarArr);
                return;
            }
            s0[] s0VarArr = bVarArr[i10].f18611j;
            s0[] s0VarArr2 = new s0[s0VarArr.length];
            for (int i11 = 0; i11 < s0VarArr.length; i11++) {
                s0 s0Var = s0VarArr[i11];
                s0VarArr2[i11] = s0Var.c(lVar.e(s0Var));
            }
            t0VarArr[i10] = new t0(Integer.toString(i10), s0VarArr2);
            i10++;
        }
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        return this.f4814u.a();
    }

    @Override // p4.v, p4.n0
    public final long c() {
        return this.f4814u.c();
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        for (h<b> hVar : this.f4813t) {
            if (hVar.f14569h == 2) {
                return hVar.f14573l.d(j10, w1Var);
            }
        }
        return j10;
    }

    @Override // p4.v, p4.n0
    public final long e() {
        return this.f4814u.e();
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        return this.f4814u.f(j10);
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
        this.f4814u.g(j10);
    }

    @Override // p4.n0.a
    public final void j(n0 n0Var) {
        this.f4811r.j(this);
    }

    @Override // p4.v
    public final long l() {
        return -9223372036854775807L;
    }

    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        int i10;
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < lVarArr.length) {
            if (m0VarArr[i11] != null) {
                h hVar = (h) m0VarArr[i11];
                if (lVarArr[i11] == null || !zArr[i11]) {
                    hVar.A(null);
                    m0VarArr[i11] = null;
                } else {
                    ((b) hVar.f14573l).c(lVarArr[i11]);
                    arrayList.add(hVar);
                }
            }
            if (m0VarArr[i11] != null || lVarArr[i11] == null) {
                i10 = i11;
            } else {
                j5.l lVar = lVarArr[i11];
                int iC = this.f4809p.c(lVar.l());
                i10 = i11;
                h hVar2 = new h(this.f4812s.f18596f[iC].f18602a, null, null, this.f4801h.a(this.f4803j, this.f4812s, iC, lVar, this.f4802i), this, this.f4808o, j10, this.f4804k, this.f4805l, this.f4806m, this.f4807n);
                arrayList.add(hVar2);
                m0VarArr[i10] = hVar2;
                zArr2[i10] = true;
            }
            i11 = i10 + 1;
        }
        h<b>[] hVarArr = new h[arrayList.size()];
        this.f4813t = hVarArr;
        arrayList.toArray(hVarArr);
        p4.h hVar3 = this.f4810q;
        h<b>[] hVarArr2 = this.f4813t;
        Objects.requireNonNull(hVar3);
        this.f4814u = new p(hVarArr2);
        return j10;
    }

    @Override // p4.v
    public final u0 o() {
        return this.f4809p;
    }

    @Override // p4.v
    public final void q() throws IOException {
        this.f4803j.b();
    }

    @Override // p4.v
    public final void s(long j10, boolean z10) {
        for (h<b> hVar : this.f4813t) {
            hVar.s(j10, z10);
        }
    }

    @Override // p4.v
    public final long t(long j10) {
        for (h<b> hVar : this.f4813t) {
            hVar.C(j10);
        }
        return j10;
    }

    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        this.f4811r = aVar;
        aVar.i(this);
    }
}
