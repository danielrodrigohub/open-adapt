package m5;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;

/* JADX INFO: compiled from: EGLSurfaceTexture.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f10398n = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f10399h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f10400i = new int[1];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public EGLDisplay f10401j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public EGLContext f10402k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public EGLSurface f10403l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public SurfaceTexture f10404m;

    /* JADX INFO: compiled from: EGLSurfaceTexture.java */
    public static final class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public h(Handler handler) {
        this.f10399h = handler;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f10399h.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f10404m;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }
}
