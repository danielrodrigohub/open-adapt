package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.newrelic.agent.android.payload.PayloadController;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import l5.c0;
import l5.d0;
import l5.e0;
import l5.f0;
import l5.i0;
import l5.j;
import l5.j0;
import l5.u;
import m5.g0;
import n3.p0;
import n3.y0;
import o3.v0;
import p4.h;
import p4.r;
import p4.v;
import p4.x;
import r3.l;
import r3.m;
import y0.t;

/* JADX INFO: loaded from: classes.dex */
public final class SsMediaSource extends p4.a implements d0.a<f0<y4.a>> {
    public static final /* synthetic */ int I = 0;
    public final ArrayList<c> A;
    public j B;
    public d0 C;
    public e0 D;
    public j0 E;
    public long F;
    public y4.a G;
    public Handler H;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f4773o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Uri f4774p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final y0.h f4775q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final y0 f4776r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final j.a f4777s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final b.a f4778t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final h f4779u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final l f4780v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final c0 f4781w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final long f4782x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final p4.e0.a f4783y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final f0.a<? extends y4.a> f4784z;

    public static final class Factory implements x.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b.a f4785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final j.a f4786b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public m f4788d = new r3.c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c0 f4789e = new u();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f4790f = 30000;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public h f4787c = new h();

        public Factory(j.a aVar) {
            this.f4785a = new a.C0084a(aVar);
            this.f4786b = aVar;
        }

