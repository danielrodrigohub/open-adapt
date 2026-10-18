package p3;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import n3.m1;
import n3.s0;
import n3.s1;
import o3.v0;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: compiled from: DefaultAudioSink.java */
/* JADX INFO: loaded from: classes.dex */
public final class w implements q {
    public int A;
    public long B;
    public long C;
    public long D;
    public long E;
    public int F;
    public boolean G;
    public boolean H;
    public long I;
    public float J;
    public p3.f[] K;
    public ByteBuffer[] L;
    public ByteBuffer M;
    public int N;
    public ByteBuffer O;
    public byte[] P;
    public int Q;
    public int R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public int W;
    public t X;
    public boolean Y;
    public long Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p3.e f12846a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f12847a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f12848b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f12849b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f12850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v f12851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g0 f12852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p3.f[] f12853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p3.f[] f12854g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m5.e f12855h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final s f12856i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayDeque<h> f12857j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f12858k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f12859l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public k f12860m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final i<q.b> f12861n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final i<q.e> f12862o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final x f12863p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public v0 f12864q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public q.c f12865r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public f f12866s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public f f12867t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public AudioTrack f12868u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public p3.d f12869v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public h f12870w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public h f12871x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public m1 f12872y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ByteBuffer f12873z;

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public class a extends Thread {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ AudioTrack f12874h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AudioTrack audioTrack) {
            super("ExoPlayer:AudioTrackReleaseThread");
            this.f12874h = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                this.f12874h.flush();
                this.f12874h.release();
            } finally {
                w.this.f12855h.c();
            }
        }
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public static final class b {
        public static void a(AudioTrack audioTrack, v0 v0Var) {
            LogSessionId logSessionIdA = v0Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionIdA);
        }
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public interface c {
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public interface d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final x f12876a = new x(new x.a());
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public static final class e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public g f12878b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f12879c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f12880d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public p3.e f12877a = p3.e.f12706c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f12881e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public x f12882f = d.f12876a;
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s0 f12883a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12884b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12885c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f12886d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f12887e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f12888f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f12889g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f12890h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final p3.f[] f12891i;

        public f(s0 s0Var, int i10, int i11, int i12, int i13, int i14, int i15, int i16, p3.f[] fVarArr) {
            this.f12883a = s0Var;
            this.f12884b = i10;
            this.f12885c = i11;
            this.f12886d = i12;
            this.f12887e = i13;
            this.f12888f = i14;
            this.f12889g = i15;
            this.f12890h = i16;
            this.f12891i = fVarArr;
        }

        public static AudioAttributes d(p3.d dVar, boolean z10) {
            return z10 ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : dVar.b().f12693a;
        }

        public final AudioTrack a(boolean z10, p3.d dVar, int i10) throws q.b {
            try {
                AudioTrack audioTrackB = b(z10, dVar, i10);
                int state = audioTrackB.getState();
                if (state == 1) {
                    return audioTrackB;
                }
                try {
                    audioTrackB.release();
                } catch (Exception unused) {
                }
                throw new q.b(state, this.f12887e, this.f12888f, this.f12890h, this.f12883a, e(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e10) {
                throw new q.b(0, this.f12887e, this.f12888f, this.f12890h, this.f12883a, e(), e10);
            }
        }

        public final AudioTrack b(boolean z10, p3.d dVar, int i10) {
            int i11 = m5.g0.f10384a;
            if (i11 >= 29) {
                return new AudioTrack.Builder().setAudioAttributes(d(dVar, z10)).setAudioFormat(w.A(this.f12887e, this.f12888f, this.f12889g)).setTransferMode(1).setBufferSizeInBytes(this.f12890h).setSessionId(i10).setOffloadedPlayback(this.f12885c == 1).build();
            }
            if (i11 >= 21) {
                return new AudioTrack(d(dVar, z10), w.A(this.f12887e, this.f12888f, this.f12889g), this.f12890h, 1, i10);
            }
            int iB = m5.g0.B(dVar.f12689j);
            return i10 == 0 ? new AudioTrack(iB, this.f12887e, this.f12888f, this.f12889g, this.f12890h, 1) : new AudioTrack(iB, this.f12887e, this.f12888f, this.f12889g, this.f12890h, 1, i10);
        }

        public final long c(long j10) {
            return (j10 * 1000000) / ((long) this.f12887e);
        }

        public final boolean e() {
            return this.f12885c == 1;
        }
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public static class g implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p3.f[] f12892a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d0 f12893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f0 f12894c;

        public g(p3.f... fVarArr) {
            d0 d0Var = new d0();
            f0 f0Var = new f0();
            p3.f[] fVarArr2 = new p3.f[fVarArr.length + 2];
            this.f12892a = fVarArr2;
            System.arraycopy(fVarArr, 0, fVarArr2, 0, fVarArr.length);
            this.f12893b = d0Var;
            this.f12894c = f0Var;
            fVarArr2[fVarArr.length] = d0Var;
            fVarArr2[fVarArr.length + 1] = f0Var;
        }
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m1 f12895a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f12896b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f12897c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f12898d;

        public h(m1 m1Var, boolean z10, long j10, long j11) {
            this.f12895a = m1Var;
            this.f12896b = z10;
            this.f12897c = j10;
            this.f12898d = j11;
        }
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public static final class i<T extends Exception> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public T f12899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f12900b;

        /* JADX INFO: Thrown type has an unknown type hierarchy: T extends java.lang.Exception */
        public final void a(T t10) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f12899a == null) {
                this.f12899a = t10;
                this.f12900b = 100 + jElapsedRealtime;
            }
            if (jElapsedRealtime >= this.f12900b) {
                T t11 = this.f12899a;
                if (t11 != t10) {
                    t11.addSuppressed(t10);
                }
                T t12 = this.f12899a;
                this.f12899a = null;
                throw t12;
            }
        }
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public final class j implements s.a {
        public j() {
        }

        @Override // p3.s.a
        public final void a(final long j10) {
            final p.a aVar;
            Handler handler;
            q.c cVar = w.this.f12865r;
            if (cVar == null || (handler = (aVar = a0.this.N0).f12789a) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: p3.l
                @Override // java.lang.Runnable
                public final void run() {
                    p.a aVar2 = aVar;
                    long j11 = j10;
                    p pVar = aVar2.f12790b;
                    int i10 = m5.g0.f10384a;
                    pVar.p(j11);
                }
            });
        }

        @Override // p3.s.a
        public final void b(final int i10, final long j10) {
            if (w.this.f12865r != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                w wVar = w.this;
                final long j11 = jElapsedRealtime - wVar.Z;
                final p.a aVar = a0.this.N0;
                Handler handler = aVar.f12789a;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: p3.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            p.a aVar2 = aVar;
                            int i11 = i10;
                            long j12 = j10;
                            long j13 = j11;
                            p pVar = aVar2.f12790b;
                            int i12 = m5.g0.f10384a;
                            pVar.A(i11, j12, j13);
                        }
                    });
                }
            }
        }

        @Override // p3.s.a
        public final void c(long j10, long j11, long j12, long j13) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Spurious audio timestamp (frame position mismatch): ");
            sb2.append(j10);
            sb2.append(", ");
            sb2.append(j11);
            sb2.append(", ");
            sb2.append(j12);
            sb2.append(", ");
            sb2.append(j13);
            sb2.append(", ");
            w wVar = w.this;
            f fVar = wVar.f12867t;
            sb2.append(fVar.f12885c == 0 ? wVar.B / ((long) fVar.f12884b) : wVar.C);
            sb2.append(", ");
            sb2.append(w.this.E());
            m5.p.g("DefaultAudioSink", sb2.toString());
        }

        @Override // p3.s.a
        public final void d(long j10, long j11, long j12, long j13) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Spurious audio timestamp (system clock mismatch): ");
            sb2.append(j10);
            sb2.append(", ");
            sb2.append(j11);
            sb2.append(", ");
            sb2.append(j12);
            sb2.append(", ");
            sb2.append(j13);
            sb2.append(", ");
            w wVar = w.this;
            f fVar = wVar.f12867t;
            sb2.append(fVar.f12885c == 0 ? wVar.B / ((long) fVar.f12884b) : wVar.C);
            sb2.append(", ");
            sb2.append(w.this.E());
            m5.p.g("DefaultAudioSink", sb2.toString());
        }

        @Override // p3.s.a
        public final void e(long j10) {
            m5.p.g("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j10);
        }
    }

    /* JADX INFO: compiled from: DefaultAudioSink.java */
    public final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f12902a = new Handler();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final a f12903b = new a();

        /* JADX INFO: compiled from: DefaultAudioSink.java */
        public class a extends AudioTrack.StreamEventCallback {
            public a() {
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public final void onDataRequest(AudioTrack audioTrack, int i10) {
                s1.a aVar;
                m5.a.e(audioTrack == w.this.f12868u);
                w wVar = w.this;
                q.c cVar = wVar.f12865r;
                if (cVar == null || !wVar.U || (aVar = a0.this.W0) == null) {
                    return;
                }
                aVar.b();
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public final void onTearDown(AudioTrack audioTrack) {
                s1.a aVar;
                m5.a.e(audioTrack == w.this.f12868u);
                w wVar = w.this;
                q.c cVar = wVar.f12865r;
                if (cVar == null || !wVar.U || (aVar = a0.this.W0) == null) {
                    return;
                }
                aVar.b();
            }
        }

        public k() {
        }

        public final void a(AudioTrack audioTrack) {
            Handler handler = this.f12902a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new j5.j(handler), this.f12903b);
        }

        public final void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f12903b);
            this.f12902a.removeCallbacksAndMessages(null);
        }
    }

    public w(e eVar) {
        this.f12846a = eVar.f12877a;
        g gVar = eVar.f12878b;
        this.f12848b = gVar;
        int i10 = m5.g0.f10384a;
        this.f12850c = i10 >= 21 && eVar.f12879c;
        this.f12858k = i10 >= 23 && eVar.f12880d;
        this.f12859l = i10 >= 29 ? eVar.f12881e : 0;
        this.f12863p = eVar.f12882f;
        m5.e eVar2 = new m5.e(m5.c.f10364a);
        this.f12855h = eVar2;
        eVar2.c();
        this.f12856i = new s(new j());
        v vVar = new v();
        this.f12851d = vVar;
        g0 g0Var = new g0();
        this.f12852e = g0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new c0(), vVar, g0Var);
        Collections.addAll(arrayList, gVar.f12892a);
        this.f12853f = (p3.f[]) arrayList.toArray(new p3.f[0]);
        this.f12854g = new p3.f[]{new z()};
        this.J = 1.0f;
        this.f12869v = p3.d.f12686n;
        this.W = 0;
        this.X = new t();
        m1 m1Var = m1.f11538k;
        this.f12871x = new h(m1Var, false, 0L, 0L);
        this.f12872y = m1Var;
        this.R = -1;
        this.K = new p3.f[0];
        this.L = new ByteBuffer[0];
        this.f12857j = new ArrayDeque<>();
        this.f12861n = new i<>();
        this.f12862o = new i<>();
    }

    public static AudioFormat A(int i10, int i11, int i12) {
        return new AudioFormat.Builder().setSampleRate(i10).setChannelMask(i11).setEncoding(i12).build();
    }

    public static boolean H(AudioTrack audioTrack) {
        return m5.g0.f10384a >= 29 && audioTrack.isOffloadedPlayback();
    }

    public final m1 B() {
        return C().f12895a;
    }

    public final h C() {
        h hVar = this.f12870w;
        if (hVar != null) {
            return hVar;
        }
        return !this.f12857j.isEmpty() ? this.f12857j.getLast() : this.f12871x;
    }

    public final boolean D() {
        return C().f12896b;
    }

    public final long E() {
        f fVar = this.f12867t;
        return fVar.f12885c == 0 ? this.D / ((long) fVar.f12886d) : this.E;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:56:? A[SYNTHETIC] */
    public final boolean F() throws q.b {
        boolean z10;
        AudioTrack audioTrackX;
        v0 v0Var;
        m5.e eVar = this.f12855h;
        synchronized (eVar) {
            z10 = eVar.f10377a;
        }
        if (!z10) {
            return false;
        }
        try {
            f fVar = this.f12867t;
            Objects.requireNonNull(fVar);
            audioTrackX = x(fVar);
        } catch (q.b e10) {
            f fVar2 = this.f12867t;
            if (fVar2.f12890h > 1000000) {
                f fVar3 = new f(fVar2.f12883a, fVar2.f12884b, fVar2.f12885c, fVar2.f12886d, fVar2.f12887e, fVar2.f12888f, fVar2.f12889g, 1000000, fVar2.f12891i);
                try {
                    audioTrackX = x(fVar3);
                    this.f12867t = fVar3;
                } catch (q.b e11) {
                    e10.addSuppressed(e11);
                    if (!this.f12867t.e()) {
                        throw e10;
                    }
                    this.f12847a0 = true;
                    throw e10;
                }
            }
            if (!this.f12867t.e()) {
                throw e10;
            }
            this.f12847a0 = true;
            throw e10;
        }
        this.f12868u = audioTrackX;
        if (H(audioTrackX)) {
            AudioTrack audioTrack = this.f12868u;
            if (this.f12860m == null) {
                this.f12860m = new k();
            }
            this.f12860m.a(audioTrack);
            if (this.f12859l != 3) {
                AudioTrack audioTrack2 = this.f12868u;
                s0 s0Var = this.f12867t.f12883a;
                audioTrack2.setOffloadDelayPadding(s0Var.I, s0Var.J);
            }
        }
        if (m5.g0.f10384a >= 31 && (v0Var = this.f12864q) != null) {
            b.a(this.f12868u, v0Var);
        }
        this.W = this.f12868u.getAudioSessionId();
        s sVar = this.f12856i;
        AudioTrack audioTrack3 = this.f12868u;
        f fVar4 = this.f12867t;
        sVar.e(audioTrack3, fVar4.f12885c == 2, fVar4.f12889g, fVar4.f12886d, fVar4.f12890h);
        N();
        int i10 = this.X.f12835a;
        if (i10 != 0) {
            this.f12868u.attachAuxEffect(i10);
            this.f12868u.setAuxEffectSendLevel(this.X.f12836b);
        }
        this.H = true;
        return true;
    }

    public final boolean G() {
        return this.f12868u != null;
    }

    public final void I() {
        if (this.T) {
            return;
        }
        this.T = true;
        s sVar = this.f12856i;
        long jE = E();
        sVar.f12834z = sVar.b();
        sVar.f12832x = SystemClock.elapsedRealtime() * 1000;
        sVar.A = jE;
        this.f12868u.stop();
        this.A = 0;
    }

    public final void J(long j10) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.K.length;
        int i10 = length;
        while (i10 >= 0) {
            if (i10 > 0) {
                byteBuffer = this.L[i10 - 1];
            } else {
                byteBuffer = this.M;
                if (byteBuffer == null) {
                    byteBuffer = p3.f.f12734a;
                }
            }
            if (i10 == length) {
                R(byteBuffer, j10);
            } else {
                p3.f fVar = this.K[i10];
                if (i10 > this.R) {
                    fVar.f(byteBuffer);
                }
                ByteBuffer byteBufferA = fVar.a();
                this.L[i10] = byteBufferA;
                if (byteBufferA.hasRemaining()) {
                    i10++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i10--;
            }
        }
    }

    public final void K() {
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.f12849b0 = false;
        this.F = 0;
        this.f12871x = new h(B(), D(), 0L, 0L);
        this.I = 0L;
        this.f12870w = null;
        this.f12857j.clear();
        this.M = null;
        this.N = 0;
        this.O = null;
        this.T = false;
        this.S = false;
        this.R = -1;
        this.f12873z = null;
        this.A = 0;
        this.f12852e.f12764o = 0L;
        z();
    }

    public final void L(m1 m1Var, boolean z10) {
        h hVarC = C();
        if (m1Var.equals(hVarC.f12895a) && z10 == hVarC.f12896b) {
            return;
        }
        h hVar = new h(m1Var, z10, -9223372036854775807L, -9223372036854775807L);
        if (G()) {
            this.f12870w = hVar;
        } else {
            this.f12871x = hVar;
        }
    }

    public final void M(m1 m1Var) {
        if (G()) {
            try {
                this.f12868u.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(m1Var.f11539h).setPitch(m1Var.f11540i).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e10) {
                m5.p.h("DefaultAudioSink", "Failed to set playback params", e10);
            }
            m1Var = new m1(this.f12868u.getPlaybackParams().getSpeed(), this.f12868u.getPlaybackParams().getPitch());
            s sVar = this.f12856i;
            sVar.f12818j = m1Var.f11539h;
            r rVar = sVar.f12814f;
            if (rVar != null) {
                rVar.a();
            }
        }
        this.f12872y = m1Var;
    }

    public final void N() {
        if (G()) {
            if (m5.g0.f10384a >= 21) {
                this.f12868u.setVolume(this.J);
                return;
            }
            AudioTrack audioTrack = this.f12868u;
            float f10 = this.J;
            audioTrack.setStereoVolume(f10, f10);
        }
    }

    public final boolean O() {
        return (this.Y || !"audio/raw".equals(this.f12867t.f12883a.f11687s) || P(this.f12867t.f12883a.H)) ? false : true;
    }

    public final boolean P(int i10) {
        if (this.f12850c) {
            int i11 = m5.g0.f10384a;
            if (i10 == 536870912 || i10 == 805306368 || i10 == 4) {
                return true;
            }
        }
        return false;
    }

    public final boolean Q(s0 s0Var, p3.d dVar) {
        int iP;
        int playbackOffloadSupport;
        int i10 = m5.g0.f10384a;
        if (i10 < 29 || this.f12859l == 0) {
            return false;
        }
        String str = s0Var.f11687s;
        Objects.requireNonNull(str);
        int iD = m5.s.d(str, s0Var.f11684p);
        if (iD == 0 || (iP = m5.g0.p(s0Var.F)) == 0) {
            return false;
        }
        AudioFormat audioFormatA = A(s0Var.G, iP, iD);
        AudioAttributes audioAttributes = dVar.b().f12693a;
        if (i10 >= 31) {
            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormatA, audioAttributes);
        } else if (AudioManager.isOffloadedPlaybackSupported(audioFormatA, audioAttributes)) {
            playbackOffloadSupport = (i10 == 30 && m5.g0.f10387d.startsWith("Pixel")) ? 2 : 1;
        } else {
            playbackOffloadSupport = 0;
        }
        if (playbackOffloadSupport == 0) {
            return false;
        }
        if (playbackOffloadSupport == 1) {
            return ((s0Var.I != 0 || s0Var.J != 0) && (this.f12859l == 1)) ? false : true;
        }
        if (playbackOffloadSupport == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:49:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ef  */
    public final void R(ByteBuffer byteBuffer, long j10) throws Exception {
        int iWrite;
        q.c cVar;
        s1.a aVar;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.O;
            if (byteBuffer2 != null) {
                m5.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.O = byteBuffer;
                if (m5.g0.f10384a < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.P;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.P = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.P, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.Q = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            int i10 = m5.g0.f10384a;
            if (i10 < 21) {
                s sVar = this.f12856i;
                int iB = sVar.f12813e - ((int) (this.D - (sVar.b() * ((long) sVar.f12812d))));
                if (iB > 0) {
                    iWrite = this.f12868u.write(this.P, this.Q, Math.min(iRemaining2, iB));
                    if (iWrite > 0) {
                        this.Q += iWrite;
                        byteBuffer.position(byteBuffer.position() + iWrite);
                    }
                } else {
                    iWrite = 0;
                }
            } else if (this.Y) {
                m5.a.e(j10 != -9223372036854775807L);
                AudioTrack audioTrack = this.f12868u;
                if (i10 >= 26) {
                    iWrite = audioTrack.write(byteBuffer, iRemaining2, 1, j10 * 1000);
                } else {
                    if (this.f12873z == null) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                        this.f12873z = byteBufferAllocate;
                        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
                        this.f12873z.putInt(1431633921);
                    }
                    if (this.A == 0) {
                        this.f12873z.putInt(4, iRemaining2);
                        this.f12873z.putLong(8, j10 * 1000);
                        this.f12873z.position(0);
                        this.A = iRemaining2;
                    }
                    int iRemaining3 = this.f12873z.remaining();
                    if (iRemaining3 <= 0) {
                        iWrite = audioTrack.write(byteBuffer, iRemaining2, 1);
                        if (iWrite < 0) {
                            this.A = 0;
                        } else {
                            this.A -= iWrite;
                        }
                    } else {
                        int iWrite2 = audioTrack.write(this.f12873z, iRemaining3, 1);
                        if (iWrite2 < 0) {
                            this.A = 0;
                            iWrite = iWrite2;
                        } else if (iWrite2 < iRemaining3) {
                            iWrite = 0;
                        } else {
                            iWrite = audioTrack.write(byteBuffer, iRemaining2, 1);
                            if (iWrite < 0) {
                                this.A = 0;
                            } else {
                                this.A -= iWrite;
                            }
                        }
                    }
                }
            } else {
                iWrite = this.f12868u.write(byteBuffer, iRemaining2, 1);
            }
            this.Z = SystemClock.elapsedRealtime();
            if (iWrite < 0) {
                boolean z10 = (i10 >= 24 && iWrite == -6) || iWrite == -32;
                if (z10 && this.f12867t.e()) {
                    this.f12847a0 = true;
                }
                q.e eVar = new q.e(iWrite, this.f12867t.f12883a, z10);
                q.c cVar2 = this.f12865r;
                if (cVar2 != null) {
                    ((a0.a) cVar2).a(eVar);
                }
                if (eVar.f12796i) {
                    throw eVar;
                }
                this.f12862o.a(eVar);
                return;
            }
            this.f12862o.f12899a = null;
            if (H(this.f12868u)) {
                if (this.E > 0) {
                    this.f12849b0 = false;
                }
                if (this.U && (cVar = this.f12865r) != null && iWrite < iRemaining2 && !this.f12849b0 && (aVar = a0.this.W0) != null) {
                    aVar.a();
                }
            }
            int i11 = this.f12867t.f12885c;
            if (i11 == 0) {
                this.D += (long) iWrite;
            }
            if (iWrite == iRemaining2) {
                if (i11 != 0) {
                    m5.a.e(byteBuffer == this.M);
                    this.E = (((long) this.F) * ((long) this.N)) + this.E;
                }
                this.O = null;
            }
        }
    }

    @Override // p3.q
    public final boolean a(s0 s0Var) {
        return h(s0Var) != 0;
    }

    @Override // p3.q
    public final boolean b() {
        return !G() || (this.S && !k());
    }

    @Override // p3.q
    public final void c() {
        boolean z10 = false;
        this.U = false;
        if (G()) {
            s sVar = this.f12856i;
            sVar.f12820l = 0L;
            sVar.f12831w = 0;
            sVar.f12830v = 0;
            sVar.f12821m = 0L;
            sVar.C = 0L;
            sVar.F = 0L;
            sVar.f12819k = false;
            if (sVar.f12832x == -9223372036854775807L) {
                r rVar = sVar.f12814f;
                Objects.requireNonNull(rVar);
                rVar.a();
                z10 = true;
            }
            if (z10) {
                this.f12868u.pause();
            }
        }
    }

    @Override // p3.q
    public final m1 d() {
        return this.f12858k ? this.f12872y : B();
    }

    @Override // p3.q
    public final void e() {
        flush();
        for (p3.f fVar : this.f12853f) {
            fVar.e();
        }
        for (p3.f fVar2 : this.f12854g) {
            fVar2.e();
        }
        this.U = false;
        this.f12847a0 = false;
    }

    @Override // p3.q
    public final void f(m1 m1Var) {
        m1 m1Var2 = new m1(m5.g0.h(m1Var.f11539h, 0.1f, 8.0f), m5.g0.h(m1Var.f11540i, 0.1f, 8.0f));
        if (!this.f12858k || m5.g0.f10384a < 23) {
            L(m1Var2, D());
        } else {
            M(m1Var2);
        }
    }

    @Override // p3.q
    public final void flush() {
        if (G()) {
            K();
            AudioTrack audioTrack = this.f12856i.f12811c;
            Objects.requireNonNull(audioTrack);
            if (audioTrack.getPlayState() == 3) {
                this.f12868u.pause();
            }
            if (H(this.f12868u)) {
                k kVar = this.f12860m;
                Objects.requireNonNull(kVar);
                kVar.b(this.f12868u);
            }
            AudioTrack audioTrack2 = this.f12868u;
            this.f12868u = null;
            if (m5.g0.f10384a < 21 && !this.V) {
                this.W = 0;
            }
            f fVar = this.f12866s;
            if (fVar != null) {
                this.f12867t = fVar;
                this.f12866s = null;
            }
            this.f12856i.d();
            this.f12855h.b();
            new a(audioTrack2).start();
        }
        this.f12862o.f12899a = null;
        this.f12861n.f12899a = null;
    }

    @Override // p3.q
    public final void g() {
        this.U = true;
        if (G()) {
            r rVar = this.f12856i.f12814f;
            Objects.requireNonNull(rVar);
            rVar.a();
            this.f12868u.play();
        }
    }

    @Override // p3.q
    public final int h(s0 s0Var) {
        if (!"audio/raw".equals(s0Var.f11687s)) {
            if (this.f12847a0 || !Q(s0Var, this.f12869v)) {
                return this.f12846a.a(s0Var) != null ? 2 : 0;
            }
            return 2;
        }
        if (m5.g0.I(s0Var.H)) {
            int i10 = s0Var.H;
            return (i10 == 2 || (this.f12850c && i10 == 4)) ? 2 : 1;
        }
        StringBuilder sbC = a0.b.c("Invalid PCM encoding: ");
        sbC.append(s0Var.H);
        m5.p.g("DefaultAudioSink", sbC.toString());
        return 0;
    }

    @Override // p3.q
    public final void i() {
        m5.a.e(m5.g0.f10384a >= 21);
        m5.a.e(this.V);
        if (this.Y) {
            return;
        }
        this.Y = true;
        flush();
    }

    @Override // p3.q
    public final void j() throws q.e {
        if (!this.S && G() && y()) {
            I();
            this.S = true;
        }
    }

    @Override // p3.q
    public final boolean k() {
        return G() && this.f12856i.c(E());
    }

    @Override // p3.q
    public final void l(int i10) {
        if (this.W != i10) {
            this.W = i10;
            this.V = i10 != 0;
            flush();
        }
    }

    @Override // p3.q
    public final void m(v0 v0Var) {
        this.f12864q = v0Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:153:0x029a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:68:0x00f9  */
    @Override // p3.q
    public final boolean n(ByteBuffer byteBuffer, long j10, int i10) throws Exception {
        boolean z10;
        boolean z11;
        int i11;
        int i12;
        byte b10;
        int i13;
        byte b11;
        int i14;
        ByteBuffer byteBuffer2 = this.M;
        m5.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f12866s != null) {
            if (!y()) {
                return false;
            }
            f fVar = this.f12866s;
            f fVar2 = this.f12867t;
            Objects.requireNonNull(fVar);
            if (fVar2.f12885c == fVar.f12885c && fVar2.f12889g == fVar.f12889g && fVar2.f12887e == fVar.f12887e && fVar2.f12888f == fVar.f12888f && fVar2.f12886d == fVar.f12886d) {
                this.f12867t = this.f12866s;
                this.f12866s = null;
                if (H(this.f12868u) && this.f12859l != 3) {
                    if (this.f12868u.getPlayState() == 3) {
                        this.f12868u.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.f12868u;
                    s0 s0Var = this.f12867t.f12883a;
                    audioTrack.setOffloadDelayPadding(s0Var.I, s0Var.J);
                    this.f12849b0 = true;
                }
            } else {
                I();
                if (k()) {
                    return false;
                }
                flush();
            }
            w(j10);
        }
        if (!G()) {
            try {
                if (!F()) {
                    return false;
                }
            } catch (q.b e10) {
                if (e10.f12793i) {
                    throw e10;
                }
                this.f12861n.a(e10);
                return false;
            }
        }
        this.f12861n.f12899a = null;
        if (this.H) {
            this.I = Math.max(0L, j10);
            this.G = false;
            this.H = false;
            if (this.f12858k && m5.g0.f10384a >= 23) {
                M(this.f12872y);
            }
            w(j10);
            if (this.U) {
                g();
            }
        }
        s sVar = this.f12856i;
        long jE = E();
        AudioTrack audioTrack2 = sVar.f12811c;
        Objects.requireNonNull(audioTrack2);
        int playState = audioTrack2.getPlayState();
        if (sVar.f12816h) {
            if (playState == 2) {
                sVar.f12824p = false;
            } else if (playState != 1 || sVar.b() != 0) {
                z10 = sVar.f12824p;
                boolean zC = sVar.c(jE);
                sVar.f12824p = zC;
                if (z10) {
                    sVar.f12809a.b(sVar.f12813e, m5.g0.X(sVar.f12817i));
                }
                z11 = true;
            }
            z11 = false;
        } else {
            z10 = sVar.f12824p;
            boolean zC2 = sVar.c(jE);
            sVar.f12824p = zC2;
            if (z10 && !zC2 && playState != 1) {
                sVar.f12809a.b(sVar.f12813e, m5.g0.X(sVar.f12817i));
            }
            z11 = true;
        }
        if (!z11) {
            return false;
        }
        if (this.M == null) {
            m5.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            f fVar3 = this.f12867t;
            if (fVar3.f12885c != 0 && this.F == 0) {
                int i15 = fVar3.f12889g;
                int iD = 1024;
                switch (i15) {
                    case 5:
                    case 6:
                    case 18:
                        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
                            i11 = p3.b.f12657a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
                        } else {
                            i11 = 1536;
                        }
                        iD = i11;
                        this.F = iD;
                        if (iD == 0) {
                            return true;
                        }
                        break;
                    case 7:
                    case 8:
                        int iPosition = byteBuffer.position();
                        byte b12 = byteBuffer.get(iPosition);
                        if (b12 != -2) {
                            if (b12 == -1) {
                                i12 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                                b11 = byteBuffer.get(iPosition + 7);
                            } else if (b12 != 31) {
                                i12 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                                b10 = byteBuffer.get(iPosition + 5);
                            } else {
                                i12 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                                b11 = byteBuffer.get(iPosition + 6);
                            }
                            i13 = b11 & 60;
                            iD = (((i13 >> 2) | i12) + 1) * 32;
                            this.F = iD;
                            if (iD == 0) {
                                return true;
                            }
                        } else {
                            i12 = (byteBuffer.get(iPosition + 5) & 1) << 6;
                            b10 = byteBuffer.get(iPosition + 4);
                        }
                        i13 = b10 & 252;
                        iD = (((i13 >> 2) | i12) + 1) * 32;
                        this.F = iD;
                        if (iD == 0) {
                            return true;
                        }
                        break;
                    case 9:
                        int iPosition2 = byteBuffer.position();
                        int i16 = m5.g0.f10384a;
                        int iReverseBytes = byteBuffer.getInt(iPosition2);
                        if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                            iReverseBytes = Integer.reverseBytes(iReverseBytes);
                        }
                        iD = b0.d(iReverseBytes);
                        if (iD == -1) {
                            throw new IllegalArgumentException();
                        }
                        this.F = iD;
                        if (iD == 0) {
                            return true;
                        }
                        break;
                    case 10:
                    case 16:
                        this.F = iD;
                        if (iD == 0) {
                            return true;
                        }
                        break;
                    case 11:
                    case 12:
                        iD = 2048;
                        this.F = iD;
                        if (iD == 0) {
                            return true;
                        }
                        break;
                    case 13:
                    default:
                        throw new IllegalStateException(androidx.appcompat.widget.e0.d("Unexpected audio encoding: ", i15));
                    case 14:
                        int iPosition3 = byteBuffer.position();
                        int iLimit = byteBuffer.limit() - 10;
                        int i17 = iPosition3;
                        while (true) {
                            if (i17 <= iLimit) {
                                int i18 = m5.g0.f10384a;
                                int iReverseBytes2 = byteBuffer.getInt(i17 + 4);
                                if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                                    iReverseBytes2 = Integer.reverseBytes(iReverseBytes2);
                                }
                                if ((iReverseBytes2 & (-2)) == -126718022) {
                                    i14 = i17 - iPosition3;
                                } else {
                                    i17++;
                                }
                            } else {
                                i14 = -1;
                            }
                        }
                        if (i14 == -1) {
                            iD = 0;
                        } else {
                            i11 = (40 << ((byteBuffer.get((byteBuffer.position() + i14) + ((byteBuffer.get((byteBuffer.position() + i14) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7)) * 16;
                            iD = i11;
                        }
                        this.F = iD;
                        if (iD == 0) {
                            return true;
                        }
                        break;
                    case 15:
                        iD = 512;
                        this.F = iD;
                        if (iD == 0) {
                            return true;
                        }
                        break;
                    case 17:
                        byte[] bArr = new byte[16];
                        int iPosition4 = byteBuffer.position();
                        byteBuffer.get(bArr);
                        byteBuffer.position(iPosition4);
                        iD = p3.c.b(new m5.v(bArr, 16)).f12685c;
                        this.F = iD;
                        if (iD == 0) {
                            return true;
                        }
                        break;
                }
            }
            if (this.f12870w != null) {
                if (!y()) {
                    return false;
                }
                w(j10);
                this.f12870w = null;
            }
            long j11 = this.I;
            f fVar4 = this.f12867t;
            long j12 = ((((fVar4.f12885c == 0 ? this.B / ((long) fVar4.f12884b) : this.C) - this.f12852e.f12764o) * 1000000) / ((long) fVar4.f12883a.G)) + j11;
            if (!this.G && Math.abs(j12 - j10) > 200000) {
                ((a0.a) this.f12865r).a(new q.d(j10, j12));
                this.G = true;
            }
            if (this.G) {
                if (!y()) {
                    return false;
                }
                long j13 = j10 - j12;
                this.I += j13;
                this.G = false;
                w(j10);
                q.c cVar = this.f12865r;
                if (cVar != null && j13 != 0) {
                    a0.this.U0 = true;
                }
            }
            if (this.f12867t.f12885c == 0) {
                this.B += (long) byteBuffer.remaining();
            } else {
                this.C = (((long) this.F) * ((long) i10)) + this.C;
            }
            this.M = byteBuffer;
            this.N = i10;
        }
        J(j10);
        if (!this.M.hasRemaining()) {
            this.M = null;
            this.N = 0;
            return true;
        }
        s sVar2 = this.f12856i;
        if (!(sVar2.f12833y != -9223372036854775807L && E() > 0 && SystemClock.elapsedRealtime() - sVar2.f12833y >= 200)) {
            return false;
        }
        m5.p.g("DefaultAudioSink", "Resetting stalled audio track");
        flush();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x010f  */
    /* JADX WARN: Code duplicated, block: B:95:0x01bb  */
    @Override // p3.q
    public final long o(boolean z10) {
        boolean z11;
        long jA;
        long jW;
        long jR;
        boolean timestamp;
        Method method;
        if (!G() || this.H) {
            return Long.MIN_VALUE;
        }
        s sVar = this.f12856i;
        AudioTrack audioTrack = sVar.f12811c;
        Objects.requireNonNull(audioTrack);
        if (audioTrack.getPlayState() == 3) {
            long jA2 = sVar.a(sVar.b());
            if (jA2 == 0) {
                z11 = false;
            } else {
                long jNanoTime = System.nanoTime() / 1000;
                if (jNanoTime - sVar.f12821m >= 30000) {
                    long[] jArr = sVar.f12810b;
                    int i10 = sVar.f12830v;
                    jArr[i10] = jA2 - jNanoTime;
                    sVar.f12830v = (i10 + 1) % 10;
                    int i11 = sVar.f12831w;
                    if (i11 < 10) {
                        sVar.f12831w = i11 + 1;
                    }
                    sVar.f12821m = jNanoTime;
                    sVar.f12820l = 0L;
                    int i12 = 0;
                    while (true) {
                        int i13 = sVar.f12831w;
                        if (i12 >= i13) {
                            break;
                        }
                        sVar.f12820l = (sVar.f12810b[i12] / ((long) i13)) + sVar.f12820l;
                        i12++;
                    }
                }
                if (sVar.f12816h) {
                    z11 = false;
                } else {
                    r rVar = sVar.f12814f;
                    Objects.requireNonNull(rVar);
                    r.a aVar = rVar.f12798a;
                    if (aVar == null || jNanoTime - rVar.f12802e < rVar.f12801d) {
                        timestamp = false;
                    } else {
                        rVar.f12802e = jNanoTime;
                        timestamp = aVar.f12804a.getTimestamp(aVar.f12805b);
                        if (timestamp) {
                            long j10 = aVar.f12805b.framePosition;
                            if (aVar.f12807d > j10) {
                                aVar.f12806c++;
                            }
                            aVar.f12807d = j10;
                            aVar.f12808e = j10 + (aVar.f12806c << 32);
                        }
                        int i14 = rVar.f12799b;
                        if (i14 != 0) {
                            if (i14 != 1) {
                                if (i14 != 2) {
                                    if (i14 != 3) {
                                        if (i14 != 4) {
                                            throw new IllegalStateException();
                                        }
                                    } else if (timestamp) {
                                        rVar.a();
                                    }
                                } else if (!timestamp) {
                                    rVar.a();
                                }
                            } else if (!timestamp) {
                                rVar.a();
                            } else if (rVar.f12798a.f12808e > rVar.f12803f) {
                                rVar.b(2);
                            }
                        } else if (timestamp) {
                            r.a aVar2 = rVar.f12798a;
                            if (aVar2.f12805b.nanoTime / 1000 >= rVar.f12800c) {
                                rVar.f12803f = aVar2.f12808e;
                                rVar.b(1);
                            } else {
                                timestamp = false;
                            }
                        } else if (jNanoTime - rVar.f12800c > 500000) {
                            rVar.b(3);
                        }
                    }
                    if (timestamp) {
                        r.a aVar3 = rVar.f12798a;
                        long j11 = aVar3 != null ? aVar3.f12805b.nanoTime / 1000 : -9223372036854775807L;
                        long j12 = aVar3 != null ? aVar3.f12808e : -1L;
                        if (Math.abs(j11 - jNanoTime) > 5000000) {
                            sVar.f12809a.d(j12, j11, jNanoTime, jA2);
                            rVar.b(4);
                        } else if (Math.abs(sVar.a(j12) - jA2) > 5000000) {
                            sVar.f12809a.c(j12, j11, jNanoTime, jA2);
                            rVar.b(4);
                        } else if (rVar.f12799b == 4) {
                            rVar.a();
                        }
                    }
                    if (!sVar.f12825q || (method = sVar.f12822n) == null || jNanoTime - sVar.f12826r < 500000) {
                        z11 = false;
                    } else {
                        try {
                            AudioTrack audioTrack2 = sVar.f12811c;
                            Objects.requireNonNull(audioTrack2);
                            z11 = false;
                            try {
                                Integer num = (Integer) method.invoke(audioTrack2, new Object[0]);
                                int i15 = m5.g0.f10384a;
                                long jIntValue = (((long) num.intValue()) * 1000) - sVar.f12817i;
                                sVar.f12823o = jIntValue;
                                long jMax = Math.max(jIntValue, 0L);
                                sVar.f12823o = jMax;
                                if (jMax > 5000000) {
                                    sVar.f12809a.e(jMax);
                                    sVar.f12823o = 0L;
                                }
                            } catch (Exception unused) {
                                sVar.f12822n = null;
                            }
                        } catch (Exception unused2) {
                            z11 = false;
                        }
                        sVar.f12826r = jNanoTime;
                    }
                }
            }
        } else {
            z11 = false;
        }
        long jNanoTime2 = System.nanoTime() / 1000;
        r rVar2 = sVar.f12814f;
        Objects.requireNonNull(rVar2);
        boolean z12 = rVar2.f12799b == 2 ? true : z11;
        if (z12) {
            r.a aVar4 = rVar2.f12798a;
            long jA3 = sVar.a(aVar4 != null ? aVar4.f12808e : -1L);
            r.a aVar5 = rVar2.f12798a;
            jA = m5.g0.w(jNanoTime2 - (aVar5 != null ? aVar5.f12805b.nanoTime / 1000 : -9223372036854775807L), sVar.f12818j) + jA3;
        } else {
            jA = sVar.f12831w == 0 ? sVar.a(sVar.b()) : sVar.f12820l + jNanoTime2;
            if (!z10) {
                jA = Math.max(0L, jA - sVar.f12823o);
            }
        }
        if (sVar.D != z12) {
            sVar.F = sVar.C;
            sVar.E = sVar.B;
        }
        long j13 = jNanoTime2 - sVar.F;
        if (j13 < 1000000) {
            long jW2 = m5.g0.w(j13, sVar.f12818j) + sVar.E;
            long j14 = (j13 * 1000) / 1000000;
            jA = (((1000 - j14) * jW2) + (jA * j14)) / 1000;
        }
        if (!sVar.f12819k) {
            long j15 = sVar.B;
            if (jA > j15) {
                sVar.f12819k = true;
                sVar.f12809a.a(System.currentTimeMillis() - m5.g0.X(m5.g0.A(m5.g0.X(jA - j15), sVar.f12818j)));
            }
        }
        sVar.C = jNanoTime2;
        sVar.B = jA;
        sVar.D = z12;
        long jMin = Math.min(jA, this.f12867t.c(E()));
        while (!this.f12857j.isEmpty() && jMin >= this.f12857j.getFirst().f12898d) {
            this.f12871x = this.f12857j.remove();
        }
        h hVar = this.f12871x;
        long j16 = jMin - hVar.f12898d;
        if (hVar.f12895a.equals(m1.f11538k)) {
            jW = this.f12871x.f12897c + j16;
        } else if (this.f12857j.isEmpty()) {
            f0 f0Var = ((g) this.f12848b).f12894c;
            if (f0Var.f12753o >= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
                long j17 = f0Var.f12752n;
                e0 e0Var = f0Var.f12748j;
                Objects.requireNonNull(e0Var);
                long j18 = j17 - ((long) ((e0Var.f12722k * e0Var.f12713b) * 2));
                int i16 = f0Var.f12746h.f12736a;
                int i17 = f0Var.f12745g.f12736a;
                jR = i16 == i17 ? m5.g0.R(j16, j18, f0Var.f12753o) : m5.g0.R(j16, j18 * ((long) i16), f0Var.f12753o * ((long) i17));
            } else {
                jR = (long) (((double) f0Var.f12741c) * j16);
            }
            jW = jR + this.f12871x.f12897c;
        } else {
            h first = this.f12857j.getFirst();
            jW = first.f12897c - m5.g0.w(first.f12898d - jMin, this.f12871x.f12895a.f11539h);
        }
        return this.f12867t.c(((g) this.f12848b).f12893b.f12705t) + jW;
    }

    @Override // p3.q
    public final void p() {
        if (this.Y) {
            this.Y = false;
            flush();
        }
    }

    @Override // p3.q
    public final void q(s0 s0Var, int[] iArr) throws q.a {
        int i10;
        int i11;
        int iIntValue;
        int iD;
        p3.f[] fVarArr;
        int iZ;
        int i12;
        int i13;
        int i14;
        int i15;
        int[] iArr2;
        int iZ2 = -1;
        if ("audio/raw".equals(s0Var.f11687s)) {
            m5.a.a(m5.g0.I(s0Var.H));
            iZ = m5.g0.z(s0Var.H, s0Var.F);
            p3.f[] fVarArr2 = P(s0Var.H) ? this.f12854g : this.f12853f;
            g0 g0Var = this.f12852e;
            int i16 = s0Var.I;
            int i17 = s0Var.J;
            g0Var.f12758i = i16;
            g0Var.f12759j = i17;
            if (m5.g0.f10384a < 21 && s0Var.F == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i18 = 0; i18 < 6; i18++) {
                    iArr2[i18] = i18;
                }
            } else {
                iArr2 = iArr;
            }
            this.f12851d.f12844i = iArr2;
            p3.f.a aVar = new p3.f.a(s0Var.G, s0Var.F, s0Var.H);
            for (p3.f fVar : fVarArr2) {
                try {
                    p3.f.a aVarD = fVar.d(aVar);
                    if (fVar.isActive()) {
                        aVar = aVarD;
                    }
                } catch (p3.f.b e10) {
                    throw new q.a(e10, s0Var);
                }
            }
            int i19 = aVar.f12738c;
            int i20 = aVar.f12736a;
            int iP = m5.g0.p(aVar.f12737b);
            fVarArr = fVarArr2;
            iZ2 = m5.g0.z(i19, aVar.f12737b);
            i10 = i20;
            i12 = i19;
            i13 = iP;
            i11 = 0;
        } else {
            p3.f[] fVarArr3 = new p3.f[0];
            i10 = s0Var.G;
            if (Q(s0Var, this.f12869v)) {
                String str = s0Var.f11687s;
                Objects.requireNonNull(str);
                iD = m5.s.d(str, s0Var.f11684p);
                iIntValue = m5.g0.p(s0Var.F);
                i11 = 1;
            } else {
                Pair<Integer, Integer> pairA = this.f12846a.a(s0Var);
                if (pairA == null) {
                    throw new q.a("Unable to configure passthrough for: " + s0Var, s0Var);
                }
                int iIntValue2 = ((Integer) pairA.first).intValue();
                i11 = 2;
                iIntValue = ((Integer) pairA.second).intValue();
                iD = iIntValue2;
            }
            fVarArr = fVarArr3;
            iZ = -1;
            int i21 = iIntValue;
            i12 = iD;
            i13 = i21;
        }
        x xVar = this.f12863p;
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i13, i12);
        m5.a.e(minBufferSize != -2);
        double d10 = this.f12858k ? 8.0d : 1.0d;
        Objects.requireNonNull(xVar);
        if (i11 != 0) {
            if (i11 == 1) {
                i15 = w6.a.a((((long) xVar.f12910f) * ((long) x.a(i12))) / 1000000);
            } else {
                if (i11 != 2) {
                    throw new IllegalArgumentException();
                }
                int i22 = xVar.f12909e;
                if (i12 == 5) {
                    i22 *= xVar.f12911g;
                }
                i15 = w6.a.a((((long) i22) * ((long) x.a(i12))) / 1000000);
            }
            i14 = i11;
        } else {
            fVarArr = fVarArr;
            int i23 = xVar.f12908d * minBufferSize;
            int i24 = i11;
            long j10 = i10;
            long j11 = iZ2;
            int iA = w6.a.a(((((long) xVar.f12906b) * j10) * j11) / 1000000);
            int i25 = xVar.f12907c;
            i14 = i24;
            i15 = m5.g0.i(i23, iA, w6.a.a(((((long) i25) * j10) * j11) / 1000000));
        }
        int iMax = (((Math.max(minBufferSize, (int) (((double) i15) * d10)) + iZ2) - 1) / iZ2) * iZ2;
        if (i12 == 0) {
            throw new q.a("Invalid output encoding (mode=" + i14 + ") for: " + s0Var, s0Var);
        }
        if (i13 == 0) {
            throw new q.a("Invalid output channel config (mode=" + i14 + ") for: " + s0Var, s0Var);
        }
        this.f12847a0 = false;
        f fVar2 = new f(s0Var, iZ, i14, iZ2, i10, i13, i12, iMax, fVarArr);
        if (G()) {
            this.f12866s = fVar2;
        } else {
            this.f12867t = fVar2;
        }
    }

    @Override // p3.q
    public final void r(p3.d dVar) {
        if (this.f12869v.equals(dVar)) {
            return;
        }
        this.f12869v = dVar;
        if (this.Y) {
            return;
        }
        flush();
    }

    @Override // p3.q
    public final void s(boolean z10) {
        L(B(), z10);
    }

    @Override // p3.q
    public final void t(t tVar) {
        if (this.X.equals(tVar)) {
            return;
        }
        int i10 = tVar.f12835a;
        float f10 = tVar.f12836b;
        AudioTrack audioTrack = this.f12868u;
        if (audioTrack != null) {
            if (this.X.f12835a != i10) {
                audioTrack.attachAuxEffect(i10);
            }
            if (i10 != 0) {
                this.f12868u.setAuxEffectSendLevel(f10);
            }
        }
        this.X = tVar;
    }

    @Override // p3.q
    public final void u() {
        this.G = true;
    }

    @Override // p3.q
    public final void v(float f10) {
        if (this.J != f10) {
            this.J = f10;
            N();
        }
    }

    public final void w(long j10) {
        m1 m1VarB;
        final boolean z10;
        final p.a aVar;
        Handler handler;
        if (O()) {
            c cVar = this.f12848b;
            m1VarB = B();
            f0 f0Var = ((g) cVar).f12894c;
            float f10 = m1VarB.f11539h;
            if (f0Var.f12741c != f10) {
                f0Var.f12741c = f10;
                f0Var.f12747i = true;
            }
            float f11 = m1VarB.f11540i;
            if (f0Var.f12742d != f11) {
                f0Var.f12742d = f11;
                f0Var.f12747i = true;
            }
        } else {
            m1VarB = m1.f11538k;
        }
        m1 m1Var = m1VarB;
        if (O()) {
            c cVar2 = this.f12848b;
            boolean zD = D();
            ((g) cVar2).f12893b.f12698m = zD;
            z10 = zD;
        } else {
            z10 = false;
        }
        this.f12857j.add(new h(m1Var, z10, Math.max(0L, j10), this.f12867t.c(E())));
        p3.f[] fVarArr = this.f12867t.f12891i;
        ArrayList arrayList = new ArrayList();
        for (p3.f fVar : fVarArr) {
            if (fVar.isActive()) {
                arrayList.add(fVar);
            } else {
                fVar.flush();
            }
        }
        int size = arrayList.size();
        this.K = (p3.f[]) arrayList.toArray(new p3.f[size]);
        this.L = new ByteBuffer[size];
        z();
        q.c cVar3 = this.f12865r;
        if (cVar3 == null || (handler = (aVar = a0.this.N0).f12789a) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: p3.o
            @Override // java.lang.Runnable
            public final void run() {
                p.a aVar2 = aVar;
                boolean z11 = z10;
                p pVar = aVar2.f12790b;
                int i10 = m5.g0.f10384a;
                pVar.l(z11);
            }
        });
    }

    public final AudioTrack x(f fVar) throws q.b {
        try {
            return fVar.a(this.Y, this.f12869v, this.W);
        } catch (q.b e10) {
            q.c cVar = this.f12865r;
            if (cVar != null) {
                ((a0.a) cVar).a(e10);
            }
            throw e10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final boolean y() throws p3.q.e {
        /*
            r9 = this;
            int r0 = r9.R
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto Lb
            r9.R = r3
        L9:
            r0 = r2
            goto Lc
        Lb:
            r0 = r3
        Lc:
            int r4 = r9.R
            p3.f[] r5 = r9.K
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.c()
        L1f:
            r9.J(r7)
            boolean r0 = r4.b()
            if (r0 != 0) goto L29
            return r3
        L29:
            int r0 = r9.R
            int r0 = r0 + r2
            r9.R = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            r9.R(r0, r7)
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            return r3
        L3b:
            r9.R = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p3.w.y():boolean");
    }

    public final void z() {
        int i10 = 0;
        while (true) {
            p3.f[] fVarArr = this.K;
            if (i10 >= fVarArr.length) {
                return;
            }
            p3.f fVar = fVarArr[i10];
            fVar.flush();
            this.L[i10] = fVar.a();
            i10++;
        }
    }
}
