package o5;

import android.opengl.Matrix;
import m5.c0;

/* JADX INFO: compiled from: FrameRotationQueue.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f12275a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f12276b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c0<float[]> f12277c = new c0<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f12278d;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float fSqrt = (float) Math.sqrt((fArr2[8] * fArr2[8]) + (fArr2[10] * fArr2[10]));
        fArr[0] = fArr2[10] / fSqrt;
        fArr[2] = fArr2[8] / fSqrt;
        fArr[8] = (-fArr2[8]) / fSqrt;
        fArr[10] = fArr2[10] / fSqrt;
    }
}
