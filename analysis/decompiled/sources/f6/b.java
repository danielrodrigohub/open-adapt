package f6;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;

/* JADX INFO: compiled from: FloatingActionButtonImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements TypeEvaluator<Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FloatEvaluator f7085a = new FloatEvaluator();

    @Override // android.animation.TypeEvaluator
    public final Float evaluate(float f10, Float f11, Float f12) {
        float fFloatValue = this.f7085a.evaluate(f10, (Number) f11, (Number) f12).floatValue();
        if (fFloatValue < 0.1f) {
            fFloatValue = 0.0f;
        }
        return Float.valueOf(fFloatValue);
    }
}
