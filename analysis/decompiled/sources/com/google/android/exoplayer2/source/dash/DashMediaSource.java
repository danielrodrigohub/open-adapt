package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.appcompat.widget.k1;
import com.newrelic.agent.android.crash.CrashSender;
import com.newrelic.agent.android.payload.PayloadController;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import l5.c0;
import l5.d0;
import l5.e0;
import l5.f0;
import l5.i0;
import l5.j;
import l5.j0;
import l5.u;
import m5.g0;
import m5.p;
import m5.y;
import n3.b2;
import n3.i1;
import n3.p0;
import n3.y0;
import o3.v0;
import p4.r;
import p4.v;
import p4.x;
import r3.k;
import r3.l;
import r3.m;

/* JADX INFO: loaded from: classes.dex */
public final class DashMediaSource extends p4.a {
    public static final /* synthetic */ int W = 0;
    public final Object A;
    public final SparseArray<com.google.android.exoplayer2.source.dash.b> B;
    public final androidx.activity.g C;
    public final k1 D;
    public final c E;
    public final e0 F;
    public j G;
    public d0 H;
    public j0 I;
    public s4.c J;
    public Handler K;
    public y0.f L;
    public Uri M;
    public Uri N;
    public t4.c O;
    public boolean P;
    public long Q;
    public long R;
    public long S;
    public int T;
    public long U;
    public int V;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final y0 f4525o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f4526p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final j.a f4527q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.dash.a.InterfaceC0080a f4528r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final p4.h f4529s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final l f4530t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final c0 f4531u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final s4.b f4532v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final long f4533w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final p4.e0.a f4534x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final f0.a<? extends t4.c> f4535y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final e f4536z;

    public static final class Factory implements x.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.google.android.exoplayer2.source.dash.a.InterfaceC0080a f4537a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final j.a f4538b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public m f4539c = new r3.c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c0 f4541e = new u();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f4542f = 30000;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public p4.h f4540d = new p4.h();

        public Factory(j.a aVar) {
            this.f4537a = new com.google.android.exoplayer2.source.dash.c.a(aVar);
            this.f4538b = aVar;
        }

        @Override // p4.x.a
        public final x.a a(m mVar) {
            m5.a.d(mVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            this.f4539c = mVar;
            return this;
        }

        @Override // p4.x.a
        public final x.a b(c0 c0Var) {
            m5.a.d(c0Var, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            this.f4541e = c0Var;
            return this;
        }

        @Override // p4.x.a
        public final x c(y0 y0Var) {
            Objects.requireNonNull(y0Var.f11748i);
            t4.d dVar = new t4.d();
            List<o4.c> list = y0Var.f11748i.f11808d;
            return new DashMediaSource(y0Var, this.f4538b, !list.isEmpty() ? new o4.b(dVar, list) : dVar, this.f4537a, this.f4540d, this.f4539c.a(y0Var), this.f4541e, this.f4542f);
        }
    }

    public class a implements y.a {
        public a() {
        }

        public final void a() {
            long j10;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            synchronized (y.f10483b) {
                j10 = y.f10484c ? y.f10485d : -9223372036854775807L;
            }
            dashMediaSource.C(j10);
        }
    }

    public static final class b extends b2 {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f4544i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f4545j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final long f4546k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f4547l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final long f4548m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f4549n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final long f4550o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final t4.c f4551p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final y0 f4552q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final y0.f f4553r;

        public b(long j10, long j11, long j12, int i10, long j13, long j14, long j15, t4.c cVar, y0 y0Var, y0.f fVar) {
            m5.a.e(cVar.f15445d == (fVar != null));
            this.f4544i = j10;
            this.f4545j = j11;
            this.f4546k = j12;
            this.f4547l = i10;
            this.f4548m = j13;
            this.f4549n = j14;
            this.f4550o = j15;
            this.f4551p = cVar;
            this.f4552q = y0Var;
            this.f4553r = fVar;
        }

        public static boolean u(t4.c cVar) {
            return cVar.f15445d && cVar.f15446e != -9223372036854775807L && cVar.f15443b == -9223372036854775807L;
        }

        @Override // n3.b2
        public final int d(Object obj) {
            int iIntValue;
            if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue() - this.f4547l) >= 0 && iIntValue < k()) {
                return iIntValue;
            }
            return -1;
        }

        @Override // n3.b2
        public final b2.b i(int i10, b2.b bVar, boolean z10) {
            m5.a.c(i10, k());
            bVar.k(z10 ? this.f4551p.b(i10).f15476a : null, z10 ? Integer.valueOf(this.f4547l + i10) : null, this.f4551p.e(i10), g0.L(this.f4551p.b(i10).f15477b - this.f4551p.b(0).f15477b) - this.f4548m);
            return bVar;
        }

