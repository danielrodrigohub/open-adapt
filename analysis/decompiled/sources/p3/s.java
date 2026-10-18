package p3;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: compiled from: AudioTrackPositionTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {
    public long A;
    public long B;
    public long C;
    public boolean D;
    public long E;
    public long F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f12809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f12810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AudioTrack f12811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public r f12814f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12815g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12816h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f12817i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f12818j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f12819k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f12820l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f12821m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Method f12822n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f12823o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f12824p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f12825q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f12826r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f12827s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f12828t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f12829u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f12830v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f12831w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f12832x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f12833y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f12834z;

    /* JADX INFO: compiled from: AudioTrackPositionTracker.java */
    public interface a {
        void a(long j10);

        void b(int i10, long j10);

        void c(long j10, long j11, long j12, long j13);

        void d(long j10, long j11, long j12, long j13);

        void e(long j10);
    }

    public s(a aVar) {
        this.f12809a = aVar;
        if (m5.g0.f10384a >= 18) {
            try {
                this.f12822n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f12810b = new long[10];
    }

    public final long a(long j10) {
        return (j10 * 1000000) / ((long) this.f12815g);
    }

    public final long b() {
        AudioTrack audioTrack = this.f12811c;
        Objects.requireNonNull(audioTrack);
        if (this.f12832x != -9223372036854775807L) {
            return Math.min(this.A, this.f12834z + ((((SystemClock.elapsedRealtime() * 1000) - this.f12832x) * ((long) this.f12815g)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & ((long) audioTrack.getPlaybackHeadPosition());
        if (this.f12816h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f12829u = this.f12827s;
            }
            playbackHeadPosition += this.f12829u;
        }
        if (m5.g0.f10384a <= 29) {
            if (playbackHeadPosition == 0 && this.f12827s > 0 && playState == 3) {
                if (this.f12833y == -9223372036854775807L) {
                    this.f12833y = SystemClock.elapsedRealtime();
                }
                return this.f12827s;
            }
            this.f12833y = -9223372036854775807L;
        }
        if (this.f12827s > playbackHeadPosition) {
            this.f12828t++;
        }
        this.f12827s = playbackHeadPosition;
        return playbackHeadPosition + (this.f12828t << 32);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0026  */
    public final boolean c(long j10) {
        boolean z10;
        if (j10 <= b()) {
            if (this.f12816h) {
                AudioTrack audioTrack = this.f12811c;
                Objects.requireNonNull(audioTrack);
                if (audioTrack.getPlayState() == 2 && b() == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    public final void d() {
        this.f12820l = 0L;
        this.f12831w = 0;
        this.f12830v = 0;
        this.f12821m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.f12819k = false;
        this.f12811c = null;
        this.f12814f = null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0029  */
    public final void e(AudioTrack audioTrack, boolean z10, int i10, int i11, int i12) {
        boolean z11;
        this.f12811c = audioTrack;
        this.f12812d = i11;
        this.f12813e = i12;
        this.f12814f = new r(audioTrack);
        this.f12815g = audioTrack.getSampleRate();
        if (z10) {
            z11 = m5.g0.f10384a < 23 && (i10 == 5 || i10 == 6);
        }
        this.f12816h = z11;
        boolean zI = m5.g0.I(i10);
        this.f12825q = zI;
        this.f12817i = zI ? a(i12 / i11) : -9223372036854775807L;
        this.f12827s = 0L;
        this.f12828t = 0L;
        this.f12829u = 0L;
        this.f12824p = false;
        this.f12832x = -9223372036854775807L;
        this.f12833y = -9223372036854775807L;
        this.f12826r = 0L;
        this.f12823o = 0L;
        this.f12818j = 1.0f;
    }
}
