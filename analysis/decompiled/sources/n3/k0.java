package n3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.newrelic.agent.android.analytics.EventManagerImpl;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: ExoPlayerImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class k0 extends e implements r {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final /* synthetic */ int f11461m0 = 0;
    public final n3.d A;
    public final z1 B;
    public final d2 C;
    public final e2 D;
    public final long E;
    public int F;
    public boolean G;
    public int H;
    public int I;
    public boolean J;
    public int K;
    public w1 L;
    public p4.o0 M;
    public o1.a N;
    public a1 O;
    public AudioTrack P;
    public Object Q;
    public Surface R;
    public SurfaceHolder S;
    public o5.j T;
    public boolean U;
    public TextureView V;
    public int W;
    public int X;
    public int Y;
    public int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public p3.d f11462a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j5.t f11463b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public float f11464b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o1.a f11465c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f11466c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m5.e f11467d = new m5.e();
    public z4.c d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f11468e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f11469e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final o1 f11470f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f11471f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final s1[] f11472g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public o f11473g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j5.s f11474h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public n5.t f11475h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m5.l f11476i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public a1 f11477i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a0 f11478j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public l1 f11479j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final o0 f11480k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f11481k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final m5.o<o1.c> f11482l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public long f11483l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final CopyOnWriteArraySet<r.a> f11484m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b2.b f11485n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List<d> f11486o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f11487p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final p4.x.a f11488q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final o3.a f11489r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Looper f11490s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final l5.e f11491t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f11492u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final long f11493v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final m5.a0 f11494w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final b f11495x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final c f11496y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final n3.b f11497z;

    /* JADX INFO: compiled from: ExoPlayerImpl.java */
    public static final class a {
        public static o3.v0 a(Context context, k0 k0Var, boolean z10) {
            MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
            o3.t0 t0Var = mediaMetricsManager == null ? null : new o3.t0(context, mediaMetricsManager.createPlaybackSession());
            if (t0Var == null) {
                m5.p.g("ExoPlayerImpl", "MediaMetricsService unavailable.");
                return new o3.v0(new o3.v0.a(LogSessionId.LOG_SESSION_ID_NONE));
            }
            if (z10) {
                Objects.requireNonNull(k0Var);
                k0Var.f11489r.c0(t0Var);
            }
            return new o3.v0(new o3.v0.a(t0Var.f12214c.getSessionId()));
        }
    }

    /* JADX INFO: compiled from: ExoPlayerImpl.java */
    public final class b implements n5.s, p3.p, z4.n, f4.e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, o5.j.b, n3.d.b, n3.b.InterfaceC0213b, z1.a, r.a {
        public b() {
        }

        @Override // p3.p
        public final void A(int i10, long j10, long j11) {
            k0.this.f11489r.A(i10, j10, j11);
        }

        @Override // n5.s
        public final void B(int i10, long j10) {
            k0.this.f11489r.B(i10, j10);
        }

        @Override // f4.e
        public final void C(f4.a aVar) {
            k0 k0Var = k0.this;
            a1.a aVarB = k0Var.f11477i0.b();
            int i10 = 0;
            while (true) {
                f4.a.b[] bVarArr = aVar.f7052h;
                if (i10 >= bVarArr.length) {
                    break;
                }
                bVarArr[i10].i(aVarB);
                i10++;
            }
            k0Var.f11477i0 = aVarB.a();
            a1 a1VarG0 = k0.this.g0();
            if (!a1VarG0.equals(k0.this.O)) {
                k0 k0Var2 = k0.this;
                k0Var2.O = a1VarG0;
                k0Var2.f11482l.b(14, new x(this, 1));
            }
            k0.this.f11482l.b(28, new y0.c0(aVar, 2));
            k0.this.f11482l.a();
        }

        @Override // n5.s
        public final void D(long j10, int i10) {
            k0.this.f11489r.D(j10, i10);
        }

        @Override // n5.s
        public final void b(n5.t tVar) {
            k0 k0Var = k0.this;
            k0Var.f11475h0 = tVar;
            k0Var.f11482l.d(25, new m0.b(tVar, 2));
        }

        @Override // n5.s
        public final void c(q3.e eVar) {
            k0.this.f11489r.c(eVar);
            Objects.requireNonNull(k0.this);
            Objects.requireNonNull(k0.this);
        }

        @Override // n5.s
        public final void d(String str) {
            k0.this.f11489r.d(str);
        }

        @Override // o5.j.b
        public final void e(Surface surface) {
            k0.this.z0(surface);
        }

        @Override // n5.s
        public final void f(Object obj, long j10) {
            k0.this.f11489r.f(obj, j10);
            k0 k0Var = k0.this;
            if (k0Var.Q == obj) {
                k0Var.f11482l.d(26, n.f11544e);
            }
        }

        @Override // n5.s
        public final void g(String str, long j10, long j11) {
            k0.this.f11489r.g(str, j10, j11);
        }

        @Override // p3.p
        public final void h(s0 s0Var, q3.i iVar) {
            Objects.requireNonNull(k0.this);
            k0.this.f11489r.h(s0Var, iVar);
        }

        @Override // n3.r.a
        public final void i() {
            k0.this.G0();
        }

        @Override // o5.j.b
        public final void j() {
            k0.this.z0(null);
        }

        @Override // p3.p
        public final void l(final boolean z10) {
            k0 k0Var = k0.this;
            if (k0Var.f11466c0 == z10) {
                return;
            }
            k0Var.f11466c0 = z10;
            k0Var.f11482l.d(23, new m5.o.a() { // from class: n3.m0
                @Override // m5.o.a
                public final void invoke(Object obj) {
                    ((o1.c) obj).l(z10);
                }
            });
        }

        @Override // p3.p
        public final void m(Exception exc) {
            k0.this.f11489r.m(exc);
        }

        @Override // z4.n
        public final void n(List<z4.a> list) {
            k0.this.f11482l.d(27, new y0.b0(list, 2));
        }

        @Override // z4.n
        public final void o(z4.c cVar) {
            k0 k0Var = k0.this;
            k0Var.d0 = cVar;
            k0Var.f11482l.d(27, new w(cVar, 1));
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            k0 k0Var = k0.this;
            Objects.requireNonNull(k0Var);
            Surface surface = new Surface(surfaceTexture);
            k0Var.z0(surface);
            k0Var.R = surface;
            k0.this.r0(i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            k0.this.z0(null);
            k0.this.r0(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            k0.this.r0(i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // p3.p
        public final void p(long j10) {
            k0.this.f11489r.p(j10);
        }

        @Override // n5.s
        public final void q(q3.e eVar) {
            Objects.requireNonNull(k0.this);
            k0.this.f11489r.q(eVar);
        }

        @Override // p3.p
        public final void s(Exception exc) {
            k0.this.f11489r.s(exc);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            k0.this.r0(i11, i12);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            k0 k0Var = k0.this;
            if (k0Var.U) {
                k0Var.z0(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            k0 k0Var = k0.this;
            if (k0Var.U) {
                k0Var.z0(null);
            }
            k0.this.r0(0, 0);
        }

        @Override // n5.s
        public final void t(Exception exc) {
            k0.this.f11489r.t(exc);
        }

        @Override // n5.s
        public final void u(s0 s0Var, q3.i iVar) {
            Objects.requireNonNull(k0.this);
            k0.this.f11489r.u(s0Var, iVar);
        }

        @Override // p3.p
        public final void v(String str) {
            k0.this.f11489r.v(str);
        }

        @Override // p3.p
        public final void w(String str, long j10, long j11) {
            k0.this.f11489r.w(str, j10, j11);
        }

        @Override // p3.p
        public final void x(q3.e eVar) {
            k0.this.f11489r.x(eVar);
            Objects.requireNonNull(k0.this);
            Objects.requireNonNull(k0.this);
        }

        @Override // p3.p
        public final void y(q3.e eVar) {
            Objects.requireNonNull(k0.this);
            k0.this.f11489r.y(eVar);
        }
    }

    /* JADX INFO: compiled from: ExoPlayerImpl.java */
    public static final class c implements n5.k, o5.a, p1.b {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public n5.k f11499h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public o5.a f11500i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public n5.k f11501j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public o5.a f11502k;

        @Override // o5.a
        public final void a(long j10, float[] fArr) {
            o5.a aVar = this.f11502k;
            if (aVar != null) {
                aVar.a(j10, fArr);
            }
            o5.a aVar2 = this.f11500i;
            if (aVar2 != null) {
                aVar2.a(j10, fArr);
            }
        }

        @Override // o5.a
        public final void c() {
            o5.a aVar = this.f11502k;
            if (aVar != null) {
                aVar.c();
            }
            o5.a aVar2 = this.f11500i;
            if (aVar2 != null) {
                aVar2.c();
            }
        }

        @Override // n5.k
        public final void d(long j10, long j11, s0 s0Var, MediaFormat mediaFormat) {
            n5.k kVar = this.f11501j;
            if (kVar != null) {
                kVar.d(j10, j11, s0Var, mediaFormat);
            }
            n5.k kVar2 = this.f11499h;
            if (kVar2 != null) {
                kVar2.d(j10, j11, s0Var, mediaFormat);
            }
        }

        @Override // n3.p1.b
        public final void l(int i10, Object obj) {
            if (i10 == 7) {
                this.f11499h = (n5.k) obj;
                return;
            }
            if (i10 == 8) {
                this.f11500i = (o5.a) obj;
                return;
            }
            if (i10 != 10000) {
                return;
            }
            o5.j jVar = (o5.j) obj;
            if (jVar == null) {
                this.f11501j = null;
                this.f11502k = null;
            } else {
                this.f11501j = jVar.getVideoFrameMetadataListener();
                this.f11502k = jVar.getCameraMotionListener();
            }
        }
    }

    /* JADX INFO: compiled from: ExoPlayerImpl.java */
    public static final class d implements f1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f11503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public b2 f11504b;

        public d(Object obj, b2 b2Var) {
            this.f11503a = obj;
            this.f11504b = b2Var;
        }

        @Override // n3.f1
        public final Object a() {
            return this.f11503a;
        }

        @Override // n3.f1
        public final b2 b() {
            return this.f11504b;
        }
    }

    static {
        p0.a("goog.exo.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public k0(r.b bVar, o1 o1Var) {
        try {
            m5.p.e("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + m5.g0.f10388e + "]");
            this.f11468e = bVar.f11647a.getApplicationContext();
            this.f11489r = new o3.r0(bVar.f11648b);
            this.f11462a0 = bVar.f11654h;
            this.W = bVar.f11655i;
            int i10 = 0;
            this.f11466c0 = false;
            this.E = bVar.f11662p;
            b bVar2 = new b();
            this.f11495x = bVar2;
            this.f11496y = new c();
            Handler handler = new Handler(bVar.f11653g);
            s1[] s1VarArrA = bVar.f11649c.get().a(handler, bVar2, bVar2, bVar2, bVar2);
            this.f11472g = s1VarArrA;
            m5.a.e(s1VarArrA.length > 0);
            this.f11474h = bVar.f11651e.get();
            this.f11488q = bVar.f11650d.get();
            this.f11491t = bVar.f11652f.get();
            this.f11487p = bVar.f11656j;
            this.L = bVar.f11657k;
            this.f11492u = bVar.f11658l;
            this.f11493v = bVar.f11659m;
            Looper looper = bVar.f11653g;
            this.f11490s = looper;
            m5.a0 a0Var = bVar.f11648b;
            this.f11494w = a0Var;
            this.f11470f = o1Var == null ? this : o1Var;
            this.f11482l = new m5.o<>(new CopyOnWriteArraySet(), looper, a0Var, new z(this, i10));
            this.f11484m = new CopyOnWriteArraySet<>();
            this.f11486o = new ArrayList();
            this.M = new p4.o0.a(new Random());
            this.f11463b = new j5.t(new u1[s1VarArrA.length], new j5.l[s1VarArrA.length], c2.f11337i, null);
            this.f11485n = new b2.b();
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            int[] iArr = {1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28};
            for (int i11 = 0; i11 < 21; i11++) {
                int i12 = iArr[i11];
                m5.a.e(!false);
                sparseBooleanArray.append(i12, true);
            }
            j5.s sVar = this.f11474h;
            Objects.requireNonNull(sVar);
            if (sVar instanceof j5.i) {
                m5.a.e(!false);
                sparseBooleanArray.append(29, true);
            }
            m5.a.e(!false);
            m5.j jVar = new m5.j(sparseBooleanArray);
            this.f11465c = new o1.a(jVar);
            SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray();
            for (int i13 = 0; i13 < jVar.c(); i13++) {
                int iB = jVar.b(i13);
                m5.a.e(!false);
                sparseBooleanArray2.append(iB, true);
            }
            m5.a.e(!false);
            sparseBooleanArray2.append(4, true);
            m5.a.e(!false);
            sparseBooleanArray2.append(10, true);
            m5.a.e(!false);
            this.N = new o1.a(new m5.j(sparseBooleanArray2));
            this.f11476i = this.f11494w.b(this.f11490s, null);
            a0 a0Var2 = new a0(this);
            this.f11478j = a0Var2;
            this.f11479j0 = l1.h(this.f11463b);
            this.f11489r.W(this.f11470f, this.f11490s);
            int i14 = m5.g0.f10384a;
            this.f11480k = new o0(this.f11472g, this.f11474h, this.f11463b, new k(), this.f11491t, this.F, this.G, this.f11489r, this.L, bVar.f11660n, bVar.f11661o, false, this.f11490s, this.f11494w, a0Var2, i14 < 31 ? new o3.v0() : a.a(this.f11468e, this, bVar.f11663q));
            this.f11464b0 = 1.0f;
            this.F = 0;
            a1 a1Var = a1.N;
            this.O = a1Var;
            this.f11477i0 = a1Var;
            int iGenerateAudioSessionId = -1;
            this.f11481k0 = -1;
            if (i14 < 21) {
                AudioTrack audioTrack = this.P;
                if (audioTrack != null && audioTrack.getAudioSessionId() != 0) {
                    this.P.release();
                    this.P = null;
                }
                if (this.P == null) {
                    this.P = new AudioTrack(3, EventManagerImpl.DEFAULT_MAX_EVENT_BUFFER_SIZE, 4, 2, 2, 0, 0);
                }
                this.Z = this.P.getAudioSessionId();
            } else {
                AudioManager audioManager = (AudioManager) this.f11468e.getSystemService("audio");
                if (audioManager != null) {
                    iGenerateAudioSessionId = audioManager.generateAudioSessionId();
                }
                this.Z = iGenerateAudioSessionId;
            }
            this.d0 = z4.c.f19328i;
            this.f11469e0 = true;
            a0(this.f11489r);
            this.f11491t.b(new Handler(this.f11490s), this.f11489r);
            this.f11484m.add(this.f11495x);
            n3.b bVar3 = new n3.b(bVar.f11647a, handler, this.f11495x);
            this.f11497z = bVar3;
            bVar3.a();
            n3.d dVar = new n3.d(bVar.f11647a, handler, this.f11495x);
            this.A = dVar;
            dVar.c();
            z1 z1Var = new z1(bVar.f11647a, handler, this.f11495x);
            this.B = z1Var;
            z1Var.d(m5.g0.B(this.f11462a0.f12689j));
            d2 d2Var = new d2(bVar.f11647a);
            this.C = d2Var;
            d2Var.f11360a = false;
            e2 e2Var = new e2(bVar.f11647a);
            this.D = e2Var;
            e2Var.f11379a = false;
            this.f11473g0 = new o(0, z1Var.a(), z1Var.f11850d.getStreamMaxVolume(z1Var.f11852f));
            this.f11475h0 = n5.t.f11985l;
            this.f11474h.d(this.f11462a0);
            w0(1, 10, Integer.valueOf(this.Z));
            w0(2, 10, Integer.valueOf(this.Z));
            w0(1, 3, this.f11462a0);
            w0(2, 4, Integer.valueOf(this.W));
            w0(2, 5, 0);
            w0(1, 9, Boolean.valueOf(this.f11466c0));
            w0(2, 7, this.f11496y);
            w0(6, 8, this.f11496y);
        } finally {
            this.f11467d.c();
        }
    }

    public static int l0(boolean z10, int i10) {
        return (!z10 || i10 == 1) ? 1 : 2;
    }

    public static long n0(l1 l1Var) {
        b2.d dVar = new b2.d();
        b2.b bVar = new b2.b();
        l1Var.f11516a.j(l1Var.f11517b.f13238a, bVar);
        long j10 = l1Var.f11518c;
        return j10 == -9223372036854775807L ? l1Var.f11516a.p(bVar.f11297j, dVar).f11320t : bVar.f11299l + j10;
    }

    public static boolean o0(l1 l1Var) {
        return l1Var.f11520e == 3 && l1Var.f11527l && l1Var.f11528m == 0;
    }

    @Override // n3.o1
    public final n5.t A() {
        H0();
        return this.f11475h0;
    }

    public final void A0(float f10) {
        H0();
        final float fH = m5.g0.h(0.0f, 0.0f, 1.0f);
        if (this.f11464b0 == fH) {
            return;
        }
        this.f11464b0 = fH;
        w0(1, 2, Float.valueOf(this.A.f11351g * fH));
        this.f11482l.d(22, new m5.o.a() { // from class: n3.b0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((o1.c) obj).R(fH);
            }
        });
    }

    @Override // n3.o1
    public final int B() {
        H0();
        if (j()) {
            return this.f11479j0.f11517b.f13239b;
        }
        return -1;
    }

    public final void B0() {
        H0();
        H0();
        this.A.e(p(), 1);
        C0(null);
        this.d0 = z4.c.f19328i;
    }

    @Override // n3.o1
    public final int C() {
        H0();
        int iK0 = k0();
        if (iK0 == -1) {
            return 0;
        }
        return iK0;
    }

    public final void C0(q qVar) {
        l1 l1Var = this.f11479j0;
        l1 l1VarA = l1Var.a(l1Var.f11517b);
        l1VarA.f11531p = l1VarA.f11533r;
        l1VarA.f11532q = 0L;
        l1 l1VarF = l1VarA.f(1);
        if (qVar != null) {
            l1VarF = l1VarF.d(qVar);
        }
        l1 l1Var2 = l1VarF;
        this.H++;
        ((m5.b0.a) this.f11480k.f11564o.j(6)).b();
        F0(l1Var2, 0, 1, false, l1Var2.f11516a.s() && !this.f11479j0.f11516a.s(), 4, j0(l1Var2), -1);
    }

    public final void D0() {
        o1.a aVar = this.N;
        o1 o1Var = this.f11470f;
        o1.a aVar2 = this.f11465c;
        int i10 = m5.g0.f10384a;
        boolean zJ = o1Var.j();
        boolean zQ = o1Var.q();
        boolean zF = o1Var.F();
        boolean zV = o1Var.v();
        boolean zD0 = o1Var.d0();
        boolean zK = o1Var.K();
        boolean zS = o1Var.O().s();
        o1.a.C0214a c0214a = new o1.a.C0214a();
        c0214a.a(aVar2);
        boolean z10 = !zJ;
        c0214a.b(4, z10);
        boolean z11 = false;
        c0214a.b(5, zQ && !zJ);
        c0214a.b(6, zF && !zJ);
        c0214a.b(7, !zS && (zF || !zD0 || zQ) && !zJ);
        c0214a.b(8, zV && !zJ);
        c0214a.b(9, !zS && (zV || (zD0 && zK)) && !zJ);
        c0214a.b(10, z10);
        c0214a.b(11, zQ && !zJ);
        if (zQ && !zJ) {
            z11 = true;
        }
        c0214a.b(12, z11);
        o1.a aVarC = c0214a.c();
        this.N = aVarC;
        if (aVarC.equals(aVar)) {
            return;
        }
        this.f11482l.b(13, new y(this));
    }

    @Override // n3.o1
    public final void E(final int i10) {
        H0();
        if (this.F != i10) {
            this.F = i10;
            ((m5.b0.a) this.f11480k.f11564o.d(11, i10, 0)).b();
            this.f11482l.b(8, new m5.o.a() { // from class: n3.c0
                @Override // m5.o.a
                public final void invoke(Object obj) {
                    ((o1.c) obj).K(i10);
                }
            });
            D0();
            this.f11482l.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void E0(boolean z10, int i10, int i11) {
        int i12 = 0;
        ?? r10 = (!z10 || i10 == -1) ? 0 : 1;
        if (r10 != 0 && i10 != 1) {
            i12 = 1;
        }
        l1 l1Var = this.f11479j0;
        if (l1Var.f11527l == r10 && l1Var.f11528m == i12) {
            return;
        }
        this.H++;
        l1 l1VarC = l1Var.c(r10, i12);
        ((m5.b0.a) this.f11480k.f11564o.d(1, r10, i12)).b();
        F0(l1VarC, 0, i11, false, false, 5, -9223372036854775807L, -1);
    }

    public final void F0(final l1 l1Var, final int i10, final int i11, boolean z10, boolean z11, final int i12, long j10, int i13) {
        Pair pair;
        int i14;
        final y0 y0Var;
        boolean z12;
        int i15;
        int i16;
        Object obj;
        y0 y0Var2;
        Object obj2;
        int iD;
        long jN0;
        long jN1;
        Object obj3;
        y0 y0Var3;
        Object obj4;
        int iD2;
        l1 l1Var2 = this.f11479j0;
        this.f11479j0 = l1Var;
        boolean z13 = !l1Var2.f11516a.equals(l1Var.f11516a);
        b2 b2Var = l1Var2.f11516a;
        b2 b2Var2 = l1Var.f11516a;
        if (b2Var2.s() && b2Var.s()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else if (b2Var2.s() != b2Var.s()) {
            pair = new Pair(Boolean.TRUE, 3);
        } else if (b2Var.p(b2Var.j(l1Var2.f11517b.f13238a, this.f11485n).f11297j, this.f11362a).f11308h.equals(b2Var2.p(b2Var2.j(l1Var.f11517b.f13238a, this.f11485n).f11297j, this.f11362a).f11308h)) {
            pair = (z11 && i12 == 0 && l1Var2.f11517b.f13241d < l1Var.f11517b.f13241d) ? new Pair(Boolean.TRUE, 0) : new Pair(Boolean.FALSE, -1);
        } else {
            if (z11 && i12 == 0) {
                i14 = 1;
            } else if (z11 && i12 == 1) {
                i14 = 2;
            } else {
                if (!z13) {
                    throw new IllegalStateException();
                }
                i14 = 3;
            }
            pair = new Pair(Boolean.TRUE, Integer.valueOf(i14));
        }
        boolean zBooleanValue = ((Boolean) pair.first).booleanValue();
        final int iIntValue = ((Integer) pair.second).intValue();
        a1 a1VarG0 = this.O;
        if (zBooleanValue) {
            y0Var = l1Var.f11516a.s() ? null : l1Var.f11516a.p(l1Var.f11516a.j(l1Var.f11517b.f13238a, this.f11485n).f11297j, this.f11362a).f11310j;
            this.f11477i0 = a1.N;
        } else {
            y0Var = null;
        }
        if (zBooleanValue || !l1Var2.f11525j.equals(l1Var.f11525j)) {
            a1.a aVar = new a1.a(this.f11477i0);
            List<f4.a> list = l1Var.f11525j;
            for (int i17 = 0; i17 < list.size(); i17++) {
                f4.a aVar2 = list.get(i17);
                int i18 = 0;
                while (true) {
                    f4.a.b[] bVarArr = aVar2.f7052h;
                    if (i18 < bVarArr.length) {
                        bVarArr[i18].i(aVar);
                        i18++;
                    }
                }
            }
            this.f11477i0 = new a1(aVar);
            a1VarG0 = g0();
        }
        boolean z14 = !a1VarG0.equals(this.O);
        this.O = a1VarG0;
        boolean z15 = l1Var2.f11527l != l1Var.f11527l;
        boolean z16 = l1Var2.f11520e != l1Var.f11520e;
        if (z16 || z15) {
            G0();
        }
        boolean z17 = l1Var2.f11522g != l1Var.f11522g;
        if (!l1Var2.f11516a.equals(l1Var.f11516a)) {
            this.f11482l.b(0, new m5.o.a() { // from class: n3.h0
                @Override // m5.o.a
                public final void invoke(Object obj5) {
                    l1 l1Var3 = l1Var;
                    int i19 = i10;
                    b2 b2Var3 = l1Var3.f11516a;
                    ((o1.c) obj5).G(i19);
                }
            });
        }
        if (z11) {
            b2.b bVar = new b2.b();
            if (l1Var2.f11516a.s()) {
                i16 = i13;
                obj = null;
                y0Var2 = null;
                obj2 = null;
                iD = -1;
            } else {
                Object obj5 = l1Var2.f11517b.f13238a;
                l1Var2.f11516a.j(obj5, bVar);
                int i19 = bVar.f11297j;
                iD = l1Var2.f11516a.d(obj5);
                obj = l1Var2.f11516a.p(i19, this.f11362a).f11308h;
                y0Var2 = this.f11362a.f11310j;
                obj2 = obj5;
                i16 = i19;
            }
            if (i12 != 0) {
                z12 = z17;
                if (l1Var2.f11517b.a()) {
                    jN0 = l1Var2.f11533r;
                    jN1 = n0(l1Var2);
                } else {
                    jN0 = bVar.f11299l + l1Var2.f11533r;
                    jN1 = jN0;
                }
            } else if (l1Var2.f11517b.a()) {
                p4.x.b bVar2 = l1Var2.f11517b;
                jN0 = bVar.b(bVar2.f13239b, bVar2.f13240c);
                jN1 = n0(l1Var2);
                z12 = z17;
            } else {
                if (l1Var2.f11517b.f13242e != -1) {
                    jN0 = n0(this.f11479j0);
                    z12 = z17;
                } else {
                    z12 = z17;
                    jN0 = bVar.f11299l + bVar.f11298k;
                }
                jN1 = jN0;
            }
            long jX = m5.g0.X(jN0);
            long jX2 = m5.g0.X(jN1);
            p4.x.b bVar3 = l1Var2.f11517b;
            final o1.d dVar = new o1.d(obj, i16, y0Var2, obj2, iD, jX, jX2, bVar3.f13239b, bVar3.f13240c);
            int iC = C();
            if (this.f11479j0.f11516a.s()) {
                obj3 = null;
                y0Var3 = null;
                obj4 = null;
                iD2 = -1;
            } else {
                l1 l1Var3 = this.f11479j0;
                Object obj6 = l1Var3.f11517b.f13238a;
                l1Var3.f11516a.j(obj6, this.f11485n);
                iD2 = this.f11479j0.f11516a.d(obj6);
                obj3 = this.f11479j0.f11516a.p(iC, this.f11362a).f11308h;
                obj4 = obj6;
                y0Var3 = this.f11362a.f11310j;
            }
            long jX3 = m5.g0.X(j10);
            long jX4 = this.f11479j0.f11517b.a() ? m5.g0.X(n0(this.f11479j0)) : jX3;
            p4.x.b bVar4 = this.f11479j0.f11517b;
            final o1.d dVar2 = new o1.d(obj3, iC, y0Var3, obj4, iD2, jX3, jX4, bVar4.f13239b, bVar4.f13240c);
            this.f11482l.b(11, new m5.o.a() { // from class: n3.e0
                @Override // m5.o.a
                public final void invoke(Object obj7) {
                    int i20 = i12;
                    o1.d dVar3 = dVar;
                    o1.d dVar4 = dVar2;
                    o1.c cVar = (o1.c) obj7;
                    cVar.r();
                    cVar.g0(dVar3, dVar4, i20);
                }
            });
        } else {
            z12 = z17;
        }
        if (zBooleanValue) {
            this.f11482l.b(1, new m5.o.a() { // from class: n3.f0
                @Override // m5.o.a
                public final void invoke(Object obj7) {
                    ((o1.c) obj7).Z(y0Var, iIntValue);
                }
            });
        }
        if (l1Var2.f11521f != l1Var.f11521f) {
            this.f11482l.b(10, new x(l1Var, 0));
            if (l1Var.f11521f != null) {
                this.f11482l.b(10, new y0.c0(l1Var, 1));
            }
        }
        j5.t tVar = l1Var2.f11524i;
        j5.t tVar2 = l1Var.f11524i;
        if (tVar != tVar2) {
            this.f11474h.a(tVar2.f9441e);
            i15 = 1;
            this.f11482l.b(2, new y0.b0(l1Var, i15));
        } else {
            i15 = 1;
        }
        if (z14) {
            this.f11482l.b(14, new z(this.O, i15));
        }
        if (z12) {
            this.f11482l.b(3, new a0(l1Var));
        }
        if (z16 || z15) {
            this.f11482l.b(-1, new w(l1Var, 0));
        }
        if (z16) {
            this.f11482l.b(4, new y0.c(l1Var, 1));
        }
        if (z15) {
            this.f11482l.b(5, new m5.o.a() { // from class: n3.i0
                @Override // m5.o.a
                public final void invoke(Object obj7) {
                    l1 l1Var4 = l1Var;
                    ((o1.c) obj7).V(l1Var4.f11527l, i11);
                }
            });
        }
        if (l1Var2.f11528m != l1Var.f11528m) {
            this.f11482l.b(6, new o3.c(l1Var, 2));
        }
        if (o0(l1Var2) != o0(l1Var)) {
            this.f11482l.b(7, new m0.b(l1Var, 1));
        }
        if (!l1Var2.f11529n.equals(l1Var.f11529n)) {
            this.f11482l.b(12, new m5.o.a() { // from class: n3.g0
                @Override // m5.o.a
                public final void invoke(Object obj7) {
                    ((o1.c) obj7).a0(l1Var.f11529n);
                }
            });
        }
        if (z10) {
            this.f11482l.b(-1, y0.l.f18241d);
        }
        D0();
        this.f11482l.a();
        if (l1Var2.f11530o != l1Var.f11530o) {
            Iterator<r.a> it = this.f11484m.iterator();
            while (it.hasNext()) {
                it.next().i();
            }
        }
    }

    @Override // n3.o1
    public final int G() {
        H0();
        if (j()) {
            return this.f11479j0.f11517b.f13240c;
        }
        return -1;
    }

    public final void G0() {
        int iS = s();
        if (iS != 1) {
            if (iS == 2 || iS == 3) {
                H0();
                this.C.a(p() && !this.f11479j0.f11530o);
                this.D.a(p());
                return;
            }
            if (iS != 4) {
                throw new IllegalStateException();
            }
        }
        this.C.a(false);
        this.D.a(false);
    }

    @Override // n3.o1
    public final void H(o1.c cVar) {
        Objects.requireNonNull(cVar);
        m5.o<o1.c> oVar = this.f11482l;
        for (m5.o.c<o1.c> cVar2 : oVar.f10420d) {
            if (cVar2.f10424a.equals(cVar)) {
                m5.o.b<o1.c> bVar = oVar.f10419c;
                cVar2.f10427d = true;
                if (cVar2.f10426c) {
                    bVar.a(cVar2.f10424a, cVar2.f10425b.b());
                }
                oVar.f10420d.remove(cVar2);
            }
        }
    }

    public final void H0() {
        this.f11467d.a();
        if (Thread.currentThread() != this.f11490s.getThread()) {
            String strM = m5.g0.m("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.f11490s.getThread().getName());
            if (this.f11469e0) {
                throw new IllegalStateException(strM);
            }
            m5.p.h("ExoPlayerImpl", strM, this.f11471f0 ? null : new IllegalStateException());
            this.f11471f0 = true;
        }
    }

    @Override // n3.o1
    public final void I(SurfaceView surfaceView) {
        H0();
        if (surfaceView instanceof n5.j) {
            v0();
            z0(surfaceView);
            x0(surfaceView.getHolder());
            return;
        }
        if (surfaceView instanceof o5.j) {
            v0();
            this.T = (o5.j) surfaceView;
            p1 p1VarI0 = i0(this.f11496y);
            p1VarI0.e(10000);
            p1VarI0.d(this.T);
            p1VarI0.c();
            this.T.f12324h.add(this.f11495x);
            z0(this.T.getVideoSurface());
            x0(surfaceView.getHolder());
            return;
        }
        SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
        H0();
        if (holder == null) {
            h0();
            return;
        }
        v0();
        this.U = true;
        this.S = holder;
        holder.addCallback(this.f11495x);
        Surface surface = holder.getSurface();
        if (surface == null || !surface.isValid()) {
            z0(null);
            r0(0, 0);
        } else {
            z0(surface);
            Rect surfaceFrame = holder.getSurfaceFrame();
            r0(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // n3.o1
    public final void J(SurfaceView surfaceView) {
        H0();
        SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
        H0();
        if (holder == null || holder != this.S) {
            return;
        }
        h0();
    }

    @Override // n3.o1
    public final int L() {
        H0();
        return this.f11479j0.f11528m;
    }

    @Override // n3.o1
    public final int M() {
        H0();
        return this.F;
    }

    @Override // n3.o1
    public final long N() {
        H0();
        if (j()) {
            l1 l1Var = this.f11479j0;
            p4.x.b bVar = l1Var.f11517b;
            l1Var.f11516a.j(bVar.f13238a, this.f11485n);
            return m5.g0.X(this.f11485n.b(bVar.f13239b, bVar.f13240c));
        }
        b2 b2VarO = O();
        if (b2VarO.s()) {
            return -9223372036854775807L;
        }
        return b2VarO.p(C(), this.f11362a).c();
    }

    @Override // n3.o1
    public final b2 O() {
        H0();
        return this.f11479j0.f11516a;
    }

    @Override // n3.o1
    public final Looper P() {
        return this.f11490s;
    }

    @Override // n3.o1
    public final boolean Q() {
        H0();
        return this.G;
    }

    @Override // n3.o1
    public final long S() {
        H0();
        if (this.f11479j0.f11516a.s()) {
            return this.f11483l0;
        }
        l1 l1Var = this.f11479j0;
        if (l1Var.f11526k.f13241d != l1Var.f11517b.f13241d) {
            return l1Var.f11516a.p(C(), this.f11362a).c();
        }
        long j10 = l1Var.f11531p;
        if (this.f11479j0.f11526k.a()) {
            l1 l1Var2 = this.f11479j0;
            b2.b bVarJ = l1Var2.f11516a.j(l1Var2.f11526k.f13238a, this.f11485n);
            long jE = bVarJ.e(this.f11479j0.f11526k.f13239b);
            j10 = jE == Long.MIN_VALUE ? bVarJ.f11298k : jE;
        }
        l1 l1Var3 = this.f11479j0;
        return m5.g0.X(s0(l1Var3.f11516a, l1Var3.f11526k, j10));
    }

    @Override // n3.o1
    public final void V(TextureView textureView) {
        H0();
        if (textureView == null) {
            h0();
            return;
        }
        v0();
        this.V = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            m5.p.g("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f11495x);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            z0(null);
            r0(0, 0);
        } else {
            Surface surface = new Surface(surfaceTexture);
            z0(surface);
            this.R = surface;
            r0(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // n3.o1
    public final a1 X() {
        H0();
        return this.O;
    }

    /* JADX WARN: Type inference failed for: r2v18, types: [java.util.ArrayList, java.util.List<n3.k0$d>] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.ArrayList, java.util.List<n3.k0$d>] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.ArrayList, java.util.List<n3.k0$d>] */
    @Override // n3.o1
    public final void Y(List list) {
        H0();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(this.f11488q.c((y0) list.get(i10)));
        }
        H0();
        k0();
        b0();
        this.H++;
        if (!this.f11486o.isEmpty()) {
            u0(this.f11486o.size());
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            h1.c cVar = new h1.c((p4.x) arrayList.get(i11), this.f11487p);
            arrayList2.add(cVar);
            this.f11486o.add(i11 + 0, new d(cVar.f11421b, cVar.f11420a.f13211v));
        }
        this.M = this.M.d(arrayList2.size());
        q1 q1Var = new q1(this.f11486o, this.M);
        if (!q1Var.s() && -1 >= q1Var.f11640m) {
            throw new v0();
        }
        int iC = q1Var.c(this.G);
        l1 l1VarP0 = p0(this.f11479j0, q1Var, q0(q1Var, iC, -9223372036854775807L));
        int i12 = l1VarP0.f11520e;
        if (iC != -1 && i12 != 1) {
            i12 = (q1Var.s() || iC >= q1Var.f11640m) ? 4 : 2;
        }
        l1 l1VarF = l1VarP0.f(i12);
        ((m5.b0.a) this.f11480k.f11564o.g(17, new o0.a(arrayList2, this.M, iC, m5.g0.L(-9223372036854775807L), null))).b();
        F0(l1VarF, 0, 1, false, (this.f11479j0.f11517b.f13238a.equals(l1VarF.f11517b.f13238a) || this.f11479j0.f11516a.s()) ? false : true, 4, j0(l1VarF), -1);
    }

    @Override // n3.o1
    public final void a0(o1.c cVar) {
        Objects.requireNonNull(cVar);
        m5.o<o1.c> oVar = this.f11482l;
        if (oVar.f10423g) {
            return;
        }
        oVar.f10420d.add(new m5.o.c<>(cVar));
    }

    @Override // n3.o1
    public final void b() {
        H0();
        boolean zP = p();
        int iE = this.A.e(zP, 2);
        E0(zP, iE, l0(zP, iE));
        l1 l1Var = this.f11479j0;
        if (l1Var.f11520e != 1) {
            return;
        }
        l1 l1VarD = l1Var.d(null);
        l1 l1VarF = l1VarD.f(l1VarD.f11516a.s() ? 4 : 2);
        this.H++;
        ((m5.b0.a) this.f11480k.f11564o.j(0)).b();
        F0(l1VarF, 1, 1, false, false, 5, -9223372036854775807L, -1);
    }

    @Override // n3.o1
    public final long b0() {
        H0();
        return m5.g0.X(j0(this.f11479j0));
    }

    @Override // n3.o1
    public final long c0() {
        H0();
        return this.f11492u;
    }

    @Override // n3.o1
    public final m1 d() {
        H0();
        return this.f11479j0.f11529n;
    }

    public final a1 g0() {
        b2 b2VarO = O();
        if (b2VarO.s()) {
            return this.f11477i0;
        }
        y0 y0Var = b2VarO.p(C(), this.f11362a).f11310j;
        a1.a aVarB = this.f11477i0.b();
        a1 a1Var = y0Var.f11750k;
        if (a1Var != null) {
            CharSequence charSequence = a1Var.f11223h;
            if (charSequence != null) {
                aVarB.f11242a = charSequence;
            }
            CharSequence charSequence2 = a1Var.f11224i;
            if (charSequence2 != null) {
                aVarB.f11243b = charSequence2;
            }
            CharSequence charSequence3 = a1Var.f11225j;
            if (charSequence3 != null) {
                aVarB.f11244c = charSequence3;
            }
            CharSequence charSequence4 = a1Var.f11226k;
            if (charSequence4 != null) {
                aVarB.f11245d = charSequence4;
            }
            CharSequence charSequence5 = a1Var.f11227l;
            if (charSequence5 != null) {
                aVarB.f11246e = charSequence5;
            }
            CharSequence charSequence6 = a1Var.f11228m;
            if (charSequence6 != null) {
                aVarB.f11247f = charSequence6;
            }
            CharSequence charSequence7 = a1Var.f11229n;
            if (charSequence7 != null) {
                aVarB.f11248g = charSequence7;
            }
            r1 r1Var = a1Var.f11230o;
            if (r1Var != null) {
                aVarB.f11249h = r1Var;
            }
            r1 r1Var2 = a1Var.f11231p;
            if (r1Var2 != null) {
                aVarB.f11250i = r1Var2;
            }
            byte[] bArr = a1Var.f11232q;
            if (bArr != null) {
                Integer num = a1Var.f11233r;
                aVarB.f11251j = (byte[]) bArr.clone();
                aVarB.f11252k = num;
            }
            Uri uri = a1Var.f11234s;
            if (uri != null) {
                aVarB.f11253l = uri;
            }
            Integer num2 = a1Var.f11235t;
            if (num2 != null) {
                aVarB.f11254m = num2;
            }
            Integer num3 = a1Var.f11236u;
            if (num3 != null) {
                aVarB.f11255n = num3;
            }
            Integer num4 = a1Var.f11237v;
            if (num4 != null) {
                aVarB.f11256o = num4;
            }
            Boolean bool = a1Var.f11238w;
            if (bool != null) {
                aVarB.f11257p = bool;
            }
            Integer num5 = a1Var.f11239x;
            if (num5 != null) {
                aVarB.f11258q = num5;
            }
            Integer num6 = a1Var.f11240y;
            if (num6 != null) {
                aVarB.f11258q = num6;
            }
            Integer num7 = a1Var.f11241z;
            if (num7 != null) {
                aVarB.f11259r = num7;
            }
            Integer num8 = a1Var.A;
            if (num8 != null) {
                aVarB.f11260s = num8;
            }
            Integer num9 = a1Var.B;
            if (num9 != null) {
                aVarB.f11261t = num9;
            }
            Integer num10 = a1Var.C;
            if (num10 != null) {
                aVarB.f11262u = num10;
            }
            Integer num11 = a1Var.D;
            if (num11 != null) {
                aVarB.f11263v = num11;
            }
            CharSequence charSequence8 = a1Var.E;
            if (charSequence8 != null) {
                aVarB.f11264w = charSequence8;
            }
            CharSequence charSequence9 = a1Var.F;
            if (charSequence9 != null) {
                aVarB.f11265x = charSequence9;
            }
            CharSequence charSequence10 = a1Var.G;
            if (charSequence10 != null) {
                aVarB.f11266y = charSequence10;
            }
            Integer num12 = a1Var.H;
            if (num12 != null) {
                aVarB.f11267z = num12;
            }
            Integer num13 = a1Var.I;
            if (num13 != null) {
                aVarB.A = num13;
            }
            CharSequence charSequence11 = a1Var.J;
            if (charSequence11 != null) {
                aVarB.B = charSequence11;
            }
            CharSequence charSequence12 = a1Var.K;
            if (charSequence12 != null) {
                aVarB.C = charSequence12;
            }
            CharSequence charSequence13 = a1Var.L;
            if (charSequence13 != null) {
                aVarB.D = charSequence13;
            }
            Bundle bundle = a1Var.M;
            if (bundle != null) {
                aVarB.E = bundle;
            }
        }
        return aVarB.a();
    }

    public final void h0() {
        H0();
        v0();
        z0(null);
        r0(0, 0);
    }

    @Override // n3.o1
    public final void i(boolean z10) {
        H0();
        int iE = this.A.e(z10, s());
        E0(z10, iE, l0(z10, iE));
    }

    public final p1 i0(p1.b bVar) {
        int iK0 = k0();
        o0 o0Var = this.f11480k;
        b2 b2Var = this.f11479j0.f11516a;
        if (iK0 == -1) {
            iK0 = 0;
        }
        return new p1(o0Var, bVar, b2Var, iK0, this.f11494w, o0Var.f11566q);
    }

    @Override // n3.o1
    public final boolean j() {
        H0();
        return this.f11479j0.f11517b.a();
    }

    public final long j0(l1 l1Var) {
        if (l1Var.f11516a.s()) {
            return m5.g0.L(this.f11483l0);
        }
        return l1Var.f11517b.a() ? l1Var.f11533r : s0(l1Var.f11516a, l1Var.f11517b, l1Var.f11533r);
    }

    @Override // n3.o1
    public final long k() {
        H0();
        return this.f11493v;
    }

    public final int k0() {
        if (this.f11479j0.f11516a.s()) {
            return this.f11481k0;
        }
        l1 l1Var = this.f11479j0;
        return l1Var.f11516a.j(l1Var.f11517b.f13238a, this.f11485n).f11297j;
    }

    @Override // n3.o1
    public final long l() {
        H0();
        if (!j()) {
            return b0();
        }
        l1 l1Var = this.f11479j0;
        l1Var.f11516a.j(l1Var.f11517b.f13238a, this.f11485n);
        l1 l1Var2 = this.f11479j0;
        return l1Var2.f11518c == -9223372036854775807L ? l1Var2.f11516a.p(C(), this.f11362a).b() : m5.g0.X(this.f11485n.f11299l) + m5.g0.X(this.f11479j0.f11518c);
    }

    @Override // n3.o1
    public final long m() {
        H0();
        return m5.g0.X(this.f11479j0.f11532q);
    }

    @Override // n3.o1
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public final q h() {
        H0();
        return this.f11479j0.f11521f;
    }

    @Override // n3.o1
    public final void n(int i10, long j10) {
        H0();
        this.f11489r.b0();
        b2 b2Var = this.f11479j0.f11516a;
        if (i10 < 0 || (!b2Var.s() && i10 >= b2Var.r())) {
            throw new v0();
        }
        int i11 = 1;
        this.H++;
        if (j()) {
            m5.p.g("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            o0.d dVar = new o0.d(this.f11479j0);
            dVar.a(1);
            k0 k0Var = (k0) this.f11478j.f11222b;
            k0Var.f11476i.i(new y0.v(k0Var, dVar, i11));
            return;
        }
        i11 = s() != 1 ? 2 : 1;
        int iC = C();
        l1 l1VarP0 = p0(this.f11479j0.f(i11), b2Var, q0(b2Var, i10, j10));
        ((m5.b0.a) this.f11480k.f11564o.g(3, new o0.g(b2Var, i10, m5.g0.L(j10)))).b();
        F0(l1VarP0, 0, 1, true, true, 1, j0(l1VarP0), iC);
    }

    @Override // n3.o1
    public final o1.a o() {
        H0();
        return this.N;
    }

    @Override // n3.o1
    public final boolean p() {
        H0();
        return this.f11479j0.f11527l;
    }

    public final l1 p0(l1 l1Var, b2 b2Var, Pair<Object, Long> pair) {
        List<f4.a> list;
        m5.a.a(b2Var.s() || pair != null);
        b2 b2Var2 = l1Var.f11516a;
        l1 l1VarG = l1Var.g(b2Var);
        if (b2Var.s()) {
            p4.x.b bVar = l1.f11515s;
            p4.x.b bVar2 = l1.f11515s;
            long jL = m5.g0.L(this.f11483l0);
            l1 l1VarA = l1VarG.b(bVar2, jL, jL, jL, 0L, p4.u0.f13233k, this.f11463b, u6.p0.f15967l).a(bVar2);
            l1VarA.f11531p = l1VarA.f11533r;
            return l1VarA;
        }
        Object obj = l1VarG.f11517b.f13238a;
        int i10 = m5.g0.f10384a;
        boolean z10 = !obj.equals(pair.first);
        p4.x.b bVar3 = z10 ? new p4.x.b(pair.first) : l1VarG.f11517b;
        long jLongValue = ((Long) pair.second).longValue();
        long jL2 = m5.g0.L(l());
        if (!b2Var2.s()) {
            jL2 -= b2Var2.j(obj, this.f11485n).f11299l;
        }
        if (z10 || jLongValue < jL2) {
            m5.a.e(!bVar3.a());
            p4.u0 u0Var = z10 ? p4.u0.f13233k : l1VarG.f11523h;
            j5.t tVar = z10 ? this.f11463b : l1VarG.f11524i;
            if (z10) {
                u6.a aVar = u6.v.f16002i;
                list = u6.p0.f15967l;
            } else {
                list = l1VarG.f11525j;
            }
            l1 l1VarA2 = l1VarG.b(r0, jLongValue, jLongValue, jLongValue, 0L, u0Var, tVar, list).a(bVar3);
            l1VarA2.f11531p = jLongValue;
            return l1VarA2;
        }
        if (jLongValue == jL2) {
            int iD = b2Var.d(l1VarG.f11526k.f13238a);
            if (iD == -1 || b2Var.i(iD, this.f11485n, false).f11297j != b2Var.j(bVar3.f13238a, this.f11485n).f11297j) {
                b2Var.j(bVar3.f13238a, this.f11485n);
                long jB = bVar3.a() ? this.f11485n.b(bVar3.f13239b, bVar3.f13240c) : this.f11485n.f11298k;
                l1VarG = l1VarG.b(bVar3, l1VarG.f11533r, l1VarG.f11533r, l1VarG.f11519d, jB - l1VarG.f11533r, l1VarG.f11523h, l1VarG.f11524i, l1VarG.f11525j).a(bVar3);
                l1VarG.f11531p = jB;
            }
        } else {
            m5.a.e(!bVar3.a());
            long jMax = Math.max(0L, l1VarG.f11532q - (jLongValue - jL2));
            long j10 = l1VarG.f11531p;
            if (l1VarG.f11526k.equals(l1VarG.f11517b)) {
                j10 = jLongValue + jMax;
            }
            l1VarG = l1VarG.b(bVar3, jLongValue, jLongValue, jLongValue, jMax, l1VarG.f11523h, l1VarG.f11524i, l1VarG.f11525j);
            l1VarG.f11531p = j10;
        }
        return l1VarG;
    }

    public final Pair<Object, Long> q0(b2 b2Var, int i10, long j10) {
        if (b2Var.s()) {
            this.f11481k0 = i10;
            if (j10 == -9223372036854775807L) {
                j10 = 0;
            }
            this.f11483l0 = j10;
            return null;
        }
        if (i10 == -1 || i10 >= b2Var.r()) {
            i10 = b2Var.c(this.G);
            j10 = b2Var.p(i10, this.f11362a).b();
        }
        return b2Var.l(this.f11362a, this.f11485n, i10, m5.g0.L(j10));
    }

    @Override // n3.o1
    public final void r(final boolean z10) {
        H0();
        if (this.G != z10) {
            this.G = z10;
            ((m5.b0.a) this.f11480k.f11564o.d(12, z10 ? 1 : 0, 0)).b();
            this.f11482l.b(9, new m5.o.a() { // from class: n3.j0
                @Override // m5.o.a
                public final void invoke(Object obj) {
                    ((o1.c) obj).e0(z10);
                }
            });
            D0();
            this.f11482l.a();
        }
    }

    public final void r0(final int i10, final int i11) {
        if (i10 == this.X && i11 == this.Y) {
            return;
        }
        this.X = i10;
        this.Y = i11;
        this.f11482l.d(24, new m5.o.a() { // from class: n3.d0
            @Override // m5.o.a
            public final void invoke(Object obj) {
                ((o1.c) obj).f0(i10, i11);
            }
        });
    }

    @Override // n3.o1
    public final int s() {
        H0();
        return this.f11479j0.f11520e;
    }

    public final long s0(b2 b2Var, p4.x.b bVar, long j10) {
        b2Var.j(bVar.f13238a, this.f11485n);
        return j10 + this.f11485n.f11299l;
    }

    @Override // n3.o1
    public final c2 t() {
        H0();
        return this.f11479j0.f11524i.f9440d;
    }

    public final void t0() {
        String str;
        boolean z10;
        AudioTrack audioTrack;
        StringBuilder sbC = a0.b.c("Release ");
        sbC.append(Integer.toHexString(System.identityHashCode(this)));
        sbC.append(" [");
        sbC.append("ExoPlayerLib/2.18.1");
        sbC.append("] [");
        sbC.append(m5.g0.f10388e);
        sbC.append("] [");
        HashSet<String> hashSet = p0.f11620a;
        synchronized (p0.class) {
            str = p0.f11621b;
        }
        sbC.append(str);
        sbC.append("]");
        m5.p.e("ExoPlayerImpl", sbC.toString());
        H0();
        if (m5.g0.f10384a < 21 && (audioTrack = this.P) != null) {
            audioTrack.release();
            this.P = null;
        }
        this.f11497z.a();
        z1 z1Var = this.B;
        z1.b bVar = z1Var.f11851e;
        if (bVar != null) {
            try {
                z1Var.f11847a.unregisterReceiver(bVar);
            } catch (RuntimeException e10) {
                m5.p.h("StreamVolumeManager", "Error unregistering stream volume receiver", e10);
            }
            z1Var.f11851e = null;
        }
        this.C.f11361b = false;
        this.D.f11380b = false;
        n3.d dVar = this.A;
        dVar.f11347c = null;
        dVar.a();
        o0 o0Var = this.f11480k;
        synchronized (o0Var) {
            int i10 = 1;
            if (o0Var.G || !o0Var.f11565p.isAlive()) {
                z10 = true;
            } else {
                o0Var.f11564o.e(7);
                o0Var.n0(new s(o0Var, i10), o0Var.C);
                z10 = o0Var.G;
            }
        }
        if (!z10) {
            this.f11482l.d(10, n.f11543d);
        }
        this.f11482l.c();
        this.f11476i.a();
        this.f11491t.d(this.f11489r);
        l1 l1VarF = this.f11479j0.f(1);
        this.f11479j0 = l1VarF;
        l1 l1VarA = l1VarF.a(l1VarF.f11517b);
        this.f11479j0 = l1VarA;
        l1VarA.f11531p = l1VarA.f11533r;
        this.f11479j0.f11532q = 0L;
        this.f11489r.a();
        this.f11474h.b();
        v0();
        Surface surface = this.R;
        if (surface != null) {
            surface.release();
            this.R = null;
        }
        this.d0 = z4.c.f19328i;
    }

    @Override // n3.o1
    public final void u() {
        H0();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<n3.k0$d>] */
    public final void u0(int i10) {
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            this.f11486o.remove(i11);
        }
        this.M = this.M.e(i10);
    }

    public final void v0() {
        if (this.T != null) {
            p1 p1VarI0 = i0(this.f11496y);
            p1VarI0.e(10000);
            p1VarI0.d(null);
            p1VarI0.c();
            o5.j jVar = this.T;
            jVar.f12324h.remove(this.f11495x);
            this.T = null;
        }
        TextureView textureView = this.V;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f11495x) {
                m5.p.g("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.V.setSurfaceTextureListener(null);
            }
            this.V = null;
        }
        SurfaceHolder surfaceHolder = this.S;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f11495x);
            this.S = null;
        }
    }

    public final void w0(int i10, int i11, Object obj) {
        for (s1 s1Var : this.f11472g) {
            if (s1Var.u() == i10) {
                p1 p1VarI0 = i0(s1Var);
                p1VarI0.e(i11);
                p1VarI0.d(obj);
                p1VarI0.c();
            }
        }
    }

    @Override // n3.o1
    public final int x() {
        H0();
        if (this.f11479j0.f11516a.s()) {
            return 0;
        }
        l1 l1Var = this.f11479j0;
        return l1Var.f11516a.d(l1Var.f11517b.f13238a);
    }

    public final void x0(SurfaceHolder surfaceHolder) {
        this.U = false;
        this.S = surfaceHolder;
        surfaceHolder.addCallback(this.f11495x);
        Surface surface = this.S.getSurface();
        if (surface == null || !surface.isValid()) {
            r0(0, 0);
        } else {
            Rect surfaceFrame = this.S.getSurfaceFrame();
            r0(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // n3.o1
    public final z4.c y() {
        H0();
        return this.d0;
    }

    public final void y0(m1 m1Var) {
        H0();
        if (this.f11479j0.f11529n.equals(m1Var)) {
            return;
        }
        l1 l1VarE = this.f11479j0.e(m1Var);
        this.H++;
        ((m5.b0.a) this.f11480k.f11564o.g(4, m1Var)).b();
        F0(l1VarE, 0, 1, false, false, 5, -9223372036854775807L, -1);
    }

    @Override // n3.o1
    public final void z(TextureView textureView) {
        H0();
        if (textureView == null || textureView != this.V) {
            return;
        }
        h0();
    }

    public final void z0(Object obj) {
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (s1 s1Var : this.f11472g) {
            if (s1Var.u() == 2) {
                p1 p1VarI0 = i0(s1Var);
                p1VarI0.e(1);
                p1VarI0.d(obj);
                p1VarI0.c();
                arrayList.add(p1VarI0);
            }
        }
        Object obj2 = this.Q;
        if (obj2 != null && obj2 != obj) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((p1) it.next()).a(this.E);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                z10 = true;
            }
            Object obj3 = this.Q;
            Surface surface = this.R;
            if (obj3 == surface) {
                surface.release();
                this.R = null;
            }
        }
        this.Q = obj;
        if (z10) {
            C0(q.d(new q0(3), 1003));
        }
    }
}
