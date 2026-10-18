package n5;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
import android.view.Surface;
import android.view.WindowManager;
import java.util.Objects;
import m5.g0;
import y0.c0;

/* JADX INFO: compiled from: VideoFrameReleaseHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n5.d f11939a = new n5.d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f11940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f11941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f11942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Surface f11943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f11945g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11948j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f11949k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f11950l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f11951m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f11952n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f11953o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f11954p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f11955q;

    /* JADX INFO: compiled from: VideoFrameReleaseHelper.java */
    public static final class a {
        public static void a(Surface surface, float f10) {
            try {
                surface.setFrameRate(f10, f10 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e10) {
                m5.p.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e10);
            }
        }
    }

    /* JADX INFO: compiled from: VideoFrameReleaseHelper.java */
    public interface b {

        /* JADX INFO: compiled from: VideoFrameReleaseHelper.java */
        public interface a {
        }

        void a();

        void b(a aVar);
    }

    /* JADX INFO: compiled from: VideoFrameReleaseHelper.java */
    public static final class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WindowManager f11956a;

        public c(WindowManager windowManager) {
            this.f11956a = windowManager;
        }

        @Override // n5.l.b
        public final void a() {
        }

        @Override // n5.l.b
        public final void b(b.a aVar) {
            ((c0) aVar).b(this.f11956a.getDefaultDisplay());
        }
    }

    /* JADX INFO: compiled from: VideoFrameReleaseHelper.java */
    public static final class d implements b, DisplayManager.DisplayListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DisplayManager f11957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public b.a f11958b;

        public d(DisplayManager displayManager) {
            this.f11957a = displayManager;
        }

        @Override // n5.l.b
        public final void a() {
            this.f11957a.unregisterDisplayListener(this);
            this.f11958b = null;
        }

        @Override // n5.l.b
        public final void b(b.a aVar) {
            this.f11958b = aVar;
            this.f11957a.registerDisplayListener(this, g0.l(null));
            ((c0) aVar).b(this.f11957a.getDisplay(0));
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i10) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i10) {
            b.a aVar = this.f11958b;
            if (aVar == null || i10 != 0) {
                return;
            }
            ((c0) aVar).b(this.f11957a.getDisplay(0));
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i10) {
        }
    }

    /* JADX INFO: compiled from: VideoFrameReleaseHelper.java */
    public static final class e implements Choreographer.FrameCallback, Handler.Callback {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final e f11959l = new e();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile long f11960h = -9223372036854775807L;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Handler f11961i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Choreographer f11962j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f11963k;

        public e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            handlerThread.start();
            Looper looper = handlerThread.getLooper();
            int i10 = g0.f10384a;
            Handler handler = new Handler(looper, this);
            this.f11961i = handler;
            handler.sendEmptyMessage(0);
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j10) {
            this.f11960h = j10;
            Choreographer choreographer = this.f11962j;
            Objects.requireNonNull(choreographer);
            choreographer.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                try {
                    this.f11962j = Choreographer.getInstance();
                } catch (RuntimeException e10) {
                    m5.p.h("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
                }
                return true;
            }
            if (i10 == 1) {
                Choreographer choreographer = this.f11962j;
                if (choreographer != null) {
                    int i11 = this.f11963k + 1;
                    this.f11963k = i11;
                    if (i11 == 1) {
                        choreographer.postFrameCallback(this);
                    }
                }
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            Choreographer choreographer2 = this.f11962j;
            if (choreographer2 != null) {
                int i12 = this.f11963k - 1;
                this.f11963k = i12;
                if (i12 == 0) {
                    choreographer2.removeFrameCallback(this);
                    this.f11960h = -9223372036854775807L;
                }
            }
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003a  */
    public l(Context context) {
        b dVar;
        DisplayManager displayManager;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            dVar = (g0.f10384a < 17 || (displayManager = (DisplayManager) applicationContext.getSystemService("display")) == null) ? null : new d(displayManager);
            if (dVar == null) {
                WindowManager windowManager = (WindowManager) applicationContext.getSystemService("window");
                if (windowManager != null) {
                    dVar = new c(windowManager);
                } else {
                    dVar = null;
                }
            }
        } else {
            dVar = null;
        }
        this.f11940b = dVar;
        this.f11941c = dVar != null ? e.f11959l : null;
        this.f11949k = -9223372036854775807L;
        this.f11950l = -9223372036854775807L;
        this.f11944f = -1.0f;
        this.f11947i = 1.0f;
        this.f11948j = 0;
    }

    public final void a() {
        Surface surface;
        if (g0.f10384a < 30 || (surface = this.f11943e) == null || this.f11948j == Integer.MIN_VALUE || this.f11946h == 0.0f) {
            return;
        }
        this.f11946h = 0.0f;
        a.a(surface, 0.0f);
    }

    public final void b() {
        this.f11951m = 0L;
        this.f11954p = -1L;
        this.f11952n = -1L;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x006f  */
    /* JADX WARN: Code duplicated, block: B:41:0x0085  */
    public final void c() {
        float f10;
        boolean z10;
        if (g0.f10384a < 30 || this.f11943e == null) {
            return;
        }
        if (this.f11939a.a()) {
            n5.d dVar = this.f11939a;
            if (dVar.a()) {
                n5.d.a aVar = dVar.f11870a;
                long j10 = aVar.f11879e;
                f10 = (float) (1.0E9d / (j10 != 0 ? aVar.f11880f / j10 : 0L));
            } else {
                f10 = -1.0f;
            }
        } else {
            f10 = this.f11944f;
        }
        float f11 = this.f11945g;
        if (f10 == f11) {
            return;
        }
        boolean z11 = true;
        if (f10 != -1.0f && f11 != -1.0f) {
            if (this.f11939a.a()) {
                n5.d dVar2 = this.f11939a;
                if ((dVar2.a() ? dVar2.f11870a.f11880f : -9223372036854775807L) >= 5000000000L) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (Math.abs(f10 - this.f11945g) < (z10 ? 0.02f : 1.0f)) {
                z11 = false;
            }
        } else if (f10 == -1.0f && this.f11939a.f11874e < 30) {
            z11 = false;
        }
        if (z11) {
            this.f11945g = f10;
            d(false);
        }
    }

    public final void d(boolean z10) {
        Surface surface;
        if (g0.f10384a < 30 || (surface = this.f11943e) == null || this.f11948j == Integer.MIN_VALUE) {
            return;
        }
        float f10 = 0.0f;
        if (this.f11942d) {
            float f11 = this.f11945g;
            if (f11 != -1.0f) {
                f10 = this.f11947i * f11;
            }
        }
        if (z10 || this.f11946h != f10) {
            this.f11946h = f10;
            a.a(surface, f10);
        }
    }
}
