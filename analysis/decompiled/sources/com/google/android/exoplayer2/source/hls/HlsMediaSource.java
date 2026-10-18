package com.google.android.exoplayer2.source.hls;

import android.os.Looper;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import l5.c0;
import l5.j0;
import l5.u;
import m5.g0;
import n3.p0;
import n3.y0;
import o3.v0;
import p4.a;
import p4.e0;
import p4.v;
import p4.x;
import r3.c;
import r3.k;
import r3.l;
import r3.m;
import u4.d;
import u4.h;
import u4.i;
import u4.n;
import v4.b;
import v4.e;
import v4.f;
import v4.j;

/* JADX INFO: loaded from: classes.dex */
public final class HlsMediaSource extends a implements j.d {
    public y0.f A;
    public j0 B;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final i f4625o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final y0.h f4626p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final h f4627q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final p4.h f4628r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final l f4629s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final c0 f4630t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f4631u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f4632v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f4633w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final j f4634x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final long f4635y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final y0 f4636z;

    public static final class Factory implements x.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final h f4637a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public m f4642f = new c();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public v4.a f4639c = new v4.a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public y0.h f4640d = b.f16233v;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public d f4638b = i.f15772a;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public c0 f4643g = new u();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public p4.h f4641e = new p4.h();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f4645i = 1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f4646j = -9223372036854775807L;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f4644h = true;

        public Factory(l5.j.a aVar) {
            this.f4637a = new u4.c(aVar);
        }

        @Override // p4.x.a
        public final x.a a(m mVar) {
            m5.a.d(mVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            this.f4642f = mVar;
            return this;
        }

        @Override // p4.x.a
        public final x.a b(c0 c0Var) {
            m5.a.d(c0Var, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            this.f4643g = c0Var;
            return this;
        }

        @Override // p4.x.a
        public final x c(y0 y0Var) {
            Objects.requireNonNull(y0Var.f11748i);
            v4.i cVar = this.f4639c;
            List<o4.c> list = y0Var.f11748i.f11808d;
            if (!list.isEmpty()) {
                cVar = new v4.c(cVar, list);
            }
            h hVar = this.f4637a;
            d dVar = this.f4638b;
            p4.h hVar2 = this.f4641e;
            l lVarA = this.f4642f.a(y0Var);
            c0 c0Var = this.f4643g;
            y0.h hVar3 = this.f4640d;
            h hVar4 = this.f4637a;
            Objects.requireNonNull(hVar3);
            return new HlsMediaSource(y0Var, hVar, dVar, hVar2, lVarA, c0Var, new b(hVar4, c0Var, cVar), this.f4646j, this.f4644h, this.f4645i);
        }
    }

    static {
        p0.a("goog.exo.hls");
    }

    public HlsMediaSource(y0 y0Var, h hVar, i iVar, p4.h hVar2, l lVar, c0 c0Var, j jVar, long j10, boolean z10, int i10) {
        y0.h hVar3 = y0Var.f11748i;
        Objects.requireNonNull(hVar3);
        this.f4626p = hVar3;
        this.f4636z = y0Var;
        this.A = y0Var.f11749j;
        this.f4627q = hVar;
        this.f4625o = iVar;
        this.f4628r = hVar2;
        this.f4629s = lVar;
        this.f4630t = c0Var;
        this.f4634x = jVar;
        this.f4635y = j10;
        this.f4631u = z10;
        this.f4632v = i10;
        this.f4633w = false;
    }

    public static e.a y(List<e.a> list, long j10) {
        e.a aVar = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e.a aVar2 = list.get(i10);
            long j11 = aVar2.f16292l;
            if (j11 > j10 || !aVar2.f16281s) {
                if (j11 > j10) {
                    break;
                }
            } else {
                aVar = aVar2;
            }
        }
        return aVar;
    }

    @Override // p4.x
    public final y0 a() {
        return this.f4636z;
    }

    @Override // p4.x
    public final void b() throws IOException {
        this.f4634x.f();
    }

    @Override // p4.x
    public final void d(v vVar) {
        u4.l lVar = (u4.l) vVar;
        lVar.f15790i.d(lVar);
        for (n nVar : lVar.A) {
            if (nVar.K) {
                for (n.d dVar : nVar.C) {
                    dVar.z();
                }
            }
            nVar.f15825q.f(nVar);
            nVar.f15833y.removeCallbacksAndMessages(null);
            nVar.O = true;
            nVar.f15834z.clear();
        }
        lVar.f15805x = null;
    }