        @Override // n3.b2
        public final int k() {
            return this.f4551p.c();
        }

        @Override // n3.b2
        public final Object o(int i10) {
            m5.a.c(i10, k());
            return Integer.valueOf(this.f4547l + i10);
        }

        /* JADX WARN: Code duplicated, block: B:10:0x002b A[PHI: r1
          0x002b: PHI (r1v2 long) = (r1v1 long), (r1v4 long) binds: [B:6:0x001b, B:8:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:18:0x005d  */
        /* JADX WARN: Code duplicated, block: B:21:0x006a A[LOOP:1: B:17:0x005b->B:21:0x006a, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:35:0x006d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:36:0x006e A[EDGE_INSN: B:36:0x006e->B:23:0x006e BREAK  A[LOOP:1: B:17:0x005b->B:21:0x006a], SYNTHETIC] */
        @Override // n3.b2
        public final b2.d q(int i10, b2.d dVar, long j10) {
            long j11;
            long jE;
            int i11;
            t4.g gVarB;
            int size;
            int i12;
            s4.d dVarB;
            m5.a.c(i10, 1);
            long jC = this.f4550o;
            if (u(this.f4551p)) {
                if (j10 > 0) {
                    jC += j10;
                    if (jC > this.f4549n) {
                        jC = -9223372036854775807L;
                    } else {
                        j11 = this.f4548m + jC;
                        jE = this.f4551p.e(0);
                        i11 = 0;
                        while (i11 < this.f4551p.c() - 1 && j11 >= jE) {
                            j11 -= jE;
                            i11++;
                            jE = this.f4551p.e(i11);
                        }
                        gVarB = this.f4551p.b(i11);
                        size = gVarB.f15478c.size();
                        i12 = 0;
                        while (true) {
                            if (i12 < size) {
                                i12 = -1;
                                break;
                            }
                            if (gVarB.f15478c.get(i12).f15433b == 2) {
                                break;
                            }
                            i12++;
                        }
                        if (i12 != -1 && (dVarB = gVarB.f15478c.get(i12).f15434c.get(0).b()) != null && dVarB.k(jE) != 0) {
                            jC = (dVarB.c(dVarB.d(j11, jE)) + jC) - j11;
                        }
                    }
                } else {
                    j11 = this.f4548m + jC;
                    jE = this.f4551p.e(0);
                    i11 = 0;
                    while (i11 < this.f4551p.c() - 1) {
                        j11 -= jE;
                        i11++;
                        jE = this.f4551p.e(i11);
                    }
                    gVarB = this.f4551p.b(i11);
                    size = gVarB.f15478c.size();
                    i12 = 0;
                    while (true) {
                        if (i12 < size) {
                            i12 = -1;
                            break;
                        }
                        if (gVarB.f15478c.get(i12).f15433b == 2) {
                            break;
                            break;
                        }
                        i12++;
                    }
                    if (i12 != -1) {
                        jC = (dVarB.c(dVarB.d(j11, jE)) + jC) - j11;
                    }
                }
            }
            long j12 = jC;
            Object obj = b2.d.f11306y;
            y0 y0Var = this.f4552q;
            t4.c cVar = this.f4551p;
            dVar.f(obj, y0Var, cVar, this.f4544i, this.f4545j, this.f4546k, true, u(cVar), this.f4553r, j12, this.f4549n, 0, k() - 1, this.f4548m);
            return dVar;
        }

