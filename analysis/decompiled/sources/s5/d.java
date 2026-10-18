package s5;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomappbar.BottomAppBar;
import java.util.Objects;

/* JADX INFO: compiled from: BottomAppBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f15132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f15133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f15135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f15136e;

    public d(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i10, boolean z10) {
        this.f15136e = bottomAppBar;
        this.f15133b = actionMenuView;
        this.f15134c = i10;
        this.f15135d = z10;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f15132a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f15132a) {
            return;
        }
        BottomAppBar bottomAppBar = this.f15136e;
        int i10 = bottomAppBar.f5028h0;
        boolean z10 = i10 != 0;
        if (i10 != 0) {
            bottomAppBar.f5028h0 = 0;
            bottomAppBar.getMenu().clear();
            bottomAppBar.n(i10);
        }
        BottomAppBar bottomAppBar2 = this.f15136e;
        ActionMenuView actionMenuView = this.f15133b;
        int i11 = this.f15134c;
        boolean z11 = this.f15135d;
        Objects.requireNonNull(bottomAppBar2);
        e eVar = new e(bottomAppBar2, actionMenuView, i11, z11);
        if (z10) {
            actionMenuView.post(eVar);
        } else {
            eVar.run();
        }
    }
}
