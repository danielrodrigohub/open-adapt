package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.google.android.exoplayer2.source.rtsp.f.d;
import com.newrelic.agent.android.util.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;
import javax.net.SocketFactory;
import m5.g0;
import m5.p;
import n3.i1;
import u6.p0;
import u6.q0;
import u6.t;
import u6.v;
import u6.w;
import u6.y0;
import w4.m;
import w4.n;

/* JADX INFO: compiled from: RtspClient.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f4675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InterfaceC0083d f4676i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f4677j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SocketFactory f4678k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f4679l;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Uri f4683p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public h.a f4685r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f4686s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public a f4687t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.google.android.exoplayer2.source.rtsp.c f4688u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4690w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f4691x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f4692y;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayDeque<f.c> f4680m = new ArrayDeque<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final SparseArray<w4.k> f4681n = new SparseArray<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final c f4682o = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public g f4684q = new g(new b());

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f4693z = -9223372036854775807L;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4689v = -1;

    /* JADX INFO: compiled from: RtspClient.java */
    public final class a implements Runnable, Closeable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Handler f4694h = g0.l(null);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f4695i;

        public a() {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f4695i = false;
            this.f4694h.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public final void run() {
            d dVar = d.this;
            c cVar = dVar.f4682o;
            cVar.c(cVar.a(4, dVar.f4686s, q0.f15971n, dVar.f4683p));
            this.f4694h.postDelayed(this, 30000L);
        }
    }

    /* JADX INFO: compiled from: RtspClient.java */
    public final class b implements g.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f4697a = g0.l(null);

        public b() {
        }

        /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        /* JADX WARN: Type inference failed for: r7v0, types: [u6.p0, u6.v<w4.a>] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final void a(q.e eVar) {
            w4.l lVarA = w4.l.f17191c;
            String str = ((n) eVar.f13477b).f17198a.get("range");
            if (str != null) {
                try {
                    lVarA = w4.l.a(str);
                } catch (i1 e10) {
                    ((f.a) d.this.f4675h).a("SDP format error.", e10);
                    return;
                }
            }
            n nVar = (n) eVar.f13477b;
            Uri uri = d.this.f4683p;
            u6.h.b(4, "initialCapacity");
            Object[] objArrCopyOf = new Object[4];
            int i10 = 0;
            int i11 = 0;
            while (true) {
                ?? r10 = nVar.f17199b;
                boolean z10 = true;
                if (i10 < r10.f15969k) {
                    w4.a aVar = (w4.a) r10.get(i10);
                    String strU = androidx.activity.k.u(aVar.f17125j.f17136b);
                    Objects.requireNonNull(strU);
                    switch (strU) {
                        case "MPEG4-GENERIC":
                        case "L8":
                        case "AC3":
                        case "AMR":
                        case "L16":
                        case "VP8":
                        case "VP9":
                        case "H264":
                        case "H265":
                        case "OPUS":
                        case "PCMA":
                        case "PCMU":
                        case "AMR-WB":
                        case "MP4V-ES":
                        case "H263-1998":
                        case "H263-2000":
                            break;
                        default:
                            z10 = false;
                            break;
                    }
                    if (z10) {
                        w4.g gVar = new w4.g(aVar, uri);
                        int i12 = i11 + 1;
                        if (objArrCopyOf.length < i12) {
                            objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i12));
                        }
                        objArrCopyOf[i11] = gVar;
                        i11 = i12;
                    }
                    i10++;
                } else {
                    v vVarQ = v.q(objArrCopyOf, i11);
                    if (vVarQ.isEmpty()) {
                        ((f.a) d.this.f4675h).a("No playable track.", null);
                        return;
                    }
                    f.a aVar2 = (f.a) d.this.f4675h;
                    Objects.requireNonNull(aVar2);
                    int i13 = 0;
                    while (true) {
                        p0 p0Var = (p0) vVarQ;
                        if (i13 >= p0Var.f15969k) {
                            RtspMediaSource.a aVar3 = (RtspMediaSource.a) f.this.f4710n;
                            RtspMediaSource.this.f4653u = g0.L(lVarA.f17194b - lVarA.f17193a);
                            RtspMediaSource rtspMediaSource = RtspMediaSource.this;
                            long j10 = lVarA.f17194b;
                            rtspMediaSource.f4654v = !(j10 == -9223372036854775807L);
                            rtspMediaSource.f4655w = j10 == -9223372036854775807L;
                            rtspMediaSource.f4656x = false;
                            rtspMediaSource.y();
                            d.this.f4690w = true;
                            return;
                        }
                        w4.g gVar2 = (w4.g) p0Var.get(i13);
                        f fVar = f.this;
                        f.d dVar = fVar.new d(gVar2, i13, fVar.f4711o);
                        f.this.f4708l.add(dVar);
                        dVar.f4729b.g(dVar.f4728a.f4725b, fVar.f4706j, 0);
                        i13++;
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r11v0, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        /* JADX WARN: Type inference failed for: r11v10, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        /* JADX WARN: Type inference failed for: r11v6, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$d>] */
        /* JADX WARN: Type inference failed for: r9v13, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$c>] */
        /* JADX WARN: Type inference failed for: r9v2, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.source.rtsp.f$c>] */
        public final void b(w4.j jVar) {
            com.google.android.exoplayer2.source.rtsp.b bVar;
            m5.a.e(d.this.f4689v == 1);
            d dVar = d.this;
            dVar.f4689v = 2;
            if (dVar.f4687t == null) {
                dVar.f4687t = dVar.new a();
                a aVar = d.this.f4687t;
                if (!aVar.f4695i) {
                    aVar.f4695i = true;
                    aVar.f4694h.postDelayed(aVar, 30000L);
                }
            }
            d dVar2 = d.this;
            dVar2.f4693z = -9223372036854775807L;
            InterfaceC0083d interfaceC0083d = dVar2.f4676i;
            long jL = g0.L(jVar.f17185a.f17193a);
            v<m> vVar = jVar.f17186b;
            f.a aVar2 = (f.a) interfaceC0083d;
            Objects.requireNonNull(aVar2);
            ArrayList arrayList = new ArrayList(vVar.size());
            for (int i10 = 0; i10 < vVar.size(); i10++) {
                String path = vVar.get(i10).f17197c.getPath();
                Objects.requireNonNull(path);
                arrayList.add(path);
            }
            for (int i11 = 0; i11 < f.this.f4709m.size(); i11++) {
                if (!arrayList.contains(((f.c) f.this.f4709m.get(i11)).a().getPath())) {
                    RtspMediaSource rtspMediaSource = RtspMediaSource.this;
                    rtspMediaSource.f4654v = false;
                    rtspMediaSource.y();
                    if (f.this.h()) {
                        f fVar = f.this;
                        fVar.f4720x = true;
                        fVar.f4717u = -9223372036854775807L;
                        fVar.f4716t = -9223372036854775807L;
                        fVar.f4718v = -9223372036854775807L;
                    }
                }
            }
            for (int i12 = 0; i12 < vVar.size(); i12++) {
                m mVar = vVar.get(i12);
                f fVar2 = f.this;
                Uri uri = mVar.f17197c;
                int i13 = 0;
                while (true) {
                    if (i13 >= fVar2.f4708l.size()) {
                        bVar = null;
                        break;
                    }
                    if (!((f.d) fVar2.f4708l.get(i13)).f4731d) {
                        f.c cVar = ((f.d) fVar2.f4708l.get(i13)).f4728a;
                        if (cVar.a().equals(uri)) {
                            bVar = cVar.f4725b;
                            break;
                        }
                    }
                    i13++;
                }
                if (bVar != null) {
                    long j10 = mVar.f17195a;
                    if (j10 != -9223372036854775807L) {
                        w4.b bVar2 = bVar.f4667g;
                        Objects.requireNonNull(bVar2);
                        if (!bVar2.f17146h) {
                            bVar.f4667g.f17147i = j10;
                        }
                    }
                    int i14 = mVar.f17196b;
                    w4.b bVar3 = bVar.f4667g;
                    Objects.requireNonNull(bVar3);
                    if (!bVar3.f17146h) {
                        bVar.f4667g.f17148j = i14;
                    }
                    if (f.this.h()) {
                        f fVar3 = f.this;
                        if (fVar3.f4717u == fVar3.f4716t) {
                            long j11 = mVar.f17195a;
                            bVar.f4669i = jL;
                            bVar.f4670j = j11;
                        }
                    }
                }
            }
            if (!f.this.h()) {
                f fVar4 = f.this;
                long j12 = fVar4.f4718v;
                if (j12 != -9223372036854775807L) {
                    fVar4.t(j12);
                    f.this.f4718v = -9223372036854775807L;
                    return;
                }
                return;
            }
            f fVar5 = f.this;
            long j13 = fVar5.f4717u;
            long j14 = fVar5.f4716t;
            if (j13 == j14) {
                fVar5.f4717u = -9223372036854775807L;
                fVar5.f4716t = -9223372036854775807L;
            } else {
                fVar5.f4717u = -9223372036854775807L;
                fVar5.t(j14);
            }
        }
    }

    /* JADX INFO: compiled from: RtspClient.java */
    public final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f4699a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public w4.k f4700b;

        public c() {
        }

        public final w4.k a(int i10, String str, Map<String, String> map, Uri uri) {
            String str2 = d.this.f4677j;
            int i11 = this.f4699a;
            this.f4699a = i11 + 1;
            com.google.android.exoplayer2.source.rtsp.e.a aVar = new com.google.android.exoplayer2.source.rtsp.e.a(str2, str, i11);
            d dVar = d.this;
            if (dVar.f4688u != null) {
                m5.a.f(dVar.f4685r);
                try {
                    d dVar2 = d.this;
                    aVar.a("Authorization", dVar2.f4688u.a(dVar2.f4685r, uri, i10));
                } catch (i1 e10) {
                    d.x(d.this, new RtspMediaSource.c(e10));
                }
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                aVar.a(entry.getKey(), entry.getValue());
            }
            return new w4.k(uri, i10, aVar.c(), "");
        }

        public final void b() {
            m5.a.f(this.f4700b);
            w<String, String> wVar = this.f4700b.f17189c.f4702a;
            HashMap map = new HashMap();
            for (String str : wVar.f()) {
                if (!str.equals("CSeq") && !str.equals(Constants.Network.USER_AGENT_HEADER) && !str.equals("Session") && !str.equals("Authorization")) {
                    map.put(str, (String) g0.n.b(wVar.g(str)));
                }
            }
            w4.k kVar = this.f4700b;
            c(a(kVar.f17188b, d.this.f4686s, map, kVar.f17187a));
        }

        public final void c(w4.k kVar) {
            String strB = kVar.f17189c.b("CSeq");
            Objects.requireNonNull(strB);
            int i10 = Integer.parseInt(strB);
            m5.a.e(d.this.f4681n.get(i10) == null);
            d.this.f4681n.append(i10, kVar);
            Pattern pattern = h.f4755a;
            m5.a.a(kVar.f17189c.b("CSeq") != null);
            v.a aVar = new v.a();
            aVar.c(g0.m("%s %s %s", h.i(kVar.f17188b), kVar.f17187a, "RTSP/1.0"));
            w<String, String> wVar = kVar.f17189c.f4702a;
            y0<String> it = wVar.f().iterator();
            while (it.hasNext()) {
                String next = it.next();
                v<String> vVarG = wVar.g(next);
                for (int i11 = 0; i11 < vVarG.size(); i11++) {
                    aVar.c(g0.m("%s: %s", next, vVarG.get(i11)));
                }
            }
            aVar.c("");
            aVar.c(kVar.f17190d);
            v vVarE = aVar.e();
            d.Y(d.this, vVarE);
            d.this.f4684q.Y(vVarE);
            this.f4700b = kVar;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.rtsp.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RtspClient.java */
    public interface InterfaceC0083d {
    }

    /* JADX INFO: compiled from: RtspClient.java */
    public interface e {
    }

    public d(e eVar, InterfaceC0083d interfaceC0083d, String str, Uri uri, SocketFactory socketFactory, boolean z10) {
        this.f4675h = eVar;
        this.f4676i = interfaceC0083d;
        this.f4677j = str;
        this.f4678k = socketFactory;
        this.f4679l = z10;
        this.f4683p = h.h(uri);
        this.f4685r = h.f(uri);
    }

    public static void Y(d dVar, List list) {
        if (dVar.f4679l) {
            p.b("RtspClient", new t6.e("\n").b(list));
        }
    }

    public static void x(d dVar, Throwable th) {
        Objects.requireNonNull(dVar);
        RtspMediaSource.c cVar = (RtspMediaSource.c) th;
        if (dVar.f4690w) {
            f.this.f4715s = cVar;
            return;
        }
        ((f.a) dVar.f4675h).a(t6.n.b(th.getMessage()), th);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        a aVar = this.f4687t;
        if (aVar != null) {
            aVar.close();
            this.f4687t = null;
            c cVar = this.f4682o;
            Uri uri = this.f4683p;
            String str = this.f4686s;
            Objects.requireNonNull(str);
            d dVar = d.this;
            int i10 = dVar.f4689v;
            if (i10 != -1 && i10 != 0) {
                dVar.f4689v = 0;
                cVar.c(cVar.a(12, str, q0.f15971n, uri));
            }
        }
        this.f4684q.close();
    }

    public final void f0() {
        f.c cVarPollFirst = this.f4680m.pollFirst();
        if (cVarPollFirst == null) {
            f.this.f4707k.i0(0L);
            return;
        }
        c cVar = this.f4682o;
        Uri uriA = cVarPollFirst.a();
        m5.a.f(cVarPollFirst.f4726c);
        String str = cVarPollFirst.f4726c;
        String str2 = this.f4686s;
        d.this.f4689v = 0;
        u6.h.a("Transport", str);
        cVar.c(cVar.a(10, str2, q0.j(1, new Object[]{"Transport", str}), uriA));
    }

    public final Socket g0(Uri uri) throws IOException {
        m5.a.a(uri.getHost() != null);
        int port = uri.getPort() > 0 ? uri.getPort() : 554;
        SocketFactory socketFactory = this.f4678k;
        String host = uri.getHost();
        Objects.requireNonNull(host);
        return socketFactory.createSocket(host, port);
    }

    public final void h0(long j10) {
        if (this.f4689v == 2 && !this.f4692y) {
            c cVar = this.f4682o;
            Uri uri = this.f4683p;
            String str = this.f4686s;
            Objects.requireNonNull(str);
            m5.a.e(d.this.f4689v == 2);
            cVar.c(cVar.a(5, str, q0.f15971n, uri));
            d.this.f4692y = true;
        }
        this.f4693z = j10;
    }

    public final void i0(long j10) {
        c cVar = this.f4682o;
        Uri uri = this.f4683p;
        String str = this.f4686s;
        Objects.requireNonNull(str);
        int i10 = d.this.f4689v;
        m5.a.e(i10 == 1 || i10 == 2);
        w4.l lVar = w4.l.f17191c;
        String strM = g0.m("npt=%.3f-", Double.valueOf(j10 / 1000.0d));
        u6.h.a("Range", strM);
        cVar.c(cVar.a(6, str, q0.j(1, new Object[]{"Range", strM}), uri));
    }
}