    @Override // p4.x
    public final v q(x.b bVar, l5.b bVar2, long j10) {
        e0.a aVarS = s(bVar);
        k.a aVarR = r(bVar);
        i iVar = this.f4625o;
        j jVar = this.f4634x;
        h hVar = this.f4627q;
        j0 j0Var = this.B;
        l lVar = this.f4629s;
        c0 c0Var = this.f4630t;
        p4.h hVar2 = this.f4628r;
        boolean z10 = this.f4631u;
        int i10 = this.f4632v;
        boolean z11 = this.f4633w;
        v0 v0Var = this.f12922n;
        m5.a.f(v0Var);
        return new u4.l(iVar, jVar, hVar, j0Var, lVar, aVarR, c0Var, aVarS, bVar2, hVar2, z10, i10, z11, v0Var);
    }

    @Override // p4.a
    public final void v(j0 j0Var) {
        this.B = j0Var;
        this.f4629s.b();
        l lVar = this.f4629s;
        Looper looperMyLooper = Looper.myLooper();
        Objects.requireNonNull(looperMyLooper);
        v0 v0Var = this.f12922n;
        m5.a.f(v0Var);
        lVar.f(looperMyLooper, v0Var);
        this.f4634x.l(this.f4626p.f11805a, s(null), this);
    }

