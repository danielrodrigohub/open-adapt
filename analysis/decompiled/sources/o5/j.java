package o5;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import androidx.appcompat.widget.g1;
import java.nio.Buffer;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import m5.c0;
import m5.g0;
import okhttp3.internal.http2.Http2;

/* JADX INFO: compiled from: SphericalGLSurfaceView.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends GLSurfaceView {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CopyOnWriteArrayList<b> f12324h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SensorManager f12325i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Sensor f12326j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final d f12327k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Handler f12328l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final i f12329m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public SurfaceTexture f12330n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Surface f12331o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f12332p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f12333q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f12334r;

    /* JADX INFO: compiled from: SphericalGLSurfaceView.java */
    public final class a implements GLSurfaceView.Renderer, k.a, d.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final i f12335h;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float[] f12338k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final float[] f12339l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final float[] f12340m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f12341n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public float f12342o;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float[] f12336i = new float[16];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float[] f12337j = new float[16];

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final float[] f12343p = new float[16];

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final float[] f12344q = new float[16];

        public a(i iVar) {
            float[] fArr = new float[16];
            this.f12338k = fArr;
            float[] fArr2 = new float[16];
            this.f12339l = fArr2;
            float[] fArr3 = new float[16];
            this.f12340m = fArr3;
            this.f12335h = iVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f12342o = 3.1415927f;
        }

        @Override // o5.d.a
        public final synchronized void a(float[] fArr, float f10) {
            float[] fArr2 = this.f12338k;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f12342o = -f10;
            b();
        }

        public final void b() {
            Matrix.setRotateM(this.f12339l, 0, -this.f12341n, (float) Math.cos(this.f12342o), (float) Math.sin(this.f12342o), 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            float[] fArr;
            Long lD;
            synchronized (this) {
                Matrix.multiplyMM(this.f12344q, 0, this.f12338k, 0, this.f12340m, 0);
                Matrix.multiplyMM(this.f12343p, 0, this.f12339l, 0, this.f12344q, 0);
            }
            Matrix.multiplyMM(this.f12337j, 0, this.f12336i, 0, this.f12343p, 0);
            i iVar = this.f12335h;
            float[] fArr2 = this.f12337j;
            Objects.requireNonNull(iVar);
            GLES20.glClear(Http2.INITIAL_MAX_FRAME_SIZE);
            da.e.f();
            if (iVar.f12311h.compareAndSet(true, false)) {
                SurfaceTexture surfaceTexture = iVar.f12320q;
                Objects.requireNonNull(surfaceTexture);
                surfaceTexture.updateTexImage();
                da.e.f();
                if (iVar.f12312i.compareAndSet(true, false)) {
                    Matrix.setIdentityM(iVar.f12317n, 0);
                }
                long timestamp = iVar.f12320q.getTimestamp();
                c0<Long> c0Var = iVar.f12315l;
                synchronized (c0Var) {
                    lD = c0Var.d(timestamp, false);
                }
                Long l10 = lD;
                if (l10 != null) {
                    c cVar = iVar.f12314k;
                    float[] fArr3 = iVar.f12317n;
                    float[] fArrE = cVar.f12277c.e(l10.longValue());
                    if (fArrE != null) {
                        float[] fArr4 = cVar.f12276b;
                        float f10 = fArrE[0];
                        float f11 = -fArrE[1];
                        float f12 = -fArrE[2];
                        float length = Matrix.length(f10, f11, f12);
                        if (length != 0.0f) {
                            Matrix.setRotateM(fArr4, 0, (float) Math.toDegrees(length), f10 / length, f11 / length, f12 / length);
                        } else {
                            Matrix.setIdentityM(fArr4, 0);
                        }
                        if (!cVar.f12278d) {
                            c.a(cVar.f12275a, cVar.f12276b);
                            cVar.f12278d = true;
                        }
                        Matrix.multiplyMM(fArr3, 0, cVar.f12275a, 0, cVar.f12276b, 0);
                    }
                }
                e eVarE = iVar.f12316m.e(timestamp);
                if (eVarE != null) {
                    g gVar = iVar.f12313j;
                    Objects.requireNonNull(gVar);
                    if (g.a(eVarE)) {
                        gVar.f12298a = eVarE.f12288c;
                        gVar.f12299b = new g.a(eVarE.f12286a.f12290a[0]);
                        if (!eVarE.f12289d) {
                            e.b bVar = eVarE.f12287b.f12290a[0];
                            float[] fArr5 = bVar.f12293c;
                            int length2 = fArr5.length / 3;
                            da.e.g(fArr5);
                            da.e.g(bVar.f12294d);
                            int i10 = bVar.f12292b;
                        }
                    }
                }
            }
            Matrix.multiplyMM(iVar.f12318o, 0, fArr2, 0, iVar.f12317n, 0);
            g gVar2 = iVar.f12313j;
            int i11 = iVar.f12319p;
            float[] fArr6 = iVar.f12318o;
            g.a aVar = gVar2.f12299b;
            if (aVar == null) {
                return;
            }
            int i12 = gVar2.f12298a;
            if (i12 == 1) {
                fArr = g.f12296j;
            } else {
                fArr = i12 == 2 ? g.f12297k : g.f12295i;
            }
            GLES20.glUniformMatrix3fv(gVar2.f12302e, 1, false, fArr, 0);
            GLES20.glUniformMatrix4fv(gVar2.f12301d, 1, false, fArr6, 0);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, i11);
            GLES20.glUniform1i(gVar2.f12305h, 0);
            da.e.f();
            GLES20.glVertexAttribPointer(gVar2.f12303f, 3, 5126, false, 12, (Buffer) aVar.f12307b);
            da.e.f();
            GLES20.glVertexAttribPointer(gVar2.f12304g, 2, 5126, false, 8, (Buffer) aVar.f12308c);
            da.e.f();
            GLES20.glDrawArrays(aVar.f12309d, 0, aVar.f12306a);
            da.e.f();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
            float f10 = i10 / i11;
            Matrix.perspectiveM(this.f12336i, 0, f10 > 1.0f ? (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f10))) * 2.0d) : 90.0f, f10, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            j jVar = j.this;
            jVar.f12328l.post(new p3.j(jVar, this.f12335h.b(), 2));
        }
    }

    /* JADX INFO: compiled from: SphericalGLSurfaceView.java */
    public interface b {
        void e(Surface surface);

        void j();
    }

    public j(Context context) {
        super(context, null);
        this.f12324h = new CopyOnWriteArrayList<>();
        this.f12328l = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        Objects.requireNonNull(systemService);
        SensorManager sensorManager = (SensorManager) systemService;
        this.f12325i = sensorManager;
        Sensor defaultSensor = g0.f10384a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f12326j = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        i iVar = new i();
        this.f12329m = iVar;
        a aVar = new a(iVar);
        View.OnTouchListener kVar = new k(context, aVar);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Objects.requireNonNull(windowManager);
        this.f12327k = new d(windowManager.getDefaultDisplay(), kVar, aVar);
        this.f12332p = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(kVar);
    }

    public final void a() {
        boolean z10 = this.f12332p && this.f12333q;
        Sensor sensor = this.f12326j;
        if (sensor == null || z10 == this.f12334r) {
            return;
        }
        if (z10) {
            this.f12325i.registerListener(this.f12327k, sensor, 0);
        } else {
            this.f12325i.unregisterListener(this.f12327k);
        }
        this.f12334r = z10;
    }

    public o5.a getCameraMotionListener() {
        return this.f12329m;
    }

    public n5.k getVideoFrameMetadataListener() {
        return this.f12329m;
    }

    public Surface getVideoSurface() {
        return this.f12331o;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f12328l.post(new g1(this, 3));
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.f12333q = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.f12333q = true;
        a();
    }

    public void setDefaultStereoMode(int i10) {
        this.f12329m.f12321r = i10;
    }

    public void setUseSensorRotation(boolean z10) {
        this.f12332p = z10;
        a();
    }
}
