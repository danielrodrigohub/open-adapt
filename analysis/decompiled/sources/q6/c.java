package q6;

import android.animation.ValueAnimator;

/* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.textfield.a f13649a;

    public c(com.google.android.material.textfield.a aVar) {
        this.f13649a = aVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f13649a.f13656c.setScaleX(fFloatValue);
        this.f13649a.f13656c.setScaleY(fFloatValue);
    }
}
