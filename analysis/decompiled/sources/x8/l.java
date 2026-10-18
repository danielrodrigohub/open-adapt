package x8;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;

/* JADX INFO: compiled from: AnimationHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f17926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f17927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f17928c;

    public l(TextView textView, String str, long j10) {
        this.f17926a = textView;
        this.f17927b = str;
        this.f17928c = j10;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p4.h.j(animator, "animation");
        super.onAnimationEnd(animator);
        this.f17926a.animate().setListener(null);
        this.f17926a.setText(this.f17927b);
        this.f17926a.animate().setDuration(this.f17928c).alpha(1.0f).start();
    }
}
