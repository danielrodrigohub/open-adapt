package com.google.android.exoplayer2.source.dash;

import android.os.Handler;
import android.os.Message;
import java.io.IOException;
import java.util.TreeMap;
import l5.h;
import m5.g0;
import n3.i1;
import n3.s0;
import p4.k0;
import p4.l0;
import s3.w;
import y0.r;

/* JADX INFO: compiled from: PlayerEmsgHandler.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Handler.Callback {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l5.b f4609h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b f4610i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public t4.c f4614m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4615n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4616o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4617p;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TreeMap<Long, Long> f4613l = new TreeMap<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Handler f4612k = g0.l(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h4.b f4611j = new h4.b();

    /* JADX INFO: compiled from: PlayerEmsgHandler.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f4618a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f4619b;

        public a(long j10, long j11) {
            this.f4618a = j10;
            this.f4619b = j11;
        }
    }

    /* JADX INFO: compiled from: PlayerEmsgHandler.java */
    public interface b {
    }

    /* JADX INFO: compiled from: PlayerEmsgHandler.java */
    public final class c implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l0 f4620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r f4621b = new r(2);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f4.d f4622c = new f4.d();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f4623d = -9223372036854775807L;

        public c(l5.b bVar) {
            this.f4620a = l0.g(bVar);
        }

        @Override // s3.w
        public final void a(m5.w wVar, int i10) {
            this.f4620a.f(wVar, i10);
        }

        @Override // s3.w
        public final void b(s0 s0Var) {
            this.f4620a.b(s0Var);
        }

        @Override // s3.w
        public final void c(long j10, int i10, int i11, int i12, w.a aVar) {
            long jH;
            f4.d dVar;
            long jO;
            this.f4620a.c(j10, i10, i11, i12, aVar);
            while (true) {
                boolean z10 = false;
                if (!this.f4620a.u(false)) {
                    break;
                }
                this.f4622c.o();
                if (this.f4620a.A(this.f4621b, this.f4622c, 0, false) == -4) {
                    this.f4622c.s();
                    dVar = this.f4622c;
                } else {
                    dVar = null;
                }
                if (dVar != null) {
                    long j11 = dVar.f13583l;
                    f4.a aVarC = d.this.f4611j.c(dVar);
                    if (aVarC != null) {
                        h4.a aVar2 = (h4.a) aVarC.f7052h[0];
                        String str = aVar2.f8175h;
                        String str2 = aVar2.f8176i;
                        if ("urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2))) {
                            z10 = true;
                        }
                        if (z10) {
                            try {
                                jO = g0.O(g0.n(aVar2.f8179l));
                            } catch (i1 unused) {
                                jO = -9223372036854775807L;
                            }
                            if (jO != -9223372036854775807L) {
                                a aVar3 = new a(j11, jO);
                                Handler handler = d.this.f4612k;
                                handler.sendMessage(handler.obtainMessage(1, aVar3));
                            }
                        }
                    }
                }
            }
            l0 l0Var = this.f4620a;
            k0 k0Var = l0Var.f13092a;
            synchronized (l0Var) {
                int i13 = l0Var.f13110s;
                jH = i13 == 0 ? -1L : l0Var.h(i13);
            }
            k0Var.b(jH);
        }

        @Override // s3.w
        public final int e(h hVar, int i10, boolean z10) throws IOException {
            return this.f4620a.d(hVar, i10, z10);
        }
    }

    public d(t4.c cVar, b bVar, l5.b bVar2) {
        this.f4614m = cVar;
        this.f4610i = bVar;
        this.f4609h = bVar2;
    }

    public final void a() {
        if (this.f4615n) {
            this.f4616o = true;
            this.f4615n = false;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            dashMediaSource.K.removeCallbacks(dashMediaSource.D);
            dashMediaSource.G();
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (this.f4617p) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        long j10 = aVar.f4618a;
        long j11 = aVar.f4619b;
        Long l10 = this.f4613l.get(Long.valueOf(j11));
        if (l10 == null || l10.longValue() > j10) {
            this.f4613l.put(Long.valueOf(j11), Long.valueOf(j10));
        }
        return true;
    }
}
