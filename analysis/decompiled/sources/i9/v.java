package i9;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.LinearLayout;
import com.nike.adapt.R;
import q7.g1;
import q7.i1;
import q7.l0;

/* JADX INFO: compiled from: CalibrateOrthoticsFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f8948a;

    public v(t tVar) {
        this.f8948a = tVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animation");
        super.onAnimationEnd(animator);
        i1 i1Var = this.f8948a.f8934k0;
        if (i1Var == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var.f13858c.setText(R.string.adapt_calibration_put_on_shoes_title);
        i1 i1Var2 = this.f8948a.f8934k0;
        if (i1Var2 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var2.f13856a.setText(R.string.adapt_orthotics_put_on_shoes_body);
        l0 l0Var = this.f8948a.f8933j0;
        if (l0Var == null) {
            p4.h.C("contentMessagingHeadlineWithCtaBinding");
            throw null;
        }
        l0Var.f13916b.setAlpha(1.0f);
        g1 g1Var = this.f8948a.f8935l0;
        if (g1Var == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var.f13826b.setVisibility(8);
        l0 l0Var2 = this.f8948a.f8933j0;
        if (l0Var2 == null) {
            p4.h.C("contentMessagingHeadlineWithCtaBinding");
            throw null;
        }
        LinearLayout linearLayout = l0Var2.f13917c;
        p4.h.i(linearLayout, "contentMessagingHeadline….messagingCenterContainer");
        f1.b.g(linearLayout, true, 2).start();
    }
}
