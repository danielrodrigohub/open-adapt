package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import java.io.IOException;
import java.util.Objects;
import javax.net.SocketFactory;
import l5.c0;
import l5.j0;
import m5.g0;
import n3.b2;
import n3.p0;
import n3.y0;
import p4.p;
import p4.v;
import p4.x;
import r3.m;

/* JADX INFO: loaded from: classes.dex */
public final class RtspMediaSource extends p4.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final y0 f4647o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a f4648p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f4649q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Uri f4650r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final SocketFactory f4651s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f4652t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f4653u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f4654v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4655w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f4656x;

    public static final class Factory implements x.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f4657a = 8000;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f4658b = "ExoPlayerLib/2.18.1";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SocketFactory f4659c = SocketFactory.getDefault();

        @Override // p4.x.a
        public final x.a a(m mVar) {
            return this;
        }

        @Override // p4.x.a
        public final x.a b(c0 c0Var) {
            return this;
        }

        @Override // p4.x.a
        public final x c(y0 y0Var) {
            Objects.requireNonNull(y0Var.f11748i);
            return new RtspMediaSource(y0Var, new l(this.f4657a), this.f4658b, this.f4659c);
        }
    }

    public class a implements f.b {
        public a() {
        }
    }

    public class b extends p {
        public b(b2 b2Var) {
            super(b2Var);
        }

        @Override // p4.p, n3.b2
        public final b2.b i(int i10, b2.b bVar, boolean z10) {
            super.i(i10, bVar, z10);
            bVar.f11300m = true;
            return bVar;
        }

        @Override // p4.p, n3.b2
        public final b2.d q(int i10, b2.d dVar, long j10) {
            super.q(i10, dVar, j10);
            dVar.f11319s = true;
            return dVar;
        }
    }

    public static final class c extends IOException {
        public c(String str) {
            super(str);
        }

        public c(Throwable th) {
            super(th);
        }

        public c(String str, Throwable th) {
            super(str, th);
        }
    }

    static {
        p0.a("goog.exo.rtsp");
    }

    public RtspMediaSource(y0 y0Var, com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a interfaceC0082a, String str, SocketFactory socketFactory) {
        this.f4647o = y0Var;
        this.f4648p = interfaceC0082a;
        this.f4649q = str;
        y0.h hVar = y0Var.f11748i;
        Objects.requireNonNull(hVar);
        this.f4650r = hVar.f11805a;
        this.f4651s = socketFactory;
        this.f4652t = false;
        this.f4653u = -9223372036854775807L;
        this.f4656x = true;
    }

    @Override // p4.x
    public final y0 a() {
        return this.f4647o;
    }

    @Override // p4.x
    public final void b() {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
    @Override // p4.x
    public final void d(v vVar) {
        f fVar = (f) vVar;
        for (int i10 = 0; i10 < fVar.f4708l.size(); i10++) {
            f.d dVar = (f.d) fVar.f4708l.get(i10);
            if (!dVar.f4732e) {
                dVar.f4729b.f(null);
                dVar.f4730c.B();
                dVar.f4732e = true;
            }
        }
        g0.g(fVar.f4707k);
        fVar.f4721y = true;
    }

    @Override // p4.x
    public final v q(x.b bVar, l5.b bVar2, long j10) {
        return new f(bVar2, this.f4648p, this.f4650r, new a(), this.f4649q, this.f4651s, this.f4652t);
    }

    @Override // p4.a
    public final void v(j0 j0Var) {
        y();
    }

    @Override // p4.a
    public final void x() {
    }

    public final void y() {
        b2 p0Var = new p4.p0(this.f4653u, this.f4654v, this.f4655w, this.f4647o);
        if (this.f4656x) {
            p0Var = new b(p0Var);
        }
        w(p0Var);
    }
}
