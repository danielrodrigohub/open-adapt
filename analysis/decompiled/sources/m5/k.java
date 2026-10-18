package m5;

import android.opengl.GLES20;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: GlProgram.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a[] f10409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b[] f10410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, a> f10411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map<String, b> f10412e;

    /* JADX INFO: compiled from: GlProgram.java */
    public static final class a {
        public a(String str) {
        }
    }

    /* JADX INFO: compiled from: GlProgram.java */
    public static final class b {
        public b(String str) {
        }
    }

    /* JADX WARN: Type inference failed for: r6v12, types: [java.util.HashMap, java.util.Map<java.lang.String, m5.k$a>] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.HashMap, java.util.Map<java.lang.String, m5.k$b>] */
    public k(String str, String str2) {
        byte[] bArr;
        byte[] bArr2;
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.f10408a = iGlCreateProgram;
        da.e.f();
        a(iGlCreateProgram, 35633, str);
        a(iGlCreateProgram, 35632, str2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int i10 = 1;
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            StringBuilder sbC = a0.b.c("Unable to link shader program: \n");
            sbC.append(GLES20.glGetProgramInfoLog(iGlCreateProgram));
            da.e.i(sbC.toString());
        }
        GLES20.glUseProgram(iGlCreateProgram);
        this.f10411d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.f10409b = new a[iArr2[0]];
        int i11 = 0;
        while (i11 < iArr2[0]) {
            int i12 = this.f10408a;
            int[] iArr3 = new int[i10];
            GLES20.glGetProgramiv(i12, 35722, iArr3, 0);
            int i13 = iArr3[0];
            byte[] bArr3 = new byte[i13];
            GLES20.glGetActiveAttrib(i12, i11, iArr3[0], new int[i10], 0, new int[i10], 0, new int[i10], 0, bArr3, 0);
            int i14 = 0;
            while (true) {
                if (i14 >= i13) {
                    bArr2 = bArr3;
                    i14 = i13;
                    break;
                } else {
                    bArr2 = bArr3;
                    if (bArr2[i14] == 0) {
                        break;
                    }
                    i14++;
                    bArr3 = bArr2;
                }
            }
            String str3 = new String(bArr2, 0, i14);
            GLES20.glGetAttribLocation(i12, str3);
            a aVar = new a(str3);
            this.f10409b[i11] = aVar;
            this.f10411d.put(str3, aVar);
            i11++;
            i10 = 1;
        }
        this.f10412e = new HashMap();
        int i15 = 1;
        int[] iArr4 = new int[1];
        GLES20.glGetProgramiv(this.f10408a, 35718, iArr4, 0);
        this.f10410c = new b[iArr4[0]];
        int i16 = 0;
        while (i16 < iArr4[0]) {
            int i17 = this.f10408a;
            int[] iArr5 = new int[i15];
            GLES20.glGetProgramiv(i17, 35719, iArr5, 0);
            int i18 = iArr5[0];
            byte[] bArr4 = new byte[i18];
            GLES20.glGetActiveUniform(i17, i16, iArr5[0], new int[i15], 0, new int[i15], 0, new int[i15], 0, bArr4, 0);
            int i19 = 0;
            while (true) {
                if (i19 >= i18) {
                    bArr = bArr4;
                    i19 = i18;
                    break;
                } else {
                    bArr = bArr4;
                    if (bArr[i19] == 0) {
                        break;
                    }
                    i19++;
                    bArr4 = bArr;
                }
            }
            String str4 = new String(bArr, 0, i19);
            GLES20.glGetUniformLocation(i17, str4);
            b bVar = new b(str4);
            this.f10410c[i16] = bVar;
            this.f10412e.put(str4, bVar);
            i16++;
            i15 = 1;
        }
        da.e.f();
    }

    public static void a(int i10, int i11, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i11);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            da.e.i(GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i10, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        da.e.f();
    }

    public final int b(String str) {
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.f10408a, str);
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        da.e.f();
        return iGlGetAttribLocation;
    }

    public final int c(String str) {
        return GLES20.glGetUniformLocation(this.f10408a, str);
    }
}
