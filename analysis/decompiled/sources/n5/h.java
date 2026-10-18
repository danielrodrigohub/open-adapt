package n5;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import java.util.Objects;
import m5.g0;

/* JADX INFO: compiled from: PlaceholderSurface.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends Surface {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f11916k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f11917l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f11918h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f11919i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f11920j;

    /* JADX INFO: compiled from: PlaceholderSurface.java */
    public static class a extends HandlerThread implements Handler.Callback {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public m5.h f11921h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Handler f11922i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Error f11923j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public RuntimeException f11924k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public h f11925l;

        public a() {
            super("ExoPlayer:PlaceholderSurface");
        }

        public final void a(int i10) {
            EGLSurface eGLSurfaceEglCreatePbufferSurface;
            Objects.requireNonNull(this.f11921h);
            m5.h hVar = this.f11921h;
            Objects.requireNonNull(hVar);
            EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
            if (eGLDisplayEglGetDisplay == null) {
                throw new m5.h.a("eglGetDisplay failed");
            }
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
                throw new m5.h.a("eglInitialize failed");
            }
            hVar.f10401j = eGLDisplayEglGetDisplay;
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr2 = new int[1];
            boolean zEglChooseConfig = EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, m5.h.f10398n, 0, eGLConfigArr, 0, 1, iArr2, 0);
            if (!zEglChooseConfig || iArr2[0] <= 0 || eGLConfigArr[0] == null) {
                throw new m5.h.a(g0.m("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(zEglChooseConfig), Integer.valueOf(iArr2[0]), eGLConfigArr[0]));
            }
            EGLConfig eGLConfig = eGLConfigArr[0];
            EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(hVar.f10401j, eGLConfig, EGL14.EGL_NO_CONTEXT, i10 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
            if (eGLContextEglCreateContext == null) {
                throw new m5.h.a("eglCreateContext failed");
            }
            hVar.f10402k = eGLContextEglCreateContext;
            EGLDisplay eGLDisplay = hVar.f10401j;
            if (i10 == 1) {
                eGLSurfaceEglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
            } else {
                eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i10 == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                if (eGLSurfaceEglCreatePbufferSurface == null) {
                    throw new m5.h.a("eglCreatePbufferSurface failed");
                }
            }
            if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext)) {
                throw new m5.h.a("eglMakeCurrent failed");
            }
            hVar.f10403l = eGLSurfaceEglCreatePbufferSurface;
            GLES20.glGenTextures(1, hVar.f10400i, 0);
            da.e.f();
            SurfaceTexture surfaceTexture = new SurfaceTexture(hVar.f10400i[0]);
            hVar.f10404m = surfaceTexture;
            surfaceTexture.setOnFrameAvailableListener(hVar);
            SurfaceTexture surfaceTexture2 = this.f11921h.f10404m;
            Objects.requireNonNull(surfaceTexture2);
            this.f11925l = new h(this, surfaceTexture2, i10 != 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void b() {
            Objects.requireNonNull(this.f11921h);
            m5.h hVar = this.f11921h;
            hVar.f10399h.removeCallbacks(hVar);
            try {
                SurfaceTexture surfaceTexture = hVar.f10404m;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                    GLES20.glDeleteTextures(1, hVar.f10400i, 0);
                }
            } finally {
                EGLDisplay eGLDisplay = hVar.f10401j;
                if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay2 = hVar.f10401j;
                    EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface2 = hVar.f10403l;
                if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(hVar.f10401j, hVar.f10403l);
                }
                EGLContext eGLContext = hVar.f10402k;
                if (eGLContext != null) {
                    EGL14.eglDestroyContext(hVar.f10401j, eGLContext);
                }
                if (g0.f10384a >= 19) {
                    EGL14.eglReleaseThread();
                }
                EGLDisplay eGLDisplay3 = hVar.f10401j;
                if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(hVar.f10401j);
                }
                hVar.f10401j = null;
                hVar.f10402k = null;
                hVar.f10403l = null;
                hVar.f10404m = null;
            }
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i10 = message.what;
            try {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return true;
                    }
                    try {
                        b();
                    } catch (Throwable th) {
                        try {
                            m5.p.d("PlaceholderSurface", "Failed to release placeholder surface", th);
                        } finally {
                            quit();
                        }
                    }
                    return true;
                }
                try {
                    a(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e10) {
                    m5.p.d("PlaceholderSurface", "Failed to initialize placeholder surface", e10);
                    this.f11923j = e10;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e11) {
                    m5.p.d("PlaceholderSurface", "Failed to initialize placeholder surface", e11);
                    this.f11924k = e11;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th2) {
                synchronized (this) {
                    notify();
                    throw th2;
                }
            }
        }
    }

    public h(a aVar, SurfaceTexture surfaceTexture, boolean z10) {
        super(surfaceTexture);
        this.f11919i = aVar;
        this.f11918h = z10;
    }

    public static int a(Context context) {
        String strEglQueryString;
        String strEglQueryString2;
        int i10 = g0.f10384a;
        boolean z10 = false;
        if (!(i10 >= 24 && (i10 >= 26 || !("samsung".equals(g0.f10386c) || "XT1650".equals(g0.f10387d))) && ((i10 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString2 = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString2.contains("EGL_EXT_protected_content")))) {
            return 0;
        }
        if (i10 >= 17 && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_KHR_surfaceless_context")) {
            z10 = true;
        }
        return z10 ? 1 : 2;
    }

    public static synchronized boolean b(Context context) {
        if (!f11917l) {
            f11916k = a(context);
            f11917l = true;
        }
        return f11916k != 0;
    }

    public static h c(Context context, boolean z10) {
        boolean z11 = false;
        m5.a.e(!z10 || b(context));
        a aVar = new a();
        int i10 = z10 ? f11916k : 0;
        aVar.start();
        Handler handler = new Handler(aVar.getLooper(), aVar);
        aVar.f11922i = handler;
        aVar.f11921h = new m5.h(handler);
        synchronized (aVar) {
            aVar.f11922i.obtainMessage(1, i10, 0).sendToTarget();
            while (aVar.f11925l == null && aVar.f11924k == null && aVar.f11923j == null) {
                try {
                    aVar.wait();
                } catch (InterruptedException unused) {
                    z11 = true;
                }
            }
        }
        if (z11) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = aVar.f11924k;
        if (runtimeException != null) {
            throw runtimeException;
        }
        Error error = aVar.f11923j;
        if (error != null) {
            throw error;
        }
        h hVar = aVar.f11925l;
        Objects.requireNonNull(hVar);
        return hVar;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f11919i) {
            if (!this.f11920j) {
                a aVar = this.f11919i;
                Objects.requireNonNull(aVar.f11922i);
                aVar.f11922i.sendEmptyMessage(2);
                this.f11920j = true;
            }
        }
    }
}
