package i9;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Pair;
import android.widget.Button;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import q7.g1;
import x8.n0;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f8922a;

    public n(g gVar) {
        this.f8922a = gVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        p4.h.j(animator, "animation");
        ObjectAnimator objectAnimator = this.f8922a.f8906y0;
        if (objectAnimator != null) {
            objectAnimator.removeListener(this);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animation");
        if (this.f8922a.B()) {
            g gVar = this.f8922a;
            g1 g1Var = gVar.f8892k0;
            if (g1Var == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            Button button = g1Var.f13825a;
            String strR = androidx.lifecycle.o.r(R.string.fine_tune_save_mode);
            Pair[] pairArr = new Pair[1];
            Pair<String, String> pair = gVar.f8903v0;
            if (pair == null) {
                p4.h.C("pairModeName");
                throw null;
            }
            int i10 = 0;
            pairArr[0] = pair;
            button.setText(s9.e.b(strR, pairArr));
            g1 g1Var2 = gVar.f8892k0;
            if (g1Var2 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var2.f13825a.setAlpha(1.0f);
            g1 g1Var3 = gVar.f8892k0;
            if (g1Var3 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var3.f13825a.setVisibility(0);
            g1 g1Var4 = gVar.f8892k0;
            if (g1Var4 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var4.f13825a.setOnClickListener(new b(gVar, i10));
            x8.f0 f0Var = gVar.f8900s0;
            if (f0Var == null) {
                p4.h.C("leftShoeControllerUiHelper");
                throw null;
            }
            f0Var.d();
            n0 n0Var = gVar.f8899r0;
            if (n0Var == null) {
                p4.h.C("rightShoeControllerUiHelper");
                throw null;
            }
            n0Var.d();
            gVar.f8904w0 = 4;
            x8.f0 f0Var2 = gVar.f8900s0;
            if (f0Var2 == null) {
                p4.h.C("leftShoeControllerUiHelper");
                throw null;
            }
            f0Var2.f(true);
            n0 n0Var2 = gVar.f8899r0;
            if (n0Var2 == null) {
                p4.h.C("rightShoeControllerUiHelper");
                throw null;
            }
            n0Var2.f(true);
            BuildersKt__Builders_commonKt.launch$default(gVar.f13342b0, null, null, new s(gVar, null), 3, null).start();
            g1 g1Var5 = gVar.f8892k0;
            if (g1Var5 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var5.f13826b.setVisibility(8);
            if (((h8.a) gVar.I0.getValue()).z()) {
                TrackManager.INSTANCE.multipairFindYourFitFlowStarted();
            } else {
                TrackManager.INSTANCE.isUserScaleStarted();
            }
        }
    }
}