        @Override // p4.x.a
        public final x.a a(m mVar) {
            m5.a.d(mVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            this.f4788d = mVar;
            return this;
        }

        @Override // p4.x.a
        public final x.a b(c0 c0Var) {
            m5.a.d(c0Var, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            this.f4789e = c0Var;
            return this;
        }

        @Override // p4.x.a
        public final x c(y0 y0Var) {
            Objects.requireNonNull(y0Var.f11748i);
            y4.b bVar = new y4.b();
            List<o4.c> list = y0Var.f11748i.f11808d;
            return new SsMediaSource(y0Var, this.f4786b, !list.isEmpty() ? new o4.b(bVar, list) : bVar, this.f4785a, this.f4787c, this.f4788d.a(y0Var), this.f4789e, this.f4790f);
        }
    }

    static {
        p0.a("goog.exo.smoothstreaming");
    }

    public SsMediaSource(y0 y0Var, j.a aVar, f0.a aVar2, b.a aVar3, h hVar, l lVar, c0 c0Var, long j10) {
        Uri uriWithAppendedPath;
        this.f4776r = y0Var;
        y0.h hVar2 = y0Var.f11748i;
        Objects.requireNonNull(hVar2);
        this.f4775q = hVar2;
        this.G = null;
        if (hVar2.f11805a.equals(Uri.EMPTY)) {
            uriWithAppendedPath = null;
        } else {
            uriWithAppendedPath = hVar2.f11805a;
            int i10 = g0.f10384a;
            String path = uriWithAppendedPath.getPath();
            if (path != null) {
                Matcher matcher = g0.f10392i.matcher(path);
                if (matcher.matches() && matcher.group(1) == null) {
                    uriWithAppendedPath = Uri.withAppendedPath(uriWithAppendedPath, "Manifest");
                }
            }
        }
        this.f4774p = uriWithAppendedPath;
        this.f4777s = aVar;
        this.f4784z = aVar2;
        this.f4778t = aVar3;
        this.f4779u = hVar;
        this.f4780v = lVar;
        this.f4781w = c0Var;
        this.f4782x = j10;
        this.f4783y = s(null);
        this.f4773o = false;
        this.A = new ArrayList<>();
    }

    @Override // p4.x
    public final y0 a() {
        return this.f4776r;
    }

    @Override // p4.x
    public final void b() throws IOException {
        this.D.b();
    }

    @Override // p4.x
    public final void d(v vVar) {
        c cVar = (c) vVar;
        for (r4.h<b> hVar : cVar.f4813t) {
            hVar.A(null);
        }
        cVar.f4811r = null;
        this.A.remove(vVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // l5.d0.a
    public final void h(d0.d dVar, long j10, long j11) {
        f0 f0Var = (f0) dVar;
        long j12 = f0Var.f10016a;
        i0 i0Var = f0Var.f10019d;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f4781w.d();
        this.f4783y.g(rVar, f0Var.f10018c);
        this.G = (y4.a) f0Var.f10021f;
        this.F = j10 - j11;
        y();
        if (this.G.f18594d) {
            this.H.postDelayed(new t(this, 2), Math.max(0L, (this.F + PayloadController.PAYLOAD_COLLECTOR_TIMEOUT) - SystemClock.elapsedRealtime()));
        }
    }

    @Override // l5.d0.a
    public final void k(d0.d dVar, long j10, long j11, boolean z10) {
        f0 f0Var = (f0) dVar;
        long j12 = f0Var.f10016a;
        i0 i0Var = f0Var.f10019d;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f4781w.d();
        this.f4783y.d(rVar, f0Var.f10018c);
    }

    @Override // l5.d0.a
    public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
        f0 f0Var = (f0) dVar;
        long j12 = f0Var.f10016a;
        i0 i0Var = f0Var.f10019d;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        long jB = this.f4781w.b(new c0.c(iOException, i10));
        d0.b bVar = jB == -9223372036854775807L ? d0.f9991f : new d0.b(0, jB);
        boolean z10 = !bVar.a();
        this.f4783y.k(rVar, f0Var.f10018c, iOException, z10);
        if (z10) {
            this.f4781w.d();
        }
        return bVar;
    }

    @Override // p4.x
    public final v q(x.b bVar, l5.b bVar2, long j10) {
        p4.e0.a aVarS = s(bVar);
        c cVar = new c(this.G, this.f4778t, this.E, this.f4779u, this.f4780v, r(bVar), this.f4781w, aVarS, this.D, bVar2);
        this.A.add(cVar);
        return cVar;
    }

    @Override // p4.a
    public final void v(j0 j0Var) {
        this.E = j0Var;
        this.f4780v.b();
        l lVar = this.f4780v;
        Looper looperMyLooper = Looper.myLooper();
        v0 v0Var = this.f12922n;
        m5.a.f(v0Var);
        lVar.f(looperMyLooper, v0Var);
        if (this.f4773o) {
            this.D = new e0.a();
            y();
            return;
        }
        this.B = this.f4777s.a();
        d0 d0Var = new d0("SsMediaSource");
        this.C = d0Var;
        this.D = d0Var;
        this.H = g0.l(null);
        z();
    }

    @Override // p4.a
    public final void x() {
        this.G = this.f4773o ? this.G : null;
        this.B = null;
        this.F = 0L;
        d0 d0Var = this.C;
        if (d0Var != null) {
            d0Var.f(null);
            this.C = null;
        }
        Handler handler = this.H;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.H = null;
        }
        this.f4780v.a();
    }

    public final void y() {
        p4.p0 p0Var;
        for (int i10 = 0; i10 < this.A.size(); i10++) {
            c cVar = this.A.get(i10);
            y4.a aVar = this.G;
            cVar.f4812s = aVar;
            for (r4.h<b> hVar : cVar.f4813t) {
                ((b) hVar.f14573l).e(aVar);
            }
            cVar.f4811r.j(cVar);
        }
        long jMax = Long.MIN_VALUE;
        long jMax2 = Long.MAX_VALUE;
        for (y4.a.b bVar : this.G.f18596f) {
            if (bVar.f18612k > 0) {
                jMax2 = Math.min(jMax2, bVar.f18616o[0]);
                int i11 = bVar.f18612k - 1;
                jMax = Math.max(jMax, bVar.b(i11) + bVar.f18616o[i11]);
            }
        }
        if (jMax2 == Long.MAX_VALUE) {
            long j10 = this.G.f18594d ? -9223372036854775807L : 0L;
            y4.a aVar2 = this.G;
            boolean z10 = aVar2.f18594d;
            p0Var = new p4.p0(j10, 0L, 0L, 0L, true, z10, z10, aVar2, this.f4776r);
        } else {
            y4.a aVar3 = this.G;
            if (aVar3.f18594d) {
                long j11 = aVar3.f18598h;
                if (j11 != -9223372036854775807L && j11 > 0) {
                    jMax2 = Math.max(jMax2, jMax - j11);
                }
                long j12 = jMax2;
                long j13 = jMax - j12;
                long jL = j13 - g0.L(this.f4782x);
                if (jL < 5000000) {
                    jL = Math.min(5000000L, j13 / 2);
                }
                p0Var = new p4.p0(-9223372036854775807L, j13, j12, jL, true, true, true, this.G, this.f4776r);
            } else {
                long j14 = aVar3.f18597g;
                long j15 = j14 != -9223372036854775807L ? j14 : jMax - jMax2;
                p0Var = new p4.p0(jMax2 + j15, j15, jMax2, 0L, true, false, false, this.G, this.f4776r);
            }
        }
        w(p0Var);
    }

    public final void z() {
        if (this.C.c()) {
            return;
        }
        f0 f0Var = new f0(this.B, this.f4774p, 4, this.f4784z);
        this.f4783y.m(new r(f0Var.f10016a, f0Var.f10017b, this.C.g(f0Var, this, this.f4781w.c(f0Var.f10018c))), f0Var.f10018c);
    }
}
