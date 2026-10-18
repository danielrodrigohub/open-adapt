package n6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarContentLayout;

/* JADX INFO: compiled from: BaseTransientBottomBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11994b;

    public c(BaseTransientBottomBar baseTransientBottomBar, int i10) {
        this.f11994b = baseTransientBottomBar;
        this.f11993a = i10;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f11994b.e();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) this.f11994b.f5363d;
        snackbarContentLayout.f5392h.setAlpha(1.0f);
        long j10 = 180;
        long j11 = 0;
        snackbarContentLayout.f5392h.animate().alpha(0.0f).setDuration(j10).setStartDelay(j11).start();
        if (snackbarContentLayout.f5393i.getVisibility() == 0) {
            snackbarContentLayout.f5393i.setAlpha(1.0f);
            snackbarContentLayout.f5393i.animate().alpha(0.0f).setDuration(j10).setStartDelay(j11).start();
        }
    }
}
