package t0;

import android.view.animation.Interpolator;
import androidx.appcompat.widget.o;

/* JADX INFO: compiled from: LookupTableInterpolator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f15328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f15329b;

    public d(float[] fArr) {
        this.f15328a = fArr;
        this.f15329b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f10) {
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f15328a;
        int iMin = Math.min((int) ((fArr.length - 1) * f10), fArr.length - 2);
        float f11 = this.f15329b;
        float f12 = (f10 - (iMin * f11)) / f11;
        float[] fArr2 = this.f15328a;
        return o.c(fArr2[iMin + 1], fArr2[iMin], f12, fArr2[iMin]);
    }
}
