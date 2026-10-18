package o5;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;

/* JADX INFO: compiled from: OrientationListener.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f12279a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f12280b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f12281c = new float[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float[] f12282d = new float[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Display f12283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a[] f12284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f12285g;

    /* JADX INFO: compiled from: OrientationListener.java */
    public interface a {
        void a(float[] fArr, float f10);
    }

    public d(Display display, a... aVarArr) {
        this.f12283e = display;
        this.f12284f = aVarArr;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f12279a, sensorEvent.values);
        float[] fArr = this.f12279a;
        int rotation = this.f12283e.getRotation();
        if (rotation != 0) {
            int i10 = 130;
            int i11 = 129;
            if (rotation == 1) {
                i10 = 2;
            } else if (rotation == 2) {
                i11 = 130;
                i10 = 129;
            } else {
                if (rotation != 3) {
                    throw new IllegalStateException();
                }
                i11 = 1;
            }
            float[] fArr2 = this.f12280b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f12280b, i10, i11, fArr);
        }
        SensorManager.remapCoordinateSystem(this.f12279a, 1, 131, this.f12280b);
        SensorManager.getOrientation(this.f12280b, this.f12282d);
        float f10 = this.f12282d[2];
        Matrix.rotateM(this.f12279a, 0, 90.0f, 1.0f, 0.0f, 0.0f);
        float[] fArr3 = this.f12279a;
        if (!this.f12285g) {
            c.a(this.f12281c, fArr3);
            this.f12285g = true;
        }
        float[] fArr4 = this.f12280b;
        System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
        Matrix.multiplyMM(fArr3, 0, this.f12280b, 0, this.f12281c, 0);
        float[] fArr5 = this.f12279a;
        for (a aVar : this.f12284f) {
            aVar.a(fArr5, f10);
        }
    }
}