    @Override // p4.a
    public final void x() {
        this.f4634x.stop();
        this.f4629s.a();
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:60:0x0105  */
    /* JADX WARN: Code duplicated, block: B:63:0x0115  */
    /* JADX WARN: Code duplicated, block: B:64:0x0117  */
    /* JADX WARN: Code duplicated, block: B:66:0x011f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0122  */
    /* JADX WARN: Code duplicated, block: B:69:0x012a  */
    /* JADX WARN: Code duplicated, block: B:70:0x012d  */
    /* JADX WARN: Code duplicated, block: B:72:0x0146  */
    /* JADX WARN: Code duplicated, block: B:73:0x0149  */
    /* JADX WARN: Code duplicated, block: B:79:0x0156  */
    /* JADX WARN: Code duplicated, block: B:92:0x01ab  */
    public final void z(e eVar) {
        long j10;
        p4.p0 p0Var;
        long j11;
        long j12;
        long j13;
        long jL;
        long j14;
        boolean z10;
        float f10;
        y0.f fVar;
        long jL2;
        e.a aVarY;
        e.c cVar;
        e.a aVarY2;
        long j15;
        boolean z11;
        long jX = eVar.f16274p ? g0.X(eVar.f16266h) : -9223372036854775807L;
        int i10 = eVar.f16262d;
        long j16 = (i10 == 2 || i10 == 1) ? jX : -9223372036854775807L;
        f fVarB = this.f4634x.b();
        Objects.requireNonNull(fVarB);
        androidx.emoji2.text.b bVar = new androidx.emoji2.text.b(fVarB);
        if (this.f4634x.a()) {
            long jO = eVar.f16266h - this.f4634x.o();
            long j17 = eVar.f16273o ? jO + eVar.f16279u : -9223372036854775807L;
            long jL3 = eVar.f16274p ? g0.L(g0.x(this.f4635y)) - (eVar.f16266h + eVar.f16279u) : 0L;
            long j18 = this.A.f11795h;
            if (j18 != -9223372036854775807L) {
                jL = g0.L(j18);
                j12 = j16;
            } else {
                e.C0291e c0291e = eVar.f16280v;
                long j19 = eVar.f16263e;
                if (j19 != -9223372036854775807L) {
                    j12 = j16;
                    j13 = eVar.f16279u - j19;
                } else {
                    long j20 = c0291e.f16302d;
                    j12 = j16;
                    if (j20 == -9223372036854775807L || eVar.f16272n == -9223372036854775807L) {
                        j13 = c0291e.f16301c;
                        if (j13 == -9223372036854775807L) {
                            j13 = 3 * eVar.f16271m;
                        }
                    } else {
                        j13 = j20;
                    }
                }
                jL = j13 + jL3;
            }
            long j21 = g0.j(jL, jL3, eVar.f16279u + jL3);
            y0.f fVar2 = this.f4636z.f11749j;
            if (fVar2.f11798k == -3.4028235E38f && fVar2.f11799l == -3.4028235E38f) {
                e.C0291e c0291e2 = eVar.f16280v;
                j14 = jL3;
                if (c0291e2.f16301c == -9223372036854775807L && c0291e2.f16302d == -9223372036854775807L) {
                    z10 = true;
                }
                y0.f.a aVar = new y0.f.a();
                aVar.f11800a = g0.X(j21);
                if (z10) {
                    f10 = 1.0f;
                } else {
                    f10 = this.A.f11798k;
                }
                aVar.f11803d = f10;
                aVar.f11804e = z10 ? 1.0f : this.A.f11799l;
                fVar = new y0.f(aVar);
                this.A = fVar;
                jL2 = eVar.f16263e;
                if (jL2 == -9223372036854775807L) {
                    jL2 = (eVar.f16279u + j14) - g0.L(fVar.f11795h);
                }
                if (eVar.f16265g) {
                    j15 = jL2;
                } else {
                    aVarY = y(eVar.f16277s, jL2);
                    if (aVarY != null) {
                        j15 = aVarY.f16292l;
                    } else if (eVar.f16276r.isEmpty()) {
                        j15 = 0;
                    } else {
                        List<e.c> list = eVar.f16276r;
                        cVar = list.get(g0.c(list, Long.valueOf(jL2), true));
                        aVarY2 = y(cVar.f16287t, jL2);
                        if (aVarY2 != null) {
                            j15 = aVarY2.f16292l;
                        } else {
                            j15 = cVar.f16292l;
                        }
                    }
                }
                if (eVar.f16262d == 2 || !eVar.f16264f) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                p0Var = new p4.p0(j12, jX, j17, eVar.f16279u, jO, j15, true, !eVar.f16273o, z11, bVar, this.f4636z, this.A);
            } else {
                j14 = jL3;
            }
            z10 = false;
            y0.f.a aVar2 = new y0.f.a();
            aVar2.f11800a = g0.X(j21);
            if (z10) {
                f10 = 1.0f;
            } else {
                f10 = this.A.f11798k;
            }
            aVar2.f11803d = f10;
            aVar2.f11804e = z10 ? 1.0f : this.A.f11799l;
            fVar = new y0.f(aVar2);
            this.A = fVar;
            jL2 = eVar.f16263e;
            if (jL2 == -9223372036854775807L) {
                jL2 = (eVar.f16279u + j14) - g0.L(fVar.f11795h);
            }
            if (eVar.f16265g) {
                j15 = jL2;
            } else {
                aVarY = y(eVar.f16277s, jL2);
                if (aVarY != null) {
                    j15 = aVarY.f16292l;
                } else if (eVar.f16276r.isEmpty()) {
                    j15 = 0;
                } else {
                    List<e.c> list2 = eVar.f16276r;
                    cVar = list2.get(g0.c(list2, Long.valueOf(jL2), true));
                    aVarY2 = y(cVar.f16287t, jL2);
                    if (aVarY2 != null) {
                        j15 = aVarY2.f16292l;
                    } else {
                        j15 = cVar.f16292l;
                    }
                }
            }
            if (eVar.f16262d == 2) {
                z11 = false;
            } else {
                z11 = false;
            }
            p0Var = new p4.p0(j12, jX, j17, eVar.f16279u, jO, j15, true, !eVar.f16273o, z11, bVar, this.f4636z, this.A);
        } else {
            long j22 = j16;
            if (eVar.f16263e == -9223372036854775807L || eVar.f16276r.isEmpty()) {
                j10 = 0;
            } else {
                if (eVar.f16265g) {
                    j11 = eVar.f16263e;
                } else {
                    long j23 = eVar.f16263e;
                    if (j23 == eVar.f16279u) {
                        j11 = eVar.f16263e;
                    } else {
                        List<e.c> list3 = eVar.f16276r;
                        j11 = list3.get(g0.c(list3, Long.valueOf(j23), true)).f16292l;
                    }
                }
                j10 = j11;
            }
            long j24 = eVar.f16279u;
            p0Var = new p4.p0(j22, jX, j24, j24, 0L, j10, true, false, true, bVar, this.f4636z, null);
        }
        w(p0Var);
    }
}
