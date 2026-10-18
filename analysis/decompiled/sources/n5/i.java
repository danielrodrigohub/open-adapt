package n5;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: compiled from: VideoDecoderGLSurfaceView.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends GLSurfaceView implements j {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f11926h;

    /* JADX INFO: compiled from: VideoDecoderGLSurfaceView.java */
    public static final class a implements GLSurfaceView.Renderer {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final float[] f11927q = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final String[] f11928r = {"y_tex", "u_tex", "v_tex"};

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final FloatBuffer f11929s = da.e.g(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final GLSurfaceView f11930h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int[] f11931i = new int[3];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int[] f11932j = new int[3];

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int[] f11933k = new int[3];

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int[] f11934l = new int[3];

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final AtomicReference<q3.k> f11935m = new AtomicReference<>();

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public m5.k f11936n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f11937o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public q3.k f11938p;

        public a(GLSurfaceView gLSurfaceView) {
            this.f11930h = gLSurfaceView;
            for (int i10 = 0; i10 < 3; i10++) {
                int[] iArr = this.f11933k;
                this.f11934l[i10] = -1;
                iArr[i10] = -1;
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            q3.k andSet = this.f11935m.getAndSet(null);
            if (andSet == null && this.f11938p == null) {
                return;
            }
            if (andSet != null) {
                if (this.f11938p != null) {
                    throw null;
                }
                this.f11938p = andSet;
            }
            Objects.requireNonNull(this.f11938p);
            GLES20.glUniformMatrix3fv(this.f11937o, 1, false, f11927q, 0);
            throw null;
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            m5.k kVar = new m5.k("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
            this.f11936n = kVar;
            GLES20.glVertexAttribPointer(kVar.b("in_pos"), 2, 5126, false, 0, (Buffer) f11929s);
            this.f11932j[0] = this.f11936n.b("in_tc_y");
            this.f11932j[1] = this.f11936n.b("in_tc_u");
            this.f11932j[2] = this.f11936n.b("in_tc_v");
            this.f11937o = this.f11936n.c("mColorConversion");
            da.e.f();
            GLES20.glGenTextures(3, this.f11931i, 0);
            for (int i10 = 0; i10 < 3; i10++) {
                GLES20.glUniform1i(this.f11936n.c(f11928r[i10]), i10);
                GLES20.glActiveTexture(33984 + i10);
                da.e.e(3553, this.f11931i[i10]);
            }
            da.e.f();
            da.e.f();
        }
    }

    public i(Context context) {
        super(context, null);
        a aVar = new a(this);
        this.f11926h = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }

    @Deprecated
    public j getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    public void setOutputBuffer(q3.k kVar) {
        a aVar = this.f11926h;
        if (aVar.f11935m.getAndSet(kVar) != null) {
            throw null;
        }
        aVar.f11930h.requestRender();
    }
}
