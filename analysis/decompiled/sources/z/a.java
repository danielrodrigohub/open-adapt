package z;

import android.graphics.Color;
import androidx.activity.k;

/* JADX INFO: compiled from: CamColor.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f19205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f19206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f19207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f19208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f19209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f19210f;

    public a(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f19205a = f10;
        this.f19206b = f11;
        this.f19207c = f12;
        this.f19208d = f13;
        this.f19209e = f14;
        this.f19210f = f15;
    }

    public static a a(int i10) {
        j jVar = j.f19239k;
        float fO = k.o(Color.red(i10));
        float fO2 = k.o(Color.green(i10));
        float fO3 = k.o(Color.blue(i10));
        float[][] fArr = k.f712f;
        float[] fArr2 = {(fArr[0][2] * fO3) + (fArr[0][1] * fO2) + (fArr[0][0] * fO), (fArr[1][2] * fO3) + (fArr[1][1] * fO2) + (fArr[1][0] * fO), (fO3 * fArr[2][2]) + (fO2 * fArr[2][1]) + (fO * fArr[2][0])};
        float[][] fArr3 = k.f709c;
        float f10 = (fArr2[2] * fArr3[0][2]) + (fArr2[1] * fArr3[0][1]) + (fArr2[0] * fArr3[0][0]);
        float f11 = (fArr2[2] * fArr3[1][2]) + (fArr2[1] * fArr3[1][1]) + (fArr2[0] * fArr3[1][0]);
        float f12 = (fArr2[2] * fArr3[2][2]) + (fArr2[1] * fArr3[2][1]) + (fArr2[0] * fArr3[2][0]);
        float[] fArr4 = jVar.f19246g;
        float f13 = fArr4[0] * f10;
        float f14 = fArr4[1] * f11;
        float f15 = fArr4[2] * f12;
        float fPow = (float) Math.pow(((double) (Math.abs(f13) * jVar.f19247h)) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (Math.abs(f14) * jVar.f19247h)) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (Math.abs(f15) * jVar.f19247h)) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f13) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f14) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f15) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d10 = fSignum3;
        float f16 = ((float) (((((double) fSignum2) * (-12.0d)) + (((double) fSignum) * 11.0d)) + d10)) / 11.0f;
        float f17 = ((float) (((double) (fSignum + fSignum2)) - (d10 * 2.0d))) / 9.0f;
        float f18 = fSignum2 * 20.0f;
        float f19 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f18)) / 20.0f;
        float f20 = (((fSignum * 40.0f) + f18) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f17, f16)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f21 = fAtan2;
        float f22 = (3.1415927f * f21) / 180.0f;
        float fPow4 = ((float) Math.pow((f20 * jVar.f19241b) / jVar.f19240a, jVar.f19243d * jVar.f19249j)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, jVar.f19245f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((((double) (((double) f21) < 20.14d ? 360.0f + f21 : f21)) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * jVar.f19244e) * jVar.f19242c) * ((float) Math.sqrt((f17 * f17) + (f16 * f16)))) / (f19 + 0.305f), 0.9d));
        float fSqrt = fPow5 * ((float) Math.sqrt(((double) fPow4) / 100.0d));
        float f23 = jVar.f19248i * fSqrt;
        Math.sqrt((fPow5 * jVar.f19243d) / (jVar.f19240a + 4.0f));
        float f24 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((f23 * 0.0228f) + 1.0f)) * 43.85965f;
        double d11 = f22;
        return new a(f21, fSqrt, fPow4, f24, fLog * ((float) Math.cos(d11)), fLog * ((float) Math.sin(d11)));
    }

    public static a b(float f10, float f11, float f12) {
        j jVar = j.f19239k;
        float f13 = jVar.f19243d;
        double d10 = ((double) f10) / 100.0d;
        Math.sqrt(d10);
        float f14 = jVar.f19248i * f11;
        Math.sqrt(((f11 / ((float) Math.sqrt(d10))) * jVar.f19243d) / (jVar.f19240a + 4.0f));
        float f15 = (1.7f * f10) / ((0.007f * f10) + 1.0f);
        float fLog = ((float) Math.log((((double) f14) * 0.0228d) + 1.0d)) * 43.85965f;
        double d11 = (3.1415927f * f12) / 180.0f;
        return new a(f12, f11, f10, f15, fLog * ((float) Math.cos(d11)), fLog * ((float) Math.sin(d11)));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    public final int c(j jVar) {
        float fSqrt;
        float f10 = this.f19206b;
        if (f10 != 0.0d) {
            double d10 = this.f19207c;
            if (d10 == 0.0d) {
                fSqrt = 0.0f;
            } else {
                fSqrt = f10 / ((float) Math.sqrt(d10 / 100.0d));
            }
        } else {
            fSqrt = 0.0f;
        }
        float fPow = (float) Math.pow(((double) fSqrt) / Math.pow(1.64d - Math.pow(0.29d, jVar.f19245f), 0.73d), 1.1111111111111112d);
        double d11 = (this.f19205a * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + d11) + 3.8d)) * 0.25f;
        float fPow2 = jVar.f19240a * ((float) Math.pow(((double) this.f19207c) / 100.0d, (1.0d / ((double) jVar.f19243d)) / ((double) jVar.f19249j)));
        float f11 = fCos * 3846.1538f * jVar.f19244e * jVar.f19242c;
        float f12 = fPow2 / jVar.f19241b;
        float fSin = (float) Math.sin(d11);
        float fCos2 = (float) Math.cos(d11);
        float f13 = (((0.305f + f12) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (f11 * 23.0f)));
        float f14 = fCos2 * f13;
        float f15 = f13 * fSin;
        float f16 = f12 * 460.0f;
        float f17 = ((288.0f * f15) + ((451.0f * f14) + f16)) / 1403.0f;
        float f18 = ((f16 - (891.0f * f14)) - (261.0f * f15)) / 1403.0f;
        float f19 = ((f16 - (f14 * 220.0f)) - (f15 * 6300.0f)) / 1403.0f;
        float fSignum = (100.0f / jVar.f19247h) * Math.signum(f17) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f17)) * 27.13d) / (400.0d - ((double) Math.abs(f17)))), 2.380952380952381d));
        float fSignum2 = (100.0f / jVar.f19247h) * Math.signum(f18) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f18)) * 27.13d) / (400.0d - ((double) Math.abs(f18)))), 2.380952380952381d));
        float fSignum3 = (100.0f / jVar.f19247h) * Math.signum(f19) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f19)) * 27.13d) / (400.0d - ((double) Math.abs(f19)))), 2.380952380952381d));
        float[] fArr = jVar.f19246g;
        float f20 = fSignum / fArr[0];
        float f21 = fSignum2 / fArr[1];
        float f22 = fSignum3 / fArr[2];
        float[][] fArr2 = k.f710d;
        return a0.a.a((fArr2[0][2] * f22) + (fArr2[0][1] * f21) + (fArr2[0][0] * f20), (fArr2[1][2] * f22) + (fArr2[1][1] * f21) + (fArr2[1][0] * f20), (f22 * fArr2[2][2]) + (f21 * fArr2[2][1]) + (f20 * fArr2[2][0]));
    }
}
