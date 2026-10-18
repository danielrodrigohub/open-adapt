package o9;

import android.animation.Animator;
import com.airbnb.lottie.LottieAnimationView;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12521a;

    public r(ShoeControllerActivity shoeControllerActivity) {
        this.f12521a = shoeControllerActivity;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        p4.h.j(animator, "animation");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animation");
        ShoeControllerActivity shoeControllerActivity = this.f12521a;
        LottieAnimationView lottieAnimationView = shoeControllerActivity.v0().f13777s;
        p4.h.i(lottieAnimationView, "binding.presetsSavedAnimation");
        ShoeControllerActivity.p0(shoeControllerActivity, lottieAnimationView);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        p4.h.j(animator, "animation");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        p4.h.j(animator, "animation");
    }
}
