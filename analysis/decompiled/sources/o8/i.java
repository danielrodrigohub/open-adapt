package o8;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.nike.adapt.ui.GoogleVoicePromptActivity;

/* JADX INFO: compiled from: GoogleVoicePromptActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GoogleVoicePromptActivity f12464a;

    public i(GoogleVoicePromptActivity googleVoicePromptActivity) {
        this.f12464a = googleVoicePromptActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animation");
        q7.i iVar = this.f12464a.E;
        if (iVar != null) {
            iVar.f13845d.e();
        } else {
            p4.h.C("binding");
            throw null;
        }
    }
}
