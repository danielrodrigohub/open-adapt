package p4;

import android.content.Context;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import n3.y0;

/* JADX INFO: compiled from: DefaultMediaSourceFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f13125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public l5.j.a f13126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l5.c0 f13127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f13128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f13129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f13130f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f13131g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f13132h;

    /* JADX INFO: compiled from: DefaultMediaSourceFactory.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s3.l f13133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<Integer, t6.o<x.a>> f13134b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Set<Integer> f13135c = new HashSet();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Map<Integer, x.a> f13136d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public l5.j.a f13137e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public r3.m f13138f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public l5.c0 f13139g;

        public a(s3.l lVar) {
            this.f13133a = lVar;
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0073  */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<java.lang.Integer, t6.o<p4.x$a>>] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.util.HashMap, java.util.Map<java.lang.Integer, t6.o<p4.x$a>>] */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<java.lang.Integer, t6.o<p4.x$a>>] */
        public final t6.o<x.a> a(int i10) {
            t6.o<x.a> oVar;
            if (this.f13134b.containsKey(Integer.valueOf(i10))) {
                return (t6.o) this.f13134b.get(Integer.valueOf(i10));
            }
            t6.o<x.a> oVar2 = null;
            final l5.j.a aVar = this.f13137e;
            Objects.requireNonNull(aVar);
            try {
                if (i10 == 0) {
                    final Class clsAsSubclass = DashMediaSource.Factory.class.asSubclass(x.a.class);
                    oVar = new t6.o() { // from class: p4.j
                        @Override // t6.o
                        public final Object get() {
                            return n.d(clsAsSubclass, aVar);
                        }
                    };
                } else {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            final Class clsAsSubclass2 = HlsMediaSource.Factory.class.asSubclass(x.a.class);
                            oVar = new t6.o() { // from class: p4.l
                                @Override // t6.o
                                public final Object get() {
                                    return n.d(clsAsSubclass2, aVar);
                                }
                            };
                        } else if (i10 == 3) {
                            final Class clsAsSubclass3 = RtspMediaSource.Factory.class.asSubclass(x.a.class);
                            oVar2 = new t6.o() { // from class: p4.i
                                @Override // t6.o
                                public final Object get() {
                                    try {
                                        return (x.a) clsAsSubclass3.getConstructor(new Class[0]).newInstance(new Object[0]);
                                    } catch (Exception e10) {
                                        throw new IllegalStateException(e10);
                                    }
                                }
                            };
                        } else if (i10 == 4) {
                            oVar2 = new t6.o() { // from class: p4.m
                                @Override // t6.o
                                public final Object get() {
                                    return new j0.b(aVar, this.f13123h.f13133a);
                                }
                            };
                        }
                        this.f13134b.put(Integer.valueOf(i10), oVar2);
                        if (oVar2 != null) {
                            this.f13135c.add(Integer.valueOf(i10));
                        }
                        return oVar2;
                    }
                    final Class clsAsSubclass4 = SsMediaSource.Factory.class.asSubclass(x.a.class);
                    oVar = new t6.o() { // from class: p4.k
                        @Override // t6.o
                        public final Object get() {
                            return n.d(clsAsSubclass4, aVar);
                        }
                    };
                }
                oVar2 = oVar;
            } catch (ClassNotFoundException unused) {
            }
            this.f13134b.put(Integer.valueOf(i10), oVar2);
            if (oVar2 != null) {
                this.f13135c.add(Integer.valueOf(i10));
            }
            return oVar2;
        }
    }

    /* JADX INFO: compiled from: DefaultMediaSourceFactory.java */
    public static final class b implements s3.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n3.s0 f13140a;

        public b(n3.s0 s0Var) {
            this.f13140a = s0Var;
        }

        @Override // s3.h
        public final void a() {
        }

        @Override // s3.h
        public final void b(long j10, long j11) {
        }

        @Override // s3.h
        public final int e(s3.i iVar, s3.t tVar) throws IOException {
            return iVar.d(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override // s3.h
        public final void g(s3.j jVar) {
            s3.w wVarP = jVar.p(0, 3);
            jVar.j(new s3.u.b(-9223372036854775807L));
            jVar.b();
            n3.s0.a aVarB = this.f13140a.b();
            aVarB.f11705k = "text/x-unknown";
            aVarB.f11702h = this.f13140a.f11687s;
            wVarP.b(aVarB.a());
        }

        @Override // s3.h
        public final boolean j(s3.i iVar) {
            return true;
        }
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.HashMap, java.util.Map<java.lang.Integer, p4.x$a>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashMap, java.util.Map<java.lang.Integer, t6.o<p4.x$a>>] */
    public n(Context context, s3.l lVar) {
        l5.q.a aVar = new l5.q.a(context);
        this.f13126b = aVar;
        a aVar2 = new a(lVar);
        this.f13125a = aVar2;
        if (aVar != aVar2.f13137e) {
            aVar2.f13137e = aVar;
            aVar2.f13134b.clear();
            aVar2.f13136d.clear();
        }
        this.f13128d = -9223372036854775807L;
        this.f13129e = -9223372036854775807L;
        this.f13130f = -9223372036854775807L;
        this.f13131g = -3.4028235E38f;
        this.f13132h = -3.4028235E38f;
    }

    public static x.a d(Class cls, l5.j.a aVar) {
        try {
            return (x.a) cls.getConstructor(l5.j.a.class).newInstance(aVar);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<java.lang.Integer, p4.x$a>] */
    @Override // p4.x.a
    public final x.a a(r3.m mVar) {
        a aVar = this.f13125a;
        m5.a.d(mVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        aVar.f13138f = mVar;
        Iterator it = aVar.f13136d.values().iterator();
        while (it.hasNext()) {
            ((x.a) it.next()).a(mVar);
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap, java.util.Map<java.lang.Integer, p4.x$a>] */
    @Override // p4.x.a
    public final x.a b(l5.c0 c0Var) {
        m5.a.d(c0Var, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f13127c = c0Var;
        a aVar = this.f13125a;
        aVar.f13139g = c0Var;
        Iterator it = aVar.f13136d.values().iterator();
        while (it.hasNext()) {
            ((x.a) it.next()).b(c0Var);
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.HashMap, java.util.Map<java.lang.Integer, p4.x$a>] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashMap, java.util.Map<java.lang.Integer, p4.x$a>] */
    @Override // p4.x.a
    public final x c(y0 y0Var) {
        Objects.requireNonNull(y0Var.f11748i);
        String scheme = y0Var.f11748i.f11805a.getScheme();
        x.a aVar = null;
        if (scheme != null && scheme.equals("ssai")) {
            throw null;
        }
        y0.h hVar = y0Var.f11748i;
        int iG = m5.g0.G(hVar.f11805a, hVar.f11806b);
        a aVar2 = this.f13125a;
        x.a aVar3 = (x.a) aVar2.f13136d.get(Integer.valueOf(iG));
        if (aVar3 != null) {
            aVar = aVar3;
        } else {
            t6.o<x.a> oVarA = aVar2.a(iG);
            if (oVarA != null) {
                aVar = oVarA.get();
                r3.m mVar = aVar2.f13138f;
                if (mVar != null) {
                    aVar.a(mVar);
                }
                l5.c0 c0Var = aVar2.f13139g;
                if (c0Var != null) {
                    aVar.b(c0Var);
                }
                aVar2.f13136d.put(Integer.valueOf(iG), aVar);
            }
        }
        m5.a.g(aVar, "No suitable media source factory found for content type: " + iG);
        y0.f.a aVar4 = new y0.f.a(y0Var.f11749j);
        y0.f fVar = y0Var.f11749j;
        if (fVar.f11795h == -9223372036854775807L) {
            aVar4.f11800a = this.f13128d;
        }
        if (fVar.f11798k == -3.4028235E38f) {
            aVar4.f11803d = this.f13131g;
        }
        if (fVar.f11799l == -3.4028235E38f) {
            aVar4.f11804e = this.f13132h;
        }
        if (fVar.f11796i == -9223372036854775807L) {
            aVar4.f11801b = this.f13129e;
        }
        if (fVar.f11797j == -9223372036854775807L) {
            aVar4.f11802c = this.f13130f;
        }
        y0.f fVar2 = new y0.f(aVar4);
        if (!fVar2.equals(y0Var.f11749j)) {
            y0.b bVarB = y0Var.b();
            bVarB.f11763k = new y0.f.a(fVar2);
            y0Var = bVarB.a();
        }
        x xVarC = aVar.c(y0Var);
        u6.v<y0.k> vVar = y0Var.f11748i.f11810f;
        if (!vVar.isEmpty()) {
            x[] xVarArr = new x[vVar.size() + 1];
            int i10 = 0;
            xVarArr[0] = xVarC;
            while (i10 < vVar.size()) {
                l5.j.a aVar5 = this.f13126b;
                Objects.requireNonNull(aVar5);
                l5.c0 uVar = new l5.u();
                l5.c0 c0Var2 = this.f13127c;
                if (c0Var2 != null) {
                    uVar = c0Var2;
                }
                int i11 = i10 + 1;
                xVarArr[i11] = new r0(vVar.get(i10), aVar5, uVar, true);
                i10 = i11;
            }
            xVarC = new g0(xVarArr);
        }
        x eVar = xVarC;
        y0.d dVar = y0Var.f11751l;
        long j10 = dVar.f11766h;
        if (j10 != 0 || dVar.f11767i != Long.MIN_VALUE || dVar.f11769k) {
            long jL = m5.g0.L(j10);
            long jL2 = m5.g0.L(y0Var.f11751l.f11767i);
            y0.d dVar2 = y0Var.f11751l;
            eVar = new e(eVar, jL, jL2, !dVar2.f11770l, dVar2.f11768j, dVar2.f11769k);
        }
        Objects.requireNonNull(y0Var.f11748i);
        Objects.requireNonNull(y0Var.f11748i);
        return eVar;
    }
}
