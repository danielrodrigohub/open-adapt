package o3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import com.newrelic.agent.android.api.v1.Defaults;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import n3.b2;
import n3.c2;
import n3.i1;
import n3.k1;
import n3.o1;
import n3.y0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: MediaMetricsListener.java */
/* JADX INFO: loaded from: classes.dex */
public final class t0 implements o3.b, u0 {
    public boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f12212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s0 f12213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PlaybackSession f12214c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f12220i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PlaybackMetrics.Builder f12221j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12222k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public k1 f12225n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b f12226o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public b f12227p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public b f12228q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public n3.s0 f12229r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public n3.s0 f12230s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public n3.s0 f12231t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f12232u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f12233v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f12234w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12235x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f12236y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f12237z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b2.d f12216e = new b2.d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b2.b f12217f = new b2.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap<String, Long> f12219h = new HashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap<String, Long> f12218g = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f12215d = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12223l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12224m = 0;

    /* JADX INFO: compiled from: MediaMetricsListener.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12238a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12239b;

        public a(int i10, int i11) {
            this.f12238a = i10;
            this.f12239b = i11;
        }
    }

    /* JADX INFO: compiled from: MediaMetricsListener.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n3.s0 f12240a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12241b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f12242c;

        public b(n3.s0 s0Var, int i10, String str) {
            this.f12240a = s0Var;
            this.f12241b = i10;
            this.f12242c = str;
        }
    }

    public t0(Context context, PlaybackSession playbackSession) {
        this.f12212a = context.getApplicationContext();
        this.f12214c = playbackSession;
        s0 s0Var = new s0();
        this.f12213b = s0Var;
        s0Var.f12199d = this;
    }

    @SuppressLint({"SwitchIntDef"})
    public static int g(int i10) {
        switch (m5.g0.u(i10)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    @Override // o3.b
    public final void J(int i10) {
        if (i10 == 1) {
            this.f12232u = true;
        }
        this.f12222k = i10;
    }

    @Override // o3.b
    public final void J0(p4.u uVar) {
        this.f12233v = uVar.f13226a;
    }

    /* JADX WARN: Code duplicated, block: B:309:0x04cf A[PHI: r7
      0x04cf: PHI (r7v16 int) = (r7v15 int), (r7v17 int), (r7v17 int) binds: [B:291:0x04ab, B:299:0x04b9, B:300:0x04bb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:318:0x04e4 A[PHI: r2
      0x04e4: PHI (r2v8 int) = (r2v5 int), (r2v4 int) binds: [B:316:0x04e0, B:306:0x04ca] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // o3.b
    public final void L(o1 o1Var, o3.b.C0219b c0219b) {
        int i10;
        boolean z10;
        int i11;
        int i12;
        int i13;
        a aVar;
        a aVar2;
        a aVar3;
        int i14;
        int i15;
        int i16;
        b bVar;
        int i17;
        int i18;
        int i19;
        u0 u0Var;
        r3.d dVar;
        int i20;
        if (c0219b.f12089a.c() == 0) {
            return;
        }
        int i21 = 0;
        while (true) {
            boolean z11 = true;
            if (i21 >= c0219b.f12089a.c()) {
                break;
            }
            int iB = c0219b.f12089a.b(i21);
            o3.b.a aVarB = c0219b.b(iB);
            if (iB == 0) {
                s0 s0Var = this.f12213b;
                synchronized (s0Var) {
                    Objects.requireNonNull(s0Var.f12199d);
                    b2 b2Var = s0Var.f12200e;
                    s0Var.f12200e = aVarB.f12080b;
                    Iterator<s0.a> it = s0Var.f12198c.values().iterator();
                    while (it.hasNext()) {
                        s0.a next = it.next();
                        if (!next.b(b2Var, s0Var.f12200e) || next.a(aVarB)) {
                            it.remove();
                            if (next.f12206e) {
                                if (next.f12202a.equals(s0Var.f12201f)) {
                                    s0Var.f12201f = null;
                                }
                                ((t0) s0Var.f12199d).p(aVarB, next.f12202a);
                            }
                        }
                    }
                    s0Var.c(aVarB);
                }
            } else if (iB == 11) {
                s0 s0Var2 = this.f12213b;
                int i22 = this.f12222k;
                synchronized (s0Var2) {
                    Objects.requireNonNull(s0Var2.f12199d);
                    if (i22 != 0) {
                        z11 = false;
                    }
                    Iterator<s0.a> it2 = s0Var2.f12198c.values().iterator();
                    while (it2.hasNext()) {
                        s0.a next2 = it2.next();
                        if (next2.a(aVarB)) {
                            it2.remove();
                            if (next2.f12206e) {
                                boolean zEquals = next2.f12202a.equals(s0Var2.f12201f);
                                if (z11 && zEquals) {
                                    boolean z12 = next2.f12207f;
                                }
                                if (zEquals) {
                                    s0Var2.f12201f = null;
                                }
                                ((t0) s0Var2.f12199d).p(aVarB, next2.f12202a);
                            }
                        }
                    }
                    s0Var2.c(aVarB);
                }
            } else {
                this.f12213b.d(aVarB);
            }
            i21++;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (c0219b.a(0)) {
            o3.b.a aVarB2 = c0219b.b(0);
            if (this.f12221j != null) {
                m(aVarB2.f12080b, aVarB2.f12082d);
            }
        }
        if (c0219b.a(2) && this.f12221j != null) {
            u6.a aVarListIterator = o1Var.t().f11338h.listIterator(0);
            loop3: while (true) {
                if (!aVarListIterator.hasNext()) {
                    dVar = null;
                    break;
                }
                c2.a aVar4 = (c2.a) aVarListIterator.next();
                for (int i23 = 0; i23 < aVar4.f11340h; i23++) {
                    if (aVar4.f11344l[i23] && (dVar = aVar4.f11341i.f13224k[i23].f11690v) != null) {
                        break loop3;
                    }
                }
            }
            if (dVar != null) {
                PlaybackMetrics.Builder builder = this.f12221j;
                int i24 = m5.g0.f10384a;
                int i25 = 0;
                while (true) {
                    if (i25 >= dVar.f14482k) {
                        i20 = 1;
                        break;
                    }
                    UUID uuid = dVar.f14479h[i25].f14484i;
                    if (uuid.equals(n3.i.f11428d)) {
                        i20 = 3;
                        break;
                    } else if (uuid.equals(n3.i.f11429e)) {
                        i20 = 2;
                        break;
                    } else {
                        if (uuid.equals(n3.i.f11427c)) {
                            i20 = 6;
                            break;
                        }
                        i25++;
                    }
                }
                builder.setDrmType(i20);
            }
        }
        if (c0219b.a(1011)) {
            this.f12237z++;
        }
        k1 k1Var = this.f12225n;
        if (k1Var == null) {
            i15 = 1;
            i16 = 2;
            i13 = 13;
            i11 = 7;
            i12 = 6;
        } else {
            Context context = this.f12212a;
            boolean z13 = this.f12233v == 4;
            if (k1Var.f11505h == 1001) {
                aVar = new a(20, 0);
            } else {
                if (k1Var instanceof n3.q) {
                    n3.q qVar = (n3.q) k1Var;
                    z10 = qVar.f11633j == 1;
                    i10 = qVar.f11637n;
                } else {
                    i10 = 0;
                    z10 = false;
                }
                Throwable cause = k1Var.getCause();
                Objects.requireNonNull(cause);
                if (!(cause instanceof IOException)) {
                    i11 = 7;
                    i12 = 6;
                    if (z10 && (i10 == 0 || i10 == 1)) {
                        aVar = new a(35, 0);
                    } else if (z10 && i10 == 3) {
                        aVar = new a(15, 0);
                    } else {
                        if (z10 && i10 == 2) {
                            aVar = new a(23, 0);
                        } else {
                            if (cause instanceof e4.o.b) {
                                i13 = 13;
                                aVar3 = new a(13, m5.g0.v(((e4.o.b) cause).f6458k));
                            } else {
                                i13 = 13;
                                if (cause instanceof e4.m) {
                                    aVar2 = new a(14, m5.g0.v(((e4.m) cause).f6414h));
                                } else if (cause instanceof OutOfMemoryError) {
                                    aVar = new a(14, 0);
                                } else if (cause instanceof p3.q.b) {
                                    aVar3 = new a(17, ((p3.q.b) cause).f12792h);
                                } else if (cause instanceof p3.q.e) {
                                    aVar3 = new a(18, ((p3.q.e) cause).f12795h);
                                } else if (m5.g0.f10384a < 16 || !(cause instanceof MediaCodec.CryptoException)) {
                                    aVar = new a(22, 0);
                                } else {
                                    int errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                                    aVar2 = new a(g(errorCode), errorCode);
                                }
                                aVar = aVar2;
                            }
                            aVar = aVar3;
                        }
                        this.f12214c.reportPlaybackErrorEvent(new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f12215d).setErrorCode(aVar.f12238a).setSubErrorCode(aVar.f12239b).setException(k1Var).build());
                        i15 = 1;
                        this.A = true;
                        this.f12225n = null;
                        i16 = 2;
                    }
                } else if (cause instanceof l5.z) {
                    aVar = new a(5, ((l5.z) cause).f10153k);
                } else {
                    if ((cause instanceof l5.y) || (cause instanceof i1)) {
                        i14 = 7;
                        i12 = 6;
                        aVar = new a(z13 ? 10 : 11, 0);
                    } else {
                        boolean z14 = cause instanceof l5.x;
                        if (z14 || (cause instanceof l5.k0.a)) {
                            if (m5.u.b(context).c() == 1) {
                                aVar = new a(3, 0);
                            } else {
                                Throwable cause2 = cause.getCause();
                                if (cause2 instanceof UnknownHostException) {
                                    i12 = 6;
                                    aVar = new a(6, 0);
                                } else {
                                    i12 = 6;
                                    if (cause2 instanceof SocketTimeoutException) {
                                        i14 = 7;
                                        aVar = new a(7, 0);
                                    } else {
                                        i14 = 7;
                                        aVar = (z14 && ((l5.x) cause).f10152j == 1) ? new a(4, 0) : new a(8, 0);
                                    }
                                }
                            }
                            i13 = 13;
                            i11 = 7;
                            this.f12214c.reportPlaybackErrorEvent(new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f12215d).setErrorCode(aVar.f12238a).setSubErrorCode(aVar.f12239b).setException(k1Var).build());
                            i15 = 1;
                            this.A = true;
                            this.f12225n = null;
                            i16 = 2;
                        } else if (k1Var.f11505h == 1002) {
                            aVar = new a(21, 0);
                        } else if (cause instanceof r3.e.a) {
                            Throwable cause3 = cause.getCause();
                            Objects.requireNonNull(cause3);
                            int i26 = m5.g0.f10384a;
                            if (i26 >= 21 && (cause3 instanceof MediaDrm.MediaDrmStateException)) {
                                int iV = m5.g0.v(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                aVar = new a(g(iV), iV);
                            } else if (i26 >= 23 && (cause3 instanceof MediaDrmResetException)) {
                                aVar = new a(27, 0);
                            } else if (i26 >= 18 && (cause3 instanceof NotProvisionedException)) {
                                aVar = new a(24, 0);
                            } else if (i26 >= 18 && (cause3 instanceof DeniedByServerException)) {
                                aVar = new a(29, 0);
                            } else if (cause3 instanceof r3.a0) {
                                aVar = new a(23, 0);
                            } else {
                                aVar = cause3 instanceof r3.b.d ? new a(28, 0) : new a(30, 0);
                            }
                        } else if ((cause instanceof l5.v.b) && (cause.getCause() instanceof FileNotFoundException)) {
                            Throwable cause4 = cause.getCause();
                            Objects.requireNonNull(cause4);
                            Throwable cause5 = cause4.getCause();
                            aVar = (m5.g0.f10384a >= 21 && (cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) ? new a(32, 0) : new a(31, 0);
                        } else {
                            aVar = new a(9, 0);
                        }
                    }
                    i11 = i14;
                }
                i13 = 13;
                this.f12214c.reportPlaybackErrorEvent(new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f12215d).setErrorCode(aVar.f12238a).setSubErrorCode(aVar.f12239b).setException(k1Var).build());
                i15 = 1;
                this.A = true;
                this.f12225n = null;
                i16 = 2;
            }
            i12 = 6;
            i13 = 13;
            i11 = 7;
            this.f12214c.reportPlaybackErrorEvent(new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f12215d).setErrorCode(aVar.f12238a).setSubErrorCode(aVar.f12239b).setException(k1Var).build());
            i15 = 1;
            this.A = true;
            this.f12225n = null;
            i16 = 2;
        }
        if (c0219b.a(i16)) {
            c2 c2VarT = o1Var.t();
            boolean zB = c2VarT.b(i16);
            boolean zB2 = c2VarT.b(i15);
            boolean zB3 = c2VarT.b(3);
            if (zB || zB2 || zB3) {
                if (!zB) {
                    n(jElapsedRealtime, null, 0);
                }
                if (!zB2) {
                    h(jElapsedRealtime, null, 0);
                }
                if (!zB3) {
                    l(jElapsedRealtime, null, 0);
                }
            }
        }
        if (d(this.f12226o)) {
            b bVar2 = this.f12226o;
            n3.s0 s0Var3 = bVar2.f12240a;
            if (s0Var3.f11693y != -1) {
                n(jElapsedRealtime, s0Var3, bVar2.f12241b);
                this.f12226o = null;
            }
        }
        if (d(this.f12227p)) {
            b bVar3 = this.f12227p;
            h(jElapsedRealtime, bVar3.f12240a, bVar3.f12241b);
            bVar = null;
            this.f12227p = null;
        } else {
            bVar = null;
        }
        if (d(this.f12228q)) {
            b bVar4 = this.f12228q;
            l(jElapsedRealtime, bVar4.f12240a, bVar4.f12241b);
            this.f12228q = bVar;
        }
        switch (m5.u.b(this.f12212a).c()) {
            case 0:
                i17 = 0;
                break;
            case 1:
                i17 = 9;
                break;
            case 2:
                i17 = 2;
                break;
            case 3:
                i17 = 4;
                break;
            case 4:
                i17 = 5;
                break;
            case 5:
                i17 = i12;
                break;
            case 6:
            case 8:
            default:
                i17 = 1;
                break;
            case 7:
                i17 = 3;
                break;
            case 9:
                i17 = 8;
                break;
            case 10:
                i17 = i11;
                break;
        }
        if (i17 != this.f12224m) {
            this.f12224m = i17;
            this.f12214c.reportNetworkEvent(new NetworkEvent.Builder().setNetworkType(i17).setTimeSinceCreatedMillis(jElapsedRealtime - this.f12215d).build());
        }
        if (o1Var.s() != 2) {
            this.f12232u = false;
        }
        if (o1Var.h() == null) {
            this.f12234w = false;
            i18 = 10;
        } else {
            i18 = 10;
            if (c0219b.a(10)) {
                this.f12234w = true;
            }
        }
        int iS = o1Var.s();
        if (this.f12232u) {
            i19 = 5;
        } else if (this.f12234w) {
            i19 = i13;
        } else if (iS == 4) {
            i19 = 11;
        } else {
            i13 = 2;
            if (iS == 2) {
                int i27 = this.f12223l;
                if (i27 == 0 || i27 == 2) {
                    i19 = i13;
                } else if (!o1Var.p()) {
                    i19 = i11;
                } else if (o1Var.L() != 0) {
                    i19 = i18;
                } else {
                    i19 = i12;
                }
            } else {
                i18 = 3;
                if (iS != 3) {
                    i19 = (iS != 1 || this.f12223l == 0) ? this.f12223l : 12;
                } else if (!o1Var.p()) {
                    i19 = 4;
                } else if (o1Var.L() != 0) {
                    i19 = 9;
                } else {
                    i19 = i18;
                }
            }
        }
        if (this.f12223l != i19) {
            this.f12223l = i19;
            this.A = true;
            this.f12214c.reportPlaybackStateEvent(new PlaybackStateEvent.Builder().setState(this.f12223l).setTimeSinceCreatedMillis(jElapsedRealtime - this.f12215d).build());
        }
        if (c0219b.a(1028)) {
            s0 s0Var4 = this.f12213b;
            o3.b.a aVarB3 = c0219b.b(1028);
            synchronized (s0Var4) {
                s0Var4.f12201f = null;
                Iterator<s0.a> it3 = s0Var4.f12198c.values().iterator();
                while (it3.hasNext()) {
                    s0.a next3 = it3.next();
                    it3.remove();
                    if (next3.f12206e && (u0Var = s0Var4.f12199d) != null) {
                        ((t0) u0Var).p(aVarB3, next3.f12202a);
                    }
                }
            }
        }
    }

    @Override // o3.b
    public final void S(o3.b.a aVar, int i10, long j10) {
        p4.x.b bVar = aVar.f12082d;
        if (bVar != null) {
            String strB = this.f12213b.b(aVar.f12080b, bVar);
            Long l10 = this.f12219h.get(strB);
            Long l11 = this.f12218g.get(strB);
            this.f12219h.put(strB, Long.valueOf((l10 == null ? 0L : l10.longValue()) + j10));
            this.f12218g.put(strB, Long.valueOf((l11 != null ? l11.longValue() : 0L) + ((long) i10)));
        }
    }

    @Override // o3.b
    public final void b(n5.t tVar) {
        b bVar = this.f12226o;
        if (bVar != null) {
            n3.s0 s0Var = bVar.f12240a;
            if (s0Var.f11693y == -1) {
                n3.s0.a aVar = new n3.s0.a(s0Var);
                aVar.f11710p = tVar.f11986h;
                aVar.f11711q = tVar.f11987i;
                this.f12226o = new b(new n3.s0(aVar), bVar.f12241b, bVar.f12242c);
            }
        }
    }

    @Override // o3.b
    public final void c(q3.e eVar) {
        this.f12235x += eVar.f13574g;
        this.f12236y += eVar.f13572e;
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = Defaults.COLLECT_NETWORK_ERRORS)
    public final boolean d(b bVar) {
        String str;
        if (bVar != null) {
            String str2 = bVar.f12242c;
            s0 s0Var = this.f12213b;
            synchronized (s0Var) {
                str = s0Var.f12201f;
            }
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final void f() {
        PlaybackMetrics.Builder builder = this.f12221j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.f12237z);
            this.f12221j.setVideoFramesDropped(this.f12235x);
            this.f12221j.setVideoFramesPlayed(this.f12236y);
            Long l10 = this.f12218g.get(this.f12220i);
            this.f12221j.setNetworkTransferDurationMillis(l10 == null ? 0L : l10.longValue());
            Long l11 = this.f12219h.get(this.f12220i);
            this.f12221j.setNetworkBytesRead(l11 == null ? 0L : l11.longValue());
            this.f12221j.setStreamSource((l11 == null || l11.longValue() <= 0) ? 0 : 1);
            this.f12214c.reportPlaybackMetrics(this.f12221j.build());
        }
        this.f12221j = null;
        this.f12220i = null;
        this.f12237z = 0;
        this.f12235x = 0;
        this.f12236y = 0;
        this.f12229r = null;
        this.f12230s = null;
        this.f12231t = null;
        this.A = false;
    }

    @Override // o3.b
    public final void f0(o3.b.a aVar, p4.u uVar) {
        if (aVar.f12082d == null) {
            return;
        }
        n3.s0 s0Var = uVar.f13228c;
        Objects.requireNonNull(s0Var);
        int i10 = uVar.f13229d;
        s0 s0Var2 = this.f12213b;
        b2 b2Var = aVar.f12080b;
        p4.x.b bVar = aVar.f12082d;
        Objects.requireNonNull(bVar);
        b bVar2 = new b(s0Var, i10, s0Var2.b(b2Var, bVar));
        int i11 = uVar.f13227b;
        if (i11 != 0) {
            if (i11 == 1) {
                this.f12227p = bVar2;
                return;
            } else if (i11 != 2) {
                if (i11 != 3) {
                    return;
                }
                this.f12228q = bVar2;
                return;
            }
        }
        this.f12226o = bVar2;
    }

    public final void h(long j10, n3.s0 s0Var, int i10) {
        if (m5.g0.a(this.f12230s, s0Var)) {
            return;
        }
        if (this.f12230s == null && i10 == 0) {
            i10 = 1;
        }
        this.f12230s = s0Var;
        q(0, j10, s0Var, i10);
    }

    @Override // o3.b
    public final void i(k1 k1Var) {
        this.f12225n = k1Var;
    }

    public final void l(long j10, n3.s0 s0Var, int i10) {
        if (m5.g0.a(this.f12231t, s0Var)) {
            return;
        }
        if (this.f12231t == null && i10 == 0) {
            i10 = 1;
        }
        this.f12231t = s0Var;
        q(2, j10, s0Var, i10);
    }

    @RequiresNonNull({"metricsBuilder"})
    public final void m(b2 b2Var, p4.x.b bVar) {
        int iD;
        int i10;
        PlaybackMetrics.Builder builder = this.f12221j;
        if (bVar == null || (iD = b2Var.d(bVar.f13238a)) == -1) {
            return;
        }
        b2Var.h(iD, this.f12217f);
        b2Var.p(this.f12217f.f11297j, this.f12216e);
        y0.h hVar = this.f12216e.f11310j.f11748i;
        if (hVar == null) {
            i10 = 0;
        } else {
            int iG = m5.g0.G(hVar.f11805a, hVar.f11806b);
            if (iG == 0) {
                i10 = 3;
            } else if (iG != 1) {
                i10 = iG != 2 ? 1 : 4;
            } else {
                i10 = 5;
            }
        }
        builder.setStreamType(i10);
        b2.d dVar = this.f12216e;
        if (dVar.f11321u != -9223372036854775807L && !dVar.f11319s && !dVar.f11316p && !dVar.d()) {
            builder.setMediaDurationMillis(this.f12216e.c());
        }
        builder.setPlaybackType(this.f12216e.d() ? 2 : 1);
        this.A = true;
    }

    public final void n(long j10, n3.s0 s0Var, int i10) {
        if (m5.g0.a(this.f12229r, s0Var)) {
            return;
        }
        if (this.f12229r == null && i10 == 0) {
            i10 = 1;
        }
        this.f12229r = s0Var;
        q(1, j10, s0Var, i10);
    }

    public final void o(o3.b.a aVar, String str) {
        p4.x.b bVar = aVar.f12082d;
        if (bVar == null || !bVar.a()) {
            f();
            this.f12220i = str;
            this.f12221j = new PlaybackMetrics.Builder().setPlayerName("ExoPlayerLib").setPlayerVersion("2.18.1");
            m(aVar.f12080b, aVar.f12082d);
        }
    }

    public final void p(o3.b.a aVar, String str) {
        p4.x.b bVar = aVar.f12082d;
        if ((bVar == null || !bVar.a()) && str.equals(this.f12220i)) {
            f();
        }
        this.f12218g.remove(str);
        this.f12219h.remove(str);
    }

    public final void q(int i10, long j10, n3.s0 s0Var, int i11) {
        int i12;
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i10).setTimeSinceCreatedMillis(j10 - this.f12215d);
        if (s0Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i11 != 1) {
                i12 = 3;
                if (i11 != 2) {
                    i12 = i11 != 3 ? 1 : 4;
                }
            } else {
                i12 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i12);
            String str = s0Var.f11686r;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = s0Var.f11687s;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = s0Var.f11684p;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i13 = s0Var.f11683o;
            if (i13 != -1) {
                timeSinceCreatedMillis.setBitrate(i13);
            }
            int i14 = s0Var.f11692x;
            if (i14 != -1) {
                timeSinceCreatedMillis.setWidth(i14);
            }
            int i15 = s0Var.f11693y;
            if (i15 != -1) {
                timeSinceCreatedMillis.setHeight(i15);
            }
            int i16 = s0Var.F;
            if (i16 != -1) {
                timeSinceCreatedMillis.setChannelCount(i16);
            }
            int i17 = s0Var.G;
            if (i17 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i17);
            }
            String str4 = s0Var.f11678j;
            if (str4 != null) {
                int i18 = m5.g0.f10384a;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = s0Var.f11694z;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        this.f12214c.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }
}
