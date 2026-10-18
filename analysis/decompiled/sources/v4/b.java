package v4;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.newrelic.agent.android.AgentConfiguration;
import g0.n;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import l5.c0;
import l5.d0;
import l5.f0;
import l5.i0;
import l5.z;
import m5.g0;
import n3.i1;
import n3.s0;
import p4.e0;
import p4.r;
import u6.q0;

/* JADX INFO: compiled from: DefaultHlsPlaylistTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements j, d0.a<f0<g>> {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final y0.h f16233v = y0.h.f18226i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final u4.h f16234h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final i f16235i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c0 f16236j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public e0.a f16239m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public d0 f16240n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Handler f16241o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public j.d f16242p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public f f16243q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Uri f16244r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public e f16245s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f16246t;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArrayList<j.a> f16238l = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap<Uri, C0290b> f16237k = new HashMap<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f16247u = -9223372036854775807L;

    /* JADX INFO: compiled from: DefaultHlsPlaylistTracker.java */
    public class a implements j.a {
        public a() {
        }

        @Override // v4.j.a
        public final boolean b(Uri uri, c0.c cVar, boolean z10) {
            C0290b c0290b;
            if (b.this.f16245s == null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                f fVar = b.this.f16243q;
                int i10 = g0.f10384a;
                List<f.b> list = fVar.f16306e;
                int i11 = 0;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    C0290b c0290b2 = b.this.f16237k.get(list.get(i12).f16318a);
                    if (c0290b2 != null && jElapsedRealtime < c0290b2.f16256o) {
                        i11++;
                    }
                }
                c0.b bVarA = b.this.f16236j.a(new c0.a(1, 0, b.this.f16243q.f16306e.size(), i11), cVar);
                if (bVarA != null && bVarA.f9981a == 2 && (c0290b = b.this.f16237k.get(uri)) != null) {
                    C0290b.a(c0290b, bVarA.f9982b);
                }
            }
            return false;
        }

        @Override // v4.j.a
        public final void h() {
            b.this.f16238l.remove(this);
        }
    }

    /* JADX INFO: renamed from: v4.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultHlsPlaylistTracker.java */
    public final class C0290b implements d0.a<f0<g>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Uri f16249h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final d0 f16250i = new d0("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final l5.j f16251j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public e f16252k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f16253l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public long f16254m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f16255n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public long f16256o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f16257p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public IOException f16258q;

        public C0290b(Uri uri) {
            this.f16249h = uri;
            this.f16251j = b.this.f16234h.a();
        }

        public static boolean a(C0290b c0290b, long j10) {
            boolean z10;
            c0290b.f16256o = SystemClock.elapsedRealtime() + j10;
            if (c0290b.f16249h.equals(b.this.f16244r)) {
                b bVar = b.this;
                List<f.b> list = bVar.f16243q.f16306e;
                int size = list.size();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int i10 = 0;
                while (true) {
                    if (i10 >= size) {
                        z10 = false;
                        break;
                    }
                    C0290b c0290b2 = bVar.f16237k.get(list.get(i10).f16318a);
                    Objects.requireNonNull(c0290b2);
                    if (jElapsedRealtime > c0290b2.f16256o) {
                        Uri uri = c0290b2.f16249h;
                        bVar.f16244r = uri;
                        c0290b2.d(bVar.r(uri));
                        z10 = true;
                        break;
                    }
                    i10++;
                }
                if (!z10) {
                    return true;
                }
            }
            return false;
        }

        public final void b() {
            d(this.f16249h);
        }

        public final void c(Uri uri) {
            b bVar = b.this;
            f0 f0Var = new f0(this.f16251j, uri, 4, bVar.f16235i.a(bVar.f16243q, this.f16252k));
            b.this.f16239m.m(new r(f0Var.f10016a, f0Var.f10017b, this.f16250i.g(f0Var, this, b.this.f16236j.c(f0Var.f10018c))), f0Var.f10018c);
        }

        public final void d(Uri uri) {
            this.f16256o = 0L;
            if (this.f16257p || this.f16250i.d() || this.f16250i.c()) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = this.f16255n;
            if (jElapsedRealtime >= j10) {
                c(uri);
            } else {
                this.f16257p = true;
                b.this.f16241o.postDelayed(new p3.h(this, uri, 1), j10 - jElapsedRealtime);
            }
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0053  */
        public final void e(e eVar, r rVar) {
            boolean z10;
            long j10;
            long j11;
            long j12;
            int i10;
            e.c cVarQ;
            e eVar2;
            boolean z11;
            IOException cVar;
            long j13;
            Uri uriBuild;
            int size;
            int size2;
            int size3;
            e eVar3 = this.f16252k;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f16253l = jElapsedRealtime;
            b bVar = b.this;
            y0.h hVar = b.f16233v;
            Objects.requireNonNull(bVar);
            Objects.requireNonNull(eVar);
            if (eVar3 != null) {
                long j14 = eVar.f16269k;
                long j15 = eVar3.f16269k;
                if (j14 <= j15 && (j14 < j15 || ((size = eVar.f16276r.size() - eVar3.f16276r.size()) == 0 ? !((size2 = eVar.f16277s.size()) > (size3 = eVar3.f16277s.size()) || (size2 == size3 && eVar.f16273o && !eVar3.f16273o)) : size <= 0))) {
                    z10 = false;
                } else {
                    z10 = true;
                }
            } else {
                z10 = true;
            }
            if (z10) {
                if (eVar.f16274p) {
                    j10 = eVar.f16266h;
                } else {
                    e eVar4 = bVar.f16245s;
                    j10 = eVar4 != null ? eVar4.f16266h : 0L;
                    if (eVar3 != null) {
                        int size4 = eVar3.f16276r.size();
                        e.c cVarQ2 = b.q(eVar3, eVar);
                        if (cVarQ2 != null) {
                            j11 = eVar3.f16266h;
                            j12 = cVarQ2.f16292l;
                        } else if (size4 == eVar.f16269k - eVar3.f16269k) {
                            j11 = eVar3.f16266h;
                            j12 = eVar3.f16279u;
                        }
                        j10 = j11 + j12;
                    }
                }
                long j16 = j10;
                if (eVar.f16267i) {
                    i10 = eVar.f16268j;
                } else {
                    e eVar5 = bVar.f16245s;
                    i10 = eVar5 != null ? eVar5.f16268j : 0;
                    if (eVar3 != null && (cVarQ = b.q(eVar3, eVar)) != null) {
                        i10 = (eVar3.f16268j + cVarQ.f16291k) - eVar.f16276r.get(0).f16291k;
                    }
                }
                eVar2 = new e(eVar.f16262d, eVar.f16324a, eVar.f16325b, eVar.f16263e, eVar.f16265g, j16, true, i10, eVar.f16269k, eVar.f16270l, eVar.f16271m, eVar.f16272n, eVar.f16326c, eVar.f16273o, eVar.f16274p, eVar.f16275q, eVar.f16276r, eVar.f16277s, eVar.f16280v, eVar.f16278t);
            } else {
                eVar2 = (!eVar.f16273o || eVar3.f16273o) ? eVar3 : new e(eVar3.f16262d, eVar3.f16324a, eVar3.f16325b, eVar3.f16263e, eVar3.f16265g, eVar3.f16266h, eVar3.f16267i, eVar3.f16268j, eVar3.f16269k, eVar3.f16270l, eVar3.f16271m, eVar3.f16272n, eVar3.f16326c, true, eVar3.f16274p, eVar3.f16275q, eVar3.f16276r, eVar3.f16277s, eVar3.f16280v, eVar3.f16278t);
            }
            this.f16252k = eVar2;
            if (eVar2 != eVar3) {
                this.f16258q = null;
                this.f16254m = jElapsedRealtime;
                b bVar2 = b.this;
                if (this.f16249h.equals(bVar2.f16244r)) {
                    if (bVar2.f16245s == null) {
                        bVar2.f16246t = !eVar2.f16273o;
                        bVar2.f16247u = eVar2.f16266h;
                    }
                    bVar2.f16245s = eVar2;
                    ((HlsMediaSource) bVar2.f16242p).z(eVar2);
                }
                Iterator<j.a> it = bVar2.f16238l.iterator();
                while (it.hasNext()) {
                    it.next().h();
                }
            } else if (!eVar2.f16273o) {
                long size5 = eVar.f16269k + ((long) eVar.f16276r.size());
                e eVar6 = this.f16252k;
                if (size5 < eVar6.f16269k) {
                    cVar = new j.b();
                    z11 = true;
                } else {
                    double d10 = jElapsedRealtime - this.f16254m;
                    double dX = g0.X(eVar6.f16271m);
                    Objects.requireNonNull(b.this);
                    z11 = false;
                    cVar = d10 > dX * 3.5d ? new j.c() : null;
                }
                if (cVar != null) {
                    this.f16258q = cVar;
                    b.p(b.this, this.f16249h, new c0.c(cVar, 1), z11);
                }
            }
            e eVar7 = this.f16252k;
            if (eVar7.f16280v.f16303e) {
                j13 = 0;
            } else {
                j13 = eVar7 != eVar3 ? eVar7.f16271m : eVar7.f16271m / 2;
            }
            this.f16255n = g0.X(j13) + jElapsedRealtime;
            if (this.f16252k.f16272n != -9223372036854775807L || this.f16249h.equals(b.this.f16244r)) {
                e eVar8 = this.f16252k;
                if (eVar8.f16273o) {
                    return;
                }
                e.C0291e c0291e = eVar8.f16280v;
                if (c0291e.f16299a != -9223372036854775807L || c0291e.f16303e) {
                    Uri.Builder builderBuildUpon = this.f16249h.buildUpon();
                    e eVar9 = this.f16252k;
                    if (eVar9.f16280v.f16303e) {
                        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(eVar9.f16269k + ((long) eVar9.f16276r.size())));
                        e eVar10 = this.f16252k;
                        if (eVar10.f16272n != -9223372036854775807L) {
                            List<e.a> list = eVar10.f16277s;
                            int size6 = list.size();
                            if (!list.isEmpty() && ((e.a) n.b(list)).f16282t) {
                                size6--;
                            }
                            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(size6));
                        }
                    }
                    e.C0291e c0291e2 = this.f16252k.f16280v;
                    if (c0291e2.f16299a != -9223372036854775807L) {
                        builderBuildUpon.appendQueryParameter("_HLS_skip", c0291e2.f16300b ? "v2" : "YES");
                    }
                    uriBuild = builderBuildUpon.build();
                } else {
                    uriBuild = this.f16249h;
                }
                d(uriBuild);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l5.d0.a
        public final void h(d0.d dVar, long j10, long j11) {
            f0 f0Var = (f0) dVar;
            g gVar = (g) f0Var.f10021f;
            i0 i0Var = f0Var.f10019d;
            Uri uri = i0Var.f10053c;
            r rVar = new r(i0Var.f10054d);
            if (gVar instanceof e) {
                e((e) gVar, rVar);
                b.this.f16239m.g(rVar, 4);
            } else {
                i1 i1VarB = i1.b("Loaded playlist has unexpected type.", null);
                this.f16258q = i1VarB;
                b.this.f16239m.k(rVar, 4, i1VarB, true);
            }
            b.this.f16236j.d();
        }

        @Override // l5.d0.a
        public final void k(d0.d dVar, long j10, long j11, boolean z10) {
            f0 f0Var = (f0) dVar;
            long j12 = f0Var.f10016a;
            i0 i0Var = f0Var.f10019d;
            Uri uri = i0Var.f10053c;
            r rVar = new r(i0Var.f10054d);
            b.this.f16236j.d();
            b.this.f16239m.d(rVar, 4);
        }

        @Override // l5.d0.a
        public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
            d0.b bVar;
            f0 f0Var = (f0) dVar;
            long j12 = f0Var.f10016a;
            i0 i0Var = f0Var.f10019d;
            Uri uri = i0Var.f10053c;
            r rVar = new r(i0Var.f10054d);
            boolean z10 = iOException instanceof h.a;
            if ((uri.getQueryParameter("_HLS_msn") != null) || z10) {
                int i11 = iOException instanceof z ? ((z) iOException).f10153k : Integer.MAX_VALUE;
                if (z10 || i11 == 400 || i11 == 503) {
                    this.f16255n = SystemClock.elapsedRealtime();
                    b();
                    e0.a aVar = b.this.f16239m;
                    int i12 = g0.f10384a;
                    aVar.k(rVar, f0Var.f10018c, iOException, true);
                    return d0.f9990e;
                }
            }
            c0.c cVar = new c0.c(iOException, i10);
            if (b.p(b.this, this.f16249h, cVar, false)) {
                long jB = b.this.f16236j.b(cVar);
                bVar = jB != -9223372036854775807L ? new d0.b(0, jB) : d0.f9991f;
            } else {
                bVar = d0.f9990e;
            }
            boolean zA = true ^ bVar.a();
            b.this.f16239m.k(rVar, f0Var.f10018c, iOException, zA);
            if (!zA) {
                return bVar;
            }
            b.this.f16236j.d();
            return bVar;
        }
    }

    public b(u4.h hVar, c0 c0Var, i iVar) {
        this.f16234h = hVar;
        this.f16235i = iVar;
        this.f16236j = c0Var;
    }

    public static boolean p(b bVar, Uri uri, c0.c cVar, boolean z10) {
        Iterator<j.a> it = bVar.f16238l.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            z11 |= !it.next().b(uri, cVar, z10);
        }
        return z11;
    }

    public static e.c q(e eVar, e eVar2) {
        int i10 = (int) (eVar2.f16269k - eVar.f16269k);
        List<e.c> list = eVar.f16276r;
        if (i10 < list.size()) {
            return list.get(i10);
        }
        return null;
    }

    @Override // v4.j
    public final boolean a() {
        return this.f16246t;
    }

    @Override // v4.j
    public final f b() {
        return this.f16243q;
    }

    @Override // v4.j
    public final boolean c(Uri uri, long j10) {
        C0290b c0290b = this.f16237k.get(uri);
        if (c0290b != null) {
            return !C0290b.a(c0290b, j10);
        }
        return false;
    }

    @Override // v4.j
    public final void d(j.a aVar) {
        this.f16238l.remove(aVar);
    }

    @Override // v4.j
    public final boolean e(Uri uri) {
        int i10;
        C0290b c0290b = this.f16237k.get(uri);
        if (c0290b.f16252k == null) {
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jMax = Math.max(30000L, g0.X(c0290b.f16252k.f16279u));
        e eVar = c0290b.f16252k;
        return eVar.f16273o || (i10 = eVar.f16262d) == 2 || i10 == 1 || c0290b.f16253l + jMax > jElapsedRealtime;
    }

    @Override // v4.j
    public final void f() throws IOException {
        d0 d0Var = this.f16240n;
        if (d0Var != null) {
            d0Var.b();
        }
        Uri uri = this.f16244r;
        if (uri != null) {
            C0290b c0290b = this.f16237k.get(uri);
            c0290b.f16250i.b();
            IOException iOException = c0290b.f16258q;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    @Override // v4.j
    public final void g(Uri uri) throws IOException {
        C0290b c0290b = this.f16237k.get(uri);
        c0290b.f16250i.b();
        IOException iOException = c0290b.f16258q;
        if (iOException != null) {
            throw iOException;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // l5.d0.a
    public final void h(d0.d dVar, long j10, long j11) {
        f fVar;
        f0 f0Var = (f0) dVar;
        g gVar = (g) f0Var.f10021f;
        boolean z10 = gVar instanceof e;
        if (z10) {
            String str = gVar.f16324a;
            f fVar2 = f.f16304n;
            Uri uri = Uri.parse(str);
            s0.a aVar = new s0.a();
            aVar.f11695a = AgentConfiguration.DEFAULT_DEVICE_UUID;
            aVar.f11704j = "application/x-mpegURL";
            fVar = new f("", Collections.emptyList(), Collections.singletonList(new f.b(uri, new s0(aVar), null, null, null, null)), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
        } else {
            fVar = (f) gVar;
        }
        this.f16243q = fVar;
        this.f16244r = fVar.f16306e.get(0).f16318a;
        this.f16238l.add(new a());
        List<Uri> list = fVar.f16305d;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Uri uri2 = list.get(i10);
            this.f16237k.put(uri2, new C0290b(uri2));
        }
        i0 i0Var = f0Var.f10019d;
        Uri uri3 = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        C0290b c0290b = this.f16237k.get(this.f16244r);
        if (z10) {
            c0290b.e((e) gVar, rVar);
        } else {
            c0290b.b();
        }
        this.f16236j.d();
        this.f16239m.g(rVar, 4);
    }

    @Override // v4.j
    public final void i(Uri uri) {
        this.f16237k.get(uri).b();
    }

    @Override // v4.j
    public final e j(Uri uri, boolean z10) {
        e eVar;
        e eVar2 = this.f16237k.get(uri).f16252k;
        if (eVar2 != null && z10 && !uri.equals(this.f16244r)) {
            List<f.b> list = this.f16243q.f16306e;
            boolean z11 = false;
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (uri.equals(list.get(i10).f16318a)) {
                    z11 = true;
                    break;
                }
            }
            if (z11 && ((eVar = this.f16245s) == null || !eVar.f16273o)) {
                this.f16244r = uri;
                C0290b c0290b = this.f16237k.get(uri);
                e eVar3 = c0290b.f16252k;
                if (eVar3 == null || !eVar3.f16273o) {
                    c0290b.d(r(uri));
                } else {
                    this.f16245s = eVar3;
                    ((HlsMediaSource) this.f16242p).z(eVar3);
                }
            }
        }
        return eVar2;
    }

    @Override // l5.d0.a
    public final void k(d0.d dVar, long j10, long j11, boolean z10) {
        f0 f0Var = (f0) dVar;
        long j12 = f0Var.f10016a;
        i0 i0Var = f0Var.f10019d;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f16236j.d();
        this.f16239m.d(rVar, 4);
    }

    @Override // v4.j
    public final void l(Uri uri, e0.a aVar, j.d dVar) {
        this.f16241o = g0.l(null);
        this.f16239m = aVar;
        this.f16242p = dVar;
        f0 f0Var = new f0(this.f16234h.a(), uri, 4, this.f16235i.b());
        m5.a.e(this.f16240n == null);
        d0 d0Var = new d0("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.f16240n = d0Var;
        aVar.m(new r(f0Var.f10016a, f0Var.f10017b, d0Var.g(f0Var, this, this.f16236j.c(f0Var.f10018c))), f0Var.f10018c);
    }

    @Override // l5.d0.a
    public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
        f0 f0Var = (f0) dVar;
        long j12 = f0Var.f10016a;
        i0 i0Var = f0Var.f10019d;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        long jB = this.f16236j.b(new c0.c(iOException, i10));
        boolean z10 = jB == -9223372036854775807L;
        this.f16239m.k(rVar, f0Var.f10018c, iOException, z10);
        if (z10) {
            this.f16236j.d();
        }
        return z10 ? d0.f9991f : new d0.b(0, jB);
    }

    @Override // v4.j
    public final void n(j.a aVar) {
        Objects.requireNonNull(aVar);
        this.f16238l.add(aVar);
    }

    @Override // v4.j
    public final long o() {
        return this.f16247u;
    }

    public final Uri r(Uri uri) {
        e.b bVar;
        e eVar = this.f16245s;
        if (eVar == null || !eVar.f16280v.f16303e || (bVar = (e.b) ((q0) eVar.f16278t).get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(bVar.f16284b));
        int i10 = bVar.f16285c;
        if (i10 != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i10));
        }
        return builderBuildUpon.build();
    }

    @Override // v4.j
    public final void stop() {
        this.f16244r = null;
        this.f16245s = null;
        this.f16243q = null;
        this.f16247u = -9223372036854775807L;
        this.f16240n.f(null);
        this.f16240n = null;
        Iterator<C0290b> it = this.f16237k.values().iterator();
        while (it.hasNext()) {
            it.next().f16250i.f(null);
        }
        this.f16241o.removeCallbacksAndMessages(null);
        this.f16241o = null;
        this.f16237k.clear();
    }
}
