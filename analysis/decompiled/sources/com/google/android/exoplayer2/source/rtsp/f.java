package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import androidx.appcompat.widget.e0;
import com.google.android.exoplayer2.source.rtsp.d.b;
import java.io.IOException;
import java.net.BindException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import l5.d0;
import m5.g0;
import n3.s0;
import n3.w1;
import p4.l0;
import p4.m0;
import p4.t0;
import p4.u0;
import p4.v;
import s3.u;
import s3.w;
import u6.p0;
import u6.q0;
import u6.t;
import y0.c0;
import y0.r;
import y0.x;
import y0.y;

/* JADX INFO: compiled from: RtspMediaPeriod.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements v {
    public boolean A;
    public int B;
    public boolean C;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l5.b f4704h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Handler f4705i = g0.l(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f4706j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.rtsp.d f4707k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<d> f4708l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<c> f4709m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b f4710n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a f4711o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public v.a f4712p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public u6.v<t0> f4713q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public IOException f4714r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public RtspMediaSource.c f4715s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f4716t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f4717u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f4718v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4719w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f4720x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f4721y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f4722z;

    /* JADX INFO: compiled from: RtspMediaPeriod.java */
    public final class a implements s3.j, d0.a<com.google.android.exoplayer2.source.rtsp.b>, l0.c, com.google.android.exoplayer2.source.rtsp.d.e, com.google.android.exoplayer2.source.rtsp.d.InterfaceC0083d {
        public a() {
        }

        public final void a(String str, Throwable th) {
            f.this.f4714r = th == null ? new IOException(str) : new IOException(str, th);
        }

        @Override // s3.j
        public final void b() {
            f fVar = f.this;
            fVar.f4705i.post(new y(fVar, 3));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // l5.d0.a
        public final void h(d0.d dVar, long j10, long j11) {
            com.google.android.exoplayer2.source.rtsp.b bVar = (com.google.android.exoplayer2.source.rtsp.b) dVar;
            int i10 = 0;
            if (f.this.e() != 0) {
                while (i10 < f.this.f4708l.size()) {
                    d dVar2 = f.this.f4708l.get(i10);
                    if (dVar2.f4728a.f4725b == bVar) {
                        dVar2.a();
                        return;
                    }
                    i10++;
                }
                return;
            }
            f fVar = f.this;
            if (fVar.C) {
                return;
            }
            com.google.android.exoplayer2.source.rtsp.d dVar3 = fVar.f4707k;
            Objects.requireNonNull(dVar3);
            try {
                dVar3.close();
                g gVar = new g(dVar3.new b());
                dVar3.f4684q = gVar;
                gVar.x(dVar3.g0(dVar3.f4683p));
                dVar3.f4686s = null;
                dVar3.f4691x = false;
                dVar3.f4688u = null;
            } catch (IOException e10) {
                f.this.f4715s = new RtspMediaSource.c(e10);
            }
            com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a interfaceC0082aB = fVar.f4711o.b();
            if (interfaceC0082aB == null) {
                fVar.f4715s = new RtspMediaSource.c("No fallback data channel factory for TCP retry");
            } else {
                ArrayList arrayList = new ArrayList(fVar.f4708l.size());
                ArrayList arrayList2 = new ArrayList(fVar.f4709m.size());
                for (int i11 = 0; i11 < fVar.f4708l.size(); i11++) {
                    d dVar4 = fVar.f4708l.get(i11);
                    if (dVar4.f4731d) {
                        arrayList.add(dVar4);
                    } else {
                        d dVar5 = fVar.new d(dVar4.f4728a.f4724a, i11, interfaceC0082aB);
                        arrayList.add(dVar5);
                        dVar5.f4729b.g(dVar5.f4728a.f4725b, fVar.f4706j, 0);
                        if (fVar.f4709m.contains(dVar4.f4728a)) {
                            arrayList2.add(dVar5.f4728a);
                        }
                    }
                }
                u6.v vVarS = u6.v.s(fVar.f4708l);
                fVar.f4708l.clear();
                fVar.f4708l.addAll(arrayList);
                fVar.f4709m.clear();
                fVar.f4709m.addAll(arrayList2);
                while (i10 < vVarS.size()) {
                    ((d) vVarS.get(i10)).a();
                    i10++;
                }
            }
            f.this.C = true;
        }

        @Override // s3.j
        public final void j(u uVar) {
        }

        @Override // l5.d0.a
        public final /* bridge */ /* synthetic */ void k(d0.d dVar, long j10, long j11, boolean z10) {
        }

        @Override // l5.d0.a
        public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
            com.google.android.exoplayer2.source.rtsp.b bVar = (com.google.android.exoplayer2.source.rtsp.b) dVar;
            f fVar = f.this;
            if (!fVar.f4722z) {
                fVar.f4714r = iOException;
            } else if (iOException.getCause() instanceof BindException) {
                f fVar2 = f.this;
                int i11 = fVar2.B;
                fVar2.B = i11 + 1;
                if (i11 < 3) {
                    return d0.f9989d;
                }
            } else {
                f.this.f4715s = new RtspMediaSource.c(bVar.f4662b.f17179b.toString(), iOException);
            }
            return d0.f9990e;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        @Override // s3.j
        public final w p(int i10, int i11) {
            d dVar = (d) f.this.f4708l.get(i10);
            Objects.requireNonNull(dVar);
            return dVar.f4730c;
        }

        @Override // p4.l0.c
        public final void r() {
            f fVar = f.this;
            fVar.f4705i.post(new x(fVar, 2));
        }
    }

    /* JADX INFO: compiled from: RtspMediaPeriod.java */
    public interface b {
    }

    /* JADX INFO: compiled from: RtspMediaPeriod.java */
    public final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w4.g f4724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.google.android.exoplayer2.source.rtsp.b f4725b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f4726c;

        public c(w4.g gVar, int i10, com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a interfaceC0082a) {
            this.f4724a = gVar;
            this.f4725b = new com.google.android.exoplayer2.source.rtsp.b(i10, gVar, new c0(this, 4), f.this.f4706j, interfaceC0082a);
        }

        public final Uri a() {
            return this.f4725b.f4662b.f17179b;
        }
    }

    /* JADX INFO: compiled from: RtspMediaPeriod.java */
    public final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c f4728a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d0 f4729b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final l0 f4730c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f4731d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f4732e;

        public d(w4.g gVar, int i10, com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a interfaceC0082a) {
            this.f4728a = f.this.new c(gVar, i10, interfaceC0082a);
            this.f4729b = new d0(e0.d("ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper ", i10));
            l0 l0VarG = l0.g(f.this.f4704h);
            this.f4730c = l0VarG;
            l0VarG.f13097f = f.this.f4706j;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        public final void a() {
            if (this.f4731d) {
                return;
            }
            this.f4728a.f4725b.f4668h = true;
            this.f4731d = true;
            f fVar = f.this;
            fVar.f4719w = true;
            for (int i10 = 0; i10 < fVar.f4708l.size(); i10++) {
                fVar.f4719w &= ((d) fVar.f4708l.get(i10)).f4731d;
            }
        }
    }

    /* JADX INFO: compiled from: RtspMediaPeriod.java */
    public final class e implements m0 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f4734h;

        public e(int i10) {
            this.f4734h = i10;
        }

        @Override // p4.m0
        public final void b() throws RtspMediaSource.c {
            RtspMediaSource.c cVar = f.this.f4715s;
            if (cVar != null) {
                throw cVar;
            }
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        @Override // p4.m0
        public final boolean isReady() {
            f fVar = f.this;
            int i10 = this.f4734h;
            if (!fVar.f4720x) {
                d dVar = (d) fVar.f4708l.get(i10);
                if (dVar.f4730c.u(dVar.f4731d)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        @Override // p4.m0
        public final int j(r rVar, q3.g gVar, int i10) {
            f fVar = f.this;
            int i11 = this.f4734h;
            if (fVar.f4720x) {
                return -3;
            }
            d dVar = (d) fVar.f4708l.get(i11);
            return dVar.f4730c.A(rVar, gVar, i10, dVar.f4731d);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        @Override // p4.m0
        public final int p(long j10) {
            f fVar = f.this;
            int i10 = this.f4734h;
            if (fVar.f4720x) {
                return -3;
            }
            d dVar = (d) fVar.f4708l.get(i10);
            int iR = dVar.f4730c.r(j10, dVar.f4731d);
            dVar.f4730c.F(iR);
            return iR;
        }
    }

    public f(l5.b bVar, com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a interfaceC0082a, Uri uri, b bVar2, String str, SocketFactory socketFactory, boolean z10) {
        this.f4704h = bVar;
        this.f4711o = interfaceC0082a;
        this.f4710n = bVar2;
        a aVar = new a();
        this.f4706j = aVar;
        this.f4707k = new com.google.android.exoplayer2.source.rtsp.d(aVar, aVar, str, uri, socketFactory, z10);
        this.f4708l = new ArrayList();
        this.f4709m = new ArrayList();
        this.f4717u = -9223372036854775807L;
        this.f4716t = -9223372036854775807L;
        this.f4718v = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    public static void b(f fVar) {
        if (fVar.f4721y || fVar.f4722z) {
            return;
        }
        for (int i10 = 0; i10 < fVar.f4708l.size(); i10++) {
            if (((d) fVar.f4708l.get(i10)).f4730c.s() == null) {
                return;
            }
        }
        fVar.f4722z = true;
        u6.v vVarS = u6.v.s(fVar.f4708l);
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i11 = 0;
        int i12 = 0;
        while (i11 < vVarS.size()) {
            l0 l0Var = ((d) vVarS.get(i11)).f4730c;
            String string = Integer.toString(i11);
            s0 s0VarS = l0Var.s();
            Objects.requireNonNull(s0VarS);
            t0 t0Var = new t0(string, s0VarS);
            int i13 = i12 + 1;
            if (objArrCopyOf.length < i13) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i13));
            }
            objArrCopyOf[i12] = t0Var;
            i11++;
            i12 = i13;
        }
        fVar.f4713q = (p0) u6.v.q(objArrCopyOf, i12);
        v.a aVar = fVar.f4712p;
        Objects.requireNonNull(aVar);
        aVar.i(fVar);
    }

    @Override // p4.v, p4.n0
    public final boolean a() {
        return !this.f4719w;
    }

    @Override // p4.v, p4.n0
    public final long c() {
        return e();
    }

    @Override // p4.v
    public final long d(long j10, w1 w1Var) {
        return j10;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    @Override // p4.v, p4.n0
    public final long e() {
        if (this.f4719w || this.f4708l.isEmpty()) {
            return Long.MIN_VALUE;
        }
        long j10 = this.f4716t;
        if (j10 != -9223372036854775807L) {
            return j10;
        }
        long jMin = Long.MAX_VALUE;
        boolean z10 = true;
        for (int i10 = 0; i10 < this.f4708l.size(); i10++) {
            d dVar = (d) this.f4708l.get(i10);
            if (!dVar.f4731d) {
                jMin = Math.min(jMin, dVar.f4730c.o());
                z10 = false;
            }
        }
        if (z10 || jMin == Long.MIN_VALUE) {
            return 0L;
        }
        return jMin;
    }

    @Override // p4.v, p4.n0
    public final boolean f(long j10) {
        return !this.f4719w;
    }

    @Override // p4.v, p4.n0
    public final void g(long j10) {
    }

    public final boolean h() {
        return this.f4717u != -9223372036854775807L;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$c>] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$c>] */
    public final void i() {
        boolean z10 = true;
        for (int i10 = 0; i10 < this.f4709m.size(); i10++) {
            z10 &= ((c) this.f4709m.get(i10)).f4726c != null;
        }
        if (z10 && this.A) {
            com.google.android.exoplayer2.source.rtsp.d dVar = this.f4707k;
            dVar.f4680m.addAll(this.f4709m);
            dVar.f0();
        }
    }

    @Override // p4.v
    public final long l() {
        if (!this.f4720x) {
            return -9223372036854775807L;
        }
        this.f4720x = false;
        return 0L;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$c>] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$c>] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$c>] */
    @Override // p4.v
    public final long n(j5.l[] lVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < lVarArr.length; i10++) {
            if (m0VarArr[i10] != null && (lVarArr[i10] == null || !zArr[i10])) {
                m0VarArr[i10] = null;
            }
        }
        this.f4709m.clear();
        for (int i11 = 0; i11 < lVarArr.length; i11++) {
            j5.l lVar = lVarArr[i11];
            if (lVar != null) {
                t0 t0VarL = lVar.l();
                u6.v<t0> vVar = this.f4713q;
                Objects.requireNonNull(vVar);
                int iIndexOf = vVar.indexOf(t0VarL);
                ?? r10 = this.f4709m;
                d dVar = (d) this.f4708l.get(iIndexOf);
                Objects.requireNonNull(dVar);
                r10.add(dVar.f4728a);
                if (this.f4713q.contains(t0VarL) && m0VarArr[i11] == null) {
                    m0VarArr[i11] = new e(iIndexOf);
                    zArr2[i11] = true;
                }
            }
        }
        for (int i12 = 0; i12 < this.f4708l.size(); i12++) {
            d dVar2 = (d) this.f4708l.get(i12);
            if (!this.f4709m.contains(dVar2.f4728a)) {
                dVar2.a();
            }
        }
        this.A = true;
        i();
        return j10;
    }

    @Override // p4.v
    public final u0 o() {
        m5.a.e(this.f4722z);
        u6.v<t0> vVar = this.f4713q;
        Objects.requireNonNull(vVar);
        return new u0((t0[]) vVar.toArray(new t0[0]));
    }

    @Override // p4.v
    public final void q() throws IOException {
        IOException iOException = this.f4714r;
        if (iOException != null) {
            throw iOException;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    @Override // p4.v
    public final void s(long j10, boolean z10) {
        if (h()) {
            return;
        }
        for (int i10 = 0; i10 < this.f4708l.size(); i10++) {
            d dVar = (d) this.f4708l.get(i10);
            if (!dVar.f4731d) {
                dVar.f4730c.i(j10, z10, true);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    @Override // p4.v
    public final long t(long j10) {
        boolean z10;
        if (e() == 0 && !this.C) {
            this.f4718v = j10;
            return j10;
        }
        s(j10, false);
        this.f4716t = j10;
        if (h()) {
            com.google.android.exoplayer2.source.rtsp.d dVar = this.f4707k;
            int i10 = dVar.f4689v;
            if (i10 == 1) {
                return j10;
            }
            if (i10 != 2) {
                throw new IllegalStateException();
            }
            this.f4717u = j10;
            dVar.h0(j10);
            return j10;
        }
        int i11 = 0;
        while (true) {
            if (i11 >= this.f4708l.size()) {
                z10 = true;
                break;
            }
            if (!((d) this.f4708l.get(i11)).f4730c.D(j10, false)) {
                z10 = false;
                break;
            }
            i11++;
        }
        if (z10) {
            return j10;
        }
        this.f4717u = j10;
        this.f4707k.h0(j10);
        for (int i12 = 0; i12 < this.f4708l.size(); i12++) {
            d dVar2 = (d) this.f4708l.get(i12);
            if (!dVar2.f4731d) {
                w4.b bVar = dVar2.f4728a.f4725b.f4667g;
                Objects.requireNonNull(bVar);
                synchronized (bVar.f17143e) {
                    bVar.f17149k = true;
                }
                dVar2.f4730c.C(false);
                dVar2.f4730c.f13111t = j10;
            }
        }
        return j10;
    }

    @Override // p4.v
    public final void u(v.a aVar, long j10) {
        this.f4712p = aVar;
        try {
            com.google.android.exoplayer2.source.rtsp.d dVar = this.f4707k;
            Objects.requireNonNull(dVar);
            try {
                dVar.f4684q.x(dVar.g0(dVar.f4683p));
                com.google.android.exoplayer2.source.rtsp.d.c cVar = dVar.f4682o;
                cVar.c(cVar.a(4, dVar.f4686s, q0.f15971n, dVar.f4683p));
            } catch (IOException e10) {
                g0.g(dVar.f4684q);
                throw e10;
            }
        } catch (IOException e11) {
            this.f4714r = e11;
            g0.g(this.f4707k);
        }
    }
}