        @Override // n3.b2
        public final int r() {
            return 1;
        }
    }

    public final class c implements com.google.android.exoplayer2.source.dash.d.b {
        public c() {
        }
    }

    public static final class d implements f0.a<Long> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Pattern f4555a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        @Override // l5.f0.a
        public final Long a(Uri uri, InputStream inputStream) throws IOException {
            String line = new BufferedReader(new InputStreamReader(inputStream, t6.c.f15538c)).readLine();
            try {
                Matcher matcher = f4555a.matcher(line);
                if (!matcher.matches()) {
                    throw i1.b("Couldn't parse timestamp: " + line, null);
                }
                String strGroup = matcher.group(1);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                long time = simpleDateFormat.parse(strGroup).getTime();
                if (!"Z".equals(matcher.group(2))) {
                    long j10 = "+".equals(matcher.group(4)) ? 1L : -1L;
                    long j11 = Long.parseLong(matcher.group(5));
                    String strGroup2 = matcher.group(7);
                    time -= ((((j11 * 60) + (TextUtils.isEmpty(strGroup2) ? 0L : Long.parseLong(strGroup2))) * 60) * 1000) * j10;
                }
                return Long.valueOf(time);
            } catch (ParseException e10) {
                throw i1.b(null, e10);
            }
        }
    }

    public final class e implements d0.a<f0<t4.c>> {
        public e() {
        }

        /* JADX WARN: Code duplicated, block: B:24:0x0099  */
        /* JADX WARN: Code duplicated, block: B:26:0x00a9  */
        /* JADX WARN: Code duplicated, block: B:27:0x00bf  */
        /* JADX WARN: Code duplicated, block: B:28:0x00c8  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // l5.d0.a
        public final void h(d0.d dVar, long j10, long j11) {
            boolean z10;
            int i10;
            f0 f0Var = (f0) dVar;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            Objects.requireNonNull(dashMediaSource);
            long j12 = f0Var.f10016a;
            i0 i0Var = f0Var.f10019d;
            Uri uri = i0Var.f10053c;
            r rVar = new r(i0Var.f10054d);
            dashMediaSource.f4531u.d();
            dashMediaSource.f4534x.g(rVar, f0Var.f10018c);
            t4.c cVar = (t4.c) f0Var.f10021f;
            t4.c cVar2 = dashMediaSource.O;
            int iC = cVar2 == null ? 0 : cVar2.c();
            long j13 = cVar.b(0).f15477b;
            int i11 = 0;
            while (i11 < iC && dashMediaSource.O.b(i11).f15477b < j13) {
                i11++;
            }
            if (cVar.f15445d) {
                if (iC - i11 > cVar.c()) {
                    p.g("DashMediaSource", "Loaded out of sync manifest");
                } else {
                    long j14 = dashMediaSource.U;
                    if (j14 == -9223372036854775807L || cVar.f15449h * 1000 > j14) {
                        z10 = false;
                    } else {
                        StringBuilder sbC = a0.b.c("Loaded stale dynamic manifest: ");
                        sbC.append(cVar.f15449h);
                        sbC.append(", ");
                        sbC.append(dashMediaSource.U);
                        p.g("DashMediaSource", sbC.toString());
                    }
                    if (z10) {
                        i10 = dashMediaSource.T;
                        dashMediaSource.T = i10 + 1;
                        if (i10 < dashMediaSource.f4531u.c(f0Var.f10018c)) {
                            dashMediaSource.K.postDelayed(dashMediaSource.C, Math.min((dashMediaSource.T - 1) * 1000, CrashSender.CRASH_COLLECTOR_TIMEOUT));
                            return;
                        } else {
                            dashMediaSource.J = new s4.c();
                            return;
                        }
                    }
                    dashMediaSource.T = 0;
                }
                z10 = true;
                if (z10) {
                    i10 = dashMediaSource.T;
                    dashMediaSource.T = i10 + 1;
                    if (i10 < dashMediaSource.f4531u.c(f0Var.f10018c)) {
                        dashMediaSource.K.postDelayed(dashMediaSource.C, Math.min((dashMediaSource.T - 1) * 1000, CrashSender.CRASH_COLLECTOR_TIMEOUT));
                        return;
                    } else {
                        dashMediaSource.J = new s4.c();
                        return;
                    }
                }
                dashMediaSource.T = 0;
            }
            dashMediaSource.O = cVar;
            dashMediaSource.P = cVar.f15445d & dashMediaSource.P;
            dashMediaSource.Q = j10 - j11;
            dashMediaSource.R = j10;
            synchronized (dashMediaSource.A) {
                if (f0Var.f10017b.f10071a == dashMediaSource.M) {
                    Uri uri2 = dashMediaSource.O.f15452k;
                    if (uri2 == null) {
                        uri2 = f0Var.f10019d.f10053c;
                    }
                    dashMediaSource.M = uri2;
                }
            }
            if (iC != 0) {
                dashMediaSource.V += i11;
                dashMediaSource.D(true);
                return;
            }
            t4.c cVar3 = dashMediaSource.O;
            if (!cVar3.f15445d) {
                dashMediaSource.D(true);
                return;
            }
            fe.h hVar = cVar3.f15450i;
            if (hVar == null) {
                dashMediaSource.z();
                return;
            }
            String str = (String) hVar.f7453b;
            if (g0.a(str, "urn:mpeg:dash:utc:direct:2014") || g0.a(str, "urn:mpeg:dash:utc:direct:2012")) {
                try {
                    dashMediaSource.C(g0.O((String) hVar.f7454c) - dashMediaSource.R);
                    return;
                } catch (i1 e10) {
                    dashMediaSource.B(e10);
                    return;
                }
            }
            if (g0.a(str, "urn:mpeg:dash:utc:http-iso:2014") || g0.a(str, "urn:mpeg:dash:utc:http-iso:2012")) {
                dashMediaSource.E(hVar, new d());
                return;
            }
            if (g0.a(str, "urn:mpeg:dash:utc:http-xsdate:2014") || g0.a(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
                dashMediaSource.E(hVar, new h());
            } else if (g0.a(str, "urn:mpeg:dash:utc:ntp:2014") || g0.a(str, "urn:mpeg:dash:utc:ntp:2012")) {
                dashMediaSource.z();
            } else {
                dashMediaSource.B(new IOException("Unsupported UTC timing scheme"));
            }
        }

        @Override // l5.d0.a
        public final void k(d0.d dVar, long j10, long j11, boolean z10) {
            DashMediaSource.this.A((f0) dVar, j10, j11);
        }

        @Override // l5.d0.a
        public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
            f0 f0Var = (f0) dVar;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            Objects.requireNonNull(dashMediaSource);
            long j12 = f0Var.f10016a;
            i0 i0Var = f0Var.f10019d;
            Uri uri = i0Var.f10053c;
            r rVar = new r(i0Var.f10054d);
            long jB = dashMediaSource.f4531u.b(new c0.c(iOException, i10));
            d0.b bVar = jB == -9223372036854775807L ? d0.f9991f : new d0.b(0, jB);
            boolean z10 = !bVar.a();
            dashMediaSource.f4534x.k(rVar, f0Var.f10018c, iOException, z10);
            if (z10) {
                dashMediaSource.f4531u.d();
            }
            return bVar;
        }
    }

    public final class f implements e0 {
        public f() {
        }

        @Override // l5.e0
        public final void b() throws IOException {
            DashMediaSource.this.H.b();
            s4.c cVar = DashMediaSource.this.J;
            if (cVar != null) {
                throw cVar;
            }
        }
    }

    public final class g implements d0.a<f0<Long>> {
        public g() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l5.d0.a
        public final void h(d0.d dVar, long j10, long j11) {
            f0 f0Var = (f0) dVar;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            Objects.requireNonNull(dashMediaSource);
            long j12 = f0Var.f10016a;
            i0 i0Var = f0Var.f10019d;
            Uri uri = i0Var.f10053c;
            r rVar = new r(i0Var.f10054d);
            dashMediaSource.f4531u.d();
            dashMediaSource.f4534x.g(rVar, f0Var.f10018c);
            dashMediaSource.C(((Long) f0Var.f10021f).longValue() - j10);
        }

        @Override // l5.d0.a
        public final void k(d0.d dVar, long j10, long j11, boolean z10) {
            DashMediaSource.this.A((f0) dVar, j10, j11);
        }

        @Override // l5.d0.a
        public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
            f0 f0Var = (f0) dVar;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            p4.e0.a aVar = dashMediaSource.f4534x;
            long j12 = f0Var.f10016a;
            i0 i0Var = f0Var.f10019d;
            Uri uri = i0Var.f10053c;
            aVar.k(new r(i0Var.f10054d), f0Var.f10018c, iOException, true);
            dashMediaSource.f4531u.d();
            dashMediaSource.B(iOException);
            return d0.f9990e;
        }
    }

    public static final class h implements f0.a<Long> {
        @Override // l5.f0.a
        public final Long a(Uri uri, InputStream inputStream) throws IOException {
            return Long.valueOf(g0.O(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    static {
        p0.a("goog.exo.dash");
    }

    public DashMediaSource(y0 y0Var, j.a aVar, f0.a aVar2, com.google.android.exoplayer2.source.dash.a.InterfaceC0080a interfaceC0080a, p4.h hVar, l lVar, c0 c0Var, long j10) {
        this.f4525o = y0Var;
        this.L = y0Var.f11749j;
        y0.h hVar2 = y0Var.f11748i;
        Objects.requireNonNull(hVar2);
        this.M = hVar2.f11805a;
        this.N = y0Var.f11748i.f11805a;
        this.O = null;
        this.f4527q = aVar;
        this.f4535y = aVar2;
        this.f4528r = interfaceC0080a;
        this.f4530t = lVar;
        this.f4531u = c0Var;
        this.f4533w = j10;
        this.f4529s = hVar;
        this.f4532v = new s4.b();
        this.f4526p = false;
        this.f4534x = s(null);
        this.A = new Object();
        this.B = new SparseArray<>();
        this.E = new c();
        this.U = -9223372036854775807L;
        this.S = -9223372036854775807L;
        this.f4536z = new e();
        this.F = new f();
        this.C = new androidx.activity.g(this, 3);
        this.D = new k1(this, 4);
    }

    public static boolean y(t4.g gVar) {
        for (int i10 = 0; i10 < gVar.f15478c.size(); i10++) {
            int i11 = gVar.f15478c.get(i10).f15433b;
            if (i11 == 1 || i11 == 2) {
                return true;
            }
        }
        return false;
    }

    public final void A(f0<?> f0Var, long j10, long j11) {
        long j12 = f0Var.f10016a;
        i0 i0Var = f0Var.f10019d;
        Uri uri = i0Var.f10053c;
        r rVar = new r(i0Var.f10054d);
        this.f4531u.d();
        this.f4534x.d(rVar, f0Var.f10018c);
    }

    public final void B(IOException iOException) {
        p.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        D(true);
    }

    public final void C(long j10) {
        this.S = j10;
        D(true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x0269  */
    /* JADX WARN: Code duplicated, block: B:136:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:139:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:231:0x04b6  */
    /* JADX WARN: Code duplicated, block: B:88:0x020c  */
    public final void D(boolean z10) {
        int i10;
        long j10;
        t4.g gVar;
        boolean z11;
        long j11;
        long j12;
        s4.d dVarB;
        long jMin;
        t4.l lVar;
        boolean z12;
        long j13;
        for (int i11 = 0; i11 < this.B.size(); i11++) {
            int iKeyAt = this.B.keyAt(i11);
            if (iKeyAt >= this.V) {
                com.google.android.exoplayer2.source.dash.b bVarValueAt = this.B.valueAt(i11);
                t4.c cVar = this.O;
                int i12 = iKeyAt - this.V;
                bVarValueAt.C = cVar;
                bVarValueAt.D = i12;
                com.google.android.exoplayer2.source.dash.d dVar = bVarValueAt.f4571t;
                dVar.f4616o = false;
                dVar.f4614m = cVar;
                Iterator<Map.Entry<Long, Long>> it = dVar.f4613l.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getKey().longValue() < dVar.f4614m.f15449h) {
                        it.remove();
                    }
                }
                r4.h<com.google.android.exoplayer2.source.dash.a>[] hVarArr = bVarValueAt.f4577z;
                if (hVarArr != null) {
                    for (r4.h<com.google.android.exoplayer2.source.dash.a> hVar : hVarArr) {
                        ((com.google.android.exoplayer2.source.dash.a) hVar.f14573l).f(cVar, i12);
                    }
                    bVarValueAt.f4576y.j(bVarValueAt);
                }
                bVarValueAt.E = cVar.b(i12).f15479d;
                for (s4.g gVar2 : bVarValueAt.A) {
                    for (t4.f fVar : bVarValueAt.E) {
                        if (fVar.a().equals(gVar2.f15123l.a())) {
                            gVar2.c(fVar, cVar.f15445d && i12 == cVar.c() - 1);
                            break;
                        }
                    }
                }
            }
        }
        t4.g gVarB = this.O.b(0);
        int iC = this.O.c() - 1;
        t4.g gVarB2 = this.O.b(iC);
        long jE = this.O.e(iC);
        long jL = g0.L(g0.x(this.S));
        long jE2 = this.O.e(0);
        long jL2 = g0.L(gVarB.f15477b);
        boolean zY = y(gVarB);
        int i13 = 0;
        long jMax = jL2;
        while (true) {
            i10 = 3;
            j10 = jE;
            if (i13 >= gVarB.f15478c.size()) {
                jL2 = jMax;
                break;
            }
            t4.a aVar = gVarB.f15478c.get(i13);
            List<t4.j> list = aVar.f15434c;
            if ((!zY || aVar.f15433b != 3) && !list.isEmpty()) {
                s4.d dVarB2 = list.get(0).b();
                if (dVarB2 == null || dVarB2.l(jE2, jL) == 0) {
                    break;
                } else {
                    jMax = Math.max(jMax, dVarB2.c(dVarB2.f(jE2, jL)) + jL2);
                }
            }
            i13++;
            gVarB = gVarB;
            jE = j10;
        }
        t4.g gVar3 = gVarB2;
        long jL3 = g0.L(gVar3.f15477b);
        boolean zY2 = y(gVar3);
        long jMin2 = Long.MAX_VALUE;
        int i14 = 0;
        while (true) {
            if (i14 >= gVar3.f15478c.size()) {
                gVar = gVar3;
                jL3 = jMin2;
                break;
            }
            t4.a aVar2 = gVar3.f15478c.get(i14);
            List<t4.j> list2 = aVar2.f15434c;
            if ((!zY2 || aVar2.f15433b != i10) && !list2.isEmpty()) {
                s4.d dVarB3 = list2.get(0).b();
                if (dVarB3 == null) {
                    jL3 += j10;
                    gVar = gVar3;
                } else {
                    gVar = gVar3;
                    j13 = j10;
                    long jL4 = dVarB3.l(j13, jL);
                    if (jL4 != 0) {
                        long jF = (dVarB3.f(j13, jL) + jL4) - 1;
                        jMin2 = Math.min(jMin2, dVarB3.e(jF, j13) + dVarB3.c(jF) + jL3);
                    }
                }
                break;
            }
            gVar = gVar3;
            j13 = j10;
            i14++;
            gVarB = gVarB;
            jL = jL;
            j10 = j13;
            gVar3 = gVar;
            i10 = 3;
        }
        if (this.O.f15445d) {
            t4.g gVar4 = gVar;
            int i15 = 0;
            while (true) {
                if (i15 >= gVar4.f15478c.size()) {
                    z12 = false;
                    break;
                }
                s4.d dVarB4 = gVar4.f15478c.get(i15).f15434c.get(0).b();
                if (dVarB4 == null || dVarB4.i()) {
                    z12 = true;
                    break;
                }
                i15++;
            }
            if (z12) {
                z11 = false;
            } else {
                z11 = true;
            }
        } else {
            z11 = false;
        }
        if (z11) {
            long j14 = this.O.f15447f;
            if (j14 != -9223372036854775807L) {
                jL2 = Math.max(jL2, jL3 - g0.L(j14));
            }
        }
        long j15 = jL3 - jL2;
        t4.c cVar2 = this.O;
        if (cVar2.f15445d) {
            m5.a.e(cVar2.f15442a != -9223372036854775807L);
            long jL5 = (jL - g0.L(this.O.f15442a)) - jL2;
            long jX = g0.X(jL5);
            long j16 = this.f4525o.f11749j.f11797j;
            if (j16 != -9223372036854775807L) {
                jMin = Math.min(jX, j16);
            } else {
                t4.l lVar2 = this.O.f15451j;
                if (lVar2 != null) {
                    long j17 = lVar2.f15519c;
                    if (j17 != -9223372036854775807L) {
                        jMin = Math.min(jX, j17);
                    } else {
                        jMin = jX;
                    }
                } else {
                    jMin = jX;
                }
            }
            long jX2 = g0.X(jL5 - j15);
            if (jX2 < 0 && jMin > 0) {
                jX2 = 0;
            }
            long j18 = this.O.f15444c;
            if (j18 != -9223372036854775807L) {
                jX2 = Math.min(jX2 + j18, jX);
            }
            long j19 = jX2;
            long j20 = this.f4525o.f11749j.f11796i;
            if (j20 != -9223372036854775807L) {
                j19 = g0.j(j20, j19, jX);
            } else {
                t4.l lVar3 = this.O.f15451j;
                if (lVar3 != null) {
                    long j21 = lVar3.f15518b;
                    if (j21 != -9223372036854775807L) {
                        j19 = g0.j(j21, j19, jX);
                    }
                }
            }
            long j22 = j19;
            if (j22 > jMin) {
                jMin = j22;
            }
            long j23 = this.L.f11795h;
            if (j23 == -9223372036854775807L) {
                t4.c cVar3 = this.O;
                t4.l lVar4 = cVar3.f15451j;
                if (lVar4 != null) {
                    long j24 = lVar4.f15517a;
                    if (j24 != -9223372036854775807L) {
                        j23 = j24;
                    } else {
                        j23 = cVar3.f15448g;
                        if (j23 == -9223372036854775807L) {
                            j23 = this.f4533w;
                        }
                    }
                } else {
                    j23 = cVar3.f15448g;
                    if (j23 == -9223372036854775807L) {
                        j23 = this.f4533w;
                    }
                }
            }
            if (j23 < j22) {
                j23 = j22;
            }
            if (j23 > jMin) {
                j23 = g0.j(g0.X(jL5 - Math.min(5000000L, j15 / 2)), j22, jMin);
            }
            y0.f fVar2 = this.f4525o.f11749j;
            float f10 = fVar2.f11798k;
            if (f10 == -3.4028235E38f) {
                t4.l lVar5 = this.O.f15451j;
                f10 = lVar5 != null ? lVar5.f15520d : -3.4028235E38f;
            }
            float f11 = fVar2.f11799l;
            if (f11 == -3.4028235E38f) {
                t4.l lVar6 = this.O.f15451j;
                f11 = lVar6 != null ? lVar6.f15521e : -3.4028235E38f;
            }
            if (f10 == -3.4028235E38f && f11 == -3.4028235E38f && ((lVar = this.O.f15451j) == null || lVar.f15517a == -9223372036854775807L)) {
                f11 = 1.0f;
                f10 = 1.0f;
            }
            y0.f.a aVar3 = new y0.f.a();
            aVar3.f11800a = j23;
            aVar3.f11801b = j22;
            aVar3.f11802c = jMin;
            aVar3.f11803d = f10;
            aVar3.f11804e = f11;
            this.L = new y0.f(aVar3);
            long jX3 = g0.X(jL2) + this.O.f15442a;
            long jL6 = jL5 - g0.L(this.L.f11795h);
            long jMin3 = Math.min(5000000L, j15 / 2);
            j12 = jL6 < jMin3 ? jMin3 : jL6;
            j11 = jX3;
        } else {
            j11 = -9223372036854775807L;
            j12 = 0;
        }
        long jL7 = jL2 - g0.L(gVarB.f15477b);
        t4.c cVar4 = this.O;
        w(new b(cVar4.f15442a, j11, this.S, this.V, jL7, j15, j12, cVar4, this.f4525o, cVar4.f15445d ? this.L : null));
        if (this.f4526p) {
            return;
        }
        this.K.removeCallbacks(this.D);
        if (z11) {
            Handler handler = this.K;
            k1 k1Var = this.D;
            t4.c cVar5 = this.O;
            long jX4 = g0.x(this.S);
            int iC2 = cVar5.c() - 1;
            t4.g gVarB3 = cVar5.b(iC2);
            long jL8 = g0.L(gVarB3.f15477b);
            long jE3 = cVar5.e(iC2);
            long jL9 = g0.L(jX4);
            long jL10 = g0.L(cVar5.f15442a);
            long jL11 = g0.L(PayloadController.PAYLOAD_COLLECTOR_TIMEOUT);
            for (int i16 = 0; i16 < gVarB3.f15478c.size(); i16++) {
                List<t4.j> list3 = gVarB3.f15478c.get(i16).f15434c;
                if (!list3.isEmpty() && (dVarB = list3.get(0).b()) != null) {
                    long jG = (dVarB.g(jE3, jL9) + (jL10 + jL8)) - jL9;
                    if (jG < jL11 - 100000 || (jG > jL11 && jG < jL11 + 100000)) {
                        jL11 = jG;
                    }
                }
            }
            boolean z13 = false;
            RoundingMode roundingMode = RoundingMode.CEILING;
            Objects.requireNonNull(roundingMode);
            long j25 = jL11 / 1000;
            long j26 = jL11 - (j25 * 1000);
            if (j26 != 0) {
                int i17 = ((int) ((jL11 ^ 1000) >> 63)) | 1;
                switch (v6.b.f16361a[roundingMode.ordinal()]) {
                    case 1:
                        if (!(j26 == 0)) {
                            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                        }
                        if (z13) {
                            j25 += (long) i17;
                        }
                        break;
                    case 2:
                        if (z13) {
                            j25 += (long) i17;
                        }
                        break;
                    case 3:
                        if (i17 < 0) {
                            z13 = true;
                        }
                        if (z13) {
                            j25 += (long) i17;
                        }
                        break;
                    case 4:
                        z13 = true;
                        if (z13) {
                            j25 += (long) i17;
                        }
                        break;
                    case 5:
                        if (i17 > 0) {
                            z13 = true;
                        }
                        if (z13) {
                            j25 += (long) i17;
                        }
                        break;
                    case 6:
                    case 7:
                    case 8:
                        long jAbs = Math.abs(j26);
                        long jAbs2 = jAbs - (Math.abs(1000L) - jAbs);
                        if (jAbs2 == 0) {
                            z13 = (((j25 & 1) != 0) & (roundingMode == RoundingMode.HALF_EVEN)) | (roundingMode == RoundingMode.HALF_UP);
                        } else if (jAbs2 > 0) {
                            z13 = true;
                        }
                        if (z13) {
                            j25 += (long) i17;
                        }
                        break;
                    default:
                        throw new AssertionError();
                }
            }
            handler.postDelayed(k1Var, j25);
        }
        if (this.P) {
            G();
            return;
        }
        if (z10) {
            t4.c cVar6 = this.O;
            if (cVar6.f15445d) {
                long j27 = cVar6.f15446e;
                if (j27 != -9223372036854775807L) {
                    if (j27 == 0) {
                        j27 = PayloadController.PAYLOAD_COLLECTOR_TIMEOUT;
                    }
                    this.K.postDelayed(this.C, Math.max(0L, (this.Q + j27) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    public final void E(fe.h hVar, f0.a<Long> aVar) {
        F(new f0(this.G, Uri.parse((String) hVar.f7454c), 5, aVar), new g(), 1);
    }

    public final <T> void F(f0<T> f0Var, d0.a<f0<T>> aVar, int i10) {
        this.f4534x.m(new r(f0Var.f10016a, f0Var.f10017b, this.H.g(f0Var, aVar, i10)), f0Var.f10018c);
    }

    public final void G() {
        Uri uri;
        this.K.removeCallbacks(this.C);
        if (this.H.c()) {
            return;
        }
        if (this.H.d()) {
            this.P = true;
            return;
        }
        synchronized (this.A) {
            uri = this.M;
        }
        this.P = false;
        F(new f0(this.G, uri, 4, this.f4535y), this.f4536z, this.f4531u.c(4));
    }

    @Override // p4.x
    public final y0 a() {
        return this.f4525o;
    }

    @Override // p4.x
    public final void b() throws IOException {
        this.F.b();
    }

    @Override // p4.x
    public final void d(v vVar) {
        com.google.android.exoplayer2.source.dash.b bVar = (com.google.android.exoplayer2.source.dash.b) vVar;
        com.google.android.exoplayer2.source.dash.d dVar = bVar.f4571t;
        dVar.f4617p = true;
        dVar.f4612k.removeCallbacksAndMessages(null);
        for (r4.h<com.google.android.exoplayer2.source.dash.a> hVar : bVar.f4577z) {
            hVar.A(bVar);
        }
        bVar.f4576y = null;
        this.B.remove(bVar.f4559h);
    }

    @Override // p4.x
    public final v q(x.b bVar, l5.b bVar2, long j10) {
        int iIntValue = ((Integer) bVar.f13238a).intValue() - this.V;
        p4.e0.a aVarR = this.f12918j.r(0, bVar, this.O.b(iIntValue).f15477b);
        k.a aVarR2 = r(bVar);
        int i10 = this.V + iIntValue;
        t4.c cVar = this.O;
        s4.b bVar3 = this.f4532v;
        com.google.android.exoplayer2.source.dash.a.InterfaceC0080a interfaceC0080a = this.f4528r;
        j0 j0Var = this.I;
        l lVar = this.f4530t;
        c0 c0Var = this.f4531u;
        long j11 = this.S;
        e0 e0Var = this.F;
        p4.h hVar = this.f4529s;
        c cVar2 = this.E;
        v0 v0Var = this.f12922n;
        m5.a.f(v0Var);
        com.google.android.exoplayer2.source.dash.b bVar4 = new com.google.android.exoplayer2.source.dash.b(i10, cVar, bVar3, iIntValue, interfaceC0080a, j0Var, lVar, aVarR2, c0Var, aVarR, j11, e0Var, bVar2, hVar, cVar2, v0Var);
        this.B.put(i10, bVar4);
        return bVar4;
    }

    @Override // p4.a
    public final void v(j0 j0Var) {
        this.I = j0Var;
        this.f4530t.b();
        l lVar = this.f4530t;
        Looper looperMyLooper = Looper.myLooper();
        v0 v0Var = this.f12922n;
        m5.a.f(v0Var);
        lVar.f(looperMyLooper, v0Var);
        if (this.f4526p) {
            D(false);
            return;
        }
        this.G = this.f4527q.a();
        this.H = new d0("DashMediaSource");
        this.K = g0.l(null);
        G();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.HashMap, java.util.Map<java.util.List<android.util.Pair<java.lang.String, java.lang.Integer>>, t4.b>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Long>] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.HashMap, java.util.Map<java.lang.Integer, java.lang.Long>] */
    @Override // p4.a
    public final void x() {
        this.P = false;
        this.G = null;
        d0 d0Var = this.H;
        if (d0Var != null) {
            d0Var.f(null);
            this.H = null;
        }
        this.Q = 0L;
        this.R = 0L;
        this.O = this.f4526p ? this.O : null;
        this.M = this.N;
        this.J = null;
        Handler handler = this.K;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.K = null;
        }
        this.S = -9223372036854775807L;
        this.T = 0;
        this.U = -9223372036854775807L;
        this.V = 0;
        this.B.clear();
        s4.b bVar = this.f4532v;
        bVar.f15113a.clear();
        bVar.f15114b.clear();
        bVar.f15115c.clear();
        this.f4530t.a();
    }

    public final void z() {
        boolean z10;
        d0 d0Var = this.H;
        a aVar = new a();
        synchronized (y.f10483b) {
            z10 = y.f10484c;
        }
        if (z10) {
            aVar.a();
            return;
        }
        if (d0Var == null) {
            d0Var = new d0("SntpClient");
        }
        d0Var.g(new y.c(), new y.b(aVar), 1);
    }
}
