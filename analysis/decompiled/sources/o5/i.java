package o5;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.EGL14;
import android.opengl.GLES20;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import m5.c0;
import m5.g0;
import m5.w;
import n3.s0;

/* JADX INFO: compiled from: SceneRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements n5.k, a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12319p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public SurfaceTexture f12320q;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte[] f12323t;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f12311h = new AtomicBoolean();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f12312i = new AtomicBoolean(true);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final g f12313j = new g();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final c f12314k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final c0<Long> f12315l = new c0<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final c0<e> f12316m = new c0<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float[] f12317n = new float[16];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float[] f12318o = new float[16];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile int f12321r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f12322s = -1;

    @Override // o5.a
    public final void a(long j10, float[] fArr) {
        this.f12314k.f12277c.a(j10, fArr);
    }

    public final SurfaceTexture b() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        da.e.f();
        g gVar = this.f12313j;
        Objects.requireNonNull(gVar);
        m5.k kVar = new m5.k("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
        gVar.f12300c = kVar;
        gVar.f12301d = kVar.c("uMvpMatrix");
        gVar.f12302e = gVar.f12300c.c("uTexMatrix");
        gVar.f12303f = gVar.f12300c.b("aPosition");
        gVar.f12304g = gVar.f12300c.b("aTexCoords");
        gVar.f12305h = gVar.f12300c.c("uTexture");
        da.e.f();
        if (!(!g0.a(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT))) {
            da.e.i("No current context");
        }
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        da.e.f();
        int i10 = iArr[0];
        da.e.e(36197, i10);
        this.f12319p = i10;
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f12319p);
        this.f12320q = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: o5.h
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f12310h.f12311h.set(true);
            }
        });
        return this.f12320q;
    }

    @Override // o5.a
    public final void c() {
        this.f12315l.b();
        c cVar = this.f12314k;
        cVar.f12277c.b();
        cVar.f12278d = false;
        this.f12312i.set(true);
    }

    @Override // n5.k
    public final void d(long j10, long j11, s0 s0Var, MediaFormat mediaFormat) {
        float f10;
        float f11;
        int i10;
        int i11;
        ArrayList<e.a> arrayListA;
        this.f12315l.a(j11, Long.valueOf(j10));
        byte[] bArr = s0Var.C;
        int i12 = s0Var.D;
        byte[] bArr2 = this.f12323t;
        int i13 = this.f12322s;
        this.f12323t = bArr;
        if (i12 == -1) {
            i12 = this.f12321r;
        }
        this.f12322s = i12;
        if (i13 == i12 && Arrays.equals(bArr2, this.f12323t)) {
            return;
        }
        byte[] bArr3 = this.f12323t;
        e eVar = null;
        if (bArr3 != null) {
            int i14 = this.f12322s;
            w wVar = new w(bArr3);
            try {
                wVar.E(4);
                int iE = wVar.e();
                wVar.D(0);
                if (iE == 1886547818) {
                    wVar.E(8);
                    int i15 = wVar.f10476b;
                    int i16 = wVar.f10477c;
                    while (true) {
                        if (i15 < i16) {
                            int iE2 = wVar.e() + i15;
                            if (iE2 > i15 && iE2 <= i16) {
                                int iE3 = wVar.e();
                                if (iE3 != 2037673328 && iE3 != 1836279920) {
                                    wVar.D(iE2);
                                    i15 = iE2;
                                }
                                wVar.C(iE2);
                                arrayListA = f.a(wVar);
                            }
                        }
                        arrayListA = null;
                    }
                } else {
                    arrayListA = f.a(wVar);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            if (arrayListA != null) {
                int size = arrayListA.size();
                if (size == 1) {
                    eVar = new e(arrayListA.get(0), i14);
                } else if (size == 2) {
                    eVar = new e(arrayListA.get(0), arrayListA.get(1), i14);
                }
            }
        }
        if (eVar == null || !g.a(eVar)) {
            int i17 = this.f12322s;
            float radians = (float) Math.toRadians(180.0f);
            float radians2 = (float) Math.toRadians(360.0f);
            float f12 = radians / 36;
            float f13 = radians2 / 72;
            float[] fArr = new float[15984];
            float[] fArr2 = new float[10656];
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            for (int i21 = 36; i18 < i21; i21 = 36) {
                float f14 = radians / 2.0f;
                float f15 = (i18 * f12) - f14;
                int i22 = i18 + 1;
                float f16 = (i22 * f12) - f14;
                int i23 = 0;
                while (i23 < 73) {
                    int i24 = i22;
                    int i25 = 0;
                    int i26 = 2;
                    while (i25 < i26) {
                        if (i25 == 0) {
                            f11 = f16;
                            f10 = f15;
                        } else {
                            f10 = f16;
                            f11 = f10;
                        }
                        float f17 = i23 * f13;
                        float f18 = f15;
                        int i27 = i19 + 1;
                        float f19 = f13;
                        double d10 = 50.0f;
                        int i28 = i23;
                        double d11 = (f17 + 3.1415927f) - (radians2 / 2.0f);
                        int i29 = i17;
                        float f20 = radians;
                        double d12 = f10;
                        float f21 = f12;
                        fArr[i19] = -((float) (Math.cos(d12) * Math.sin(d11) * d10));
                        int i30 = i27 + 1;
                        int i31 = i25;
                        fArr[i27] = (float) (Math.sin(d12) * d10);
                        int i32 = i30 + 1;
                        fArr[i30] = (float) (Math.cos(d12) * Math.cos(d11) * d10);
                        int i33 = i20 + 1;
                        fArr2[i20] = f17 / radians2;
                        int i34 = i33 + 1;
                        fArr2[i33] = ((i18 + i31) * f21) / f20;
                        if (i28 == 0 && i31 == 0) {
                            i11 = i31;
                            i10 = i28;
                        } else {
                            i10 = i28;
                            i11 = i31;
                            int i35 = (i10 == 72 && i11 == 1) ? 2 : 2;
                            i20 = i34;
                            i19 = i32;
                            i25 = i11 + 1;
                            i23 = i10;
                            i26 = i35;
                            f16 = f11;
                            f13 = f19;
                            f15 = f18;
                            radians = f20;
                            f12 = f21;
                            i17 = i29;
                        }
                        System.arraycopy(fArr, i32 - 3, fArr, i32, 3);
                        i32 += 3;
                        System.arraycopy(fArr2, i34 - 2, fArr2, i34, 2);
                        i34 += 2;
                        i20 = i34;
                        i19 = i32;
                        i25 = i11 + 1;
                        i23 = i10;
                        i26 = i35;
                        f16 = f11;
                        f13 = f19;
                        f15 = f18;
                        radians = f20;
                        f12 = f21;
                        i17 = i29;
                    }
                    i23++;
                    i22 = i24;
                    f16 = f16;
                    i17 = i17;
                }
                i18 = i22;
            }
            eVar = new e(new e.a(new e.b(0, fArr, fArr2, 1)), i17);
        }
        this.f12316m.a(j11, eVar);
    }
}
