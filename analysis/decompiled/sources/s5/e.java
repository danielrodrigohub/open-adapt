package s5;

import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomappbar.BottomAppBar;

/* JADX INFO: compiled from: BottomAppBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f15137h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f15138i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f15139j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f15140k;

    public e(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i10, boolean z10) {
        this.f15140k = bottomAppBar;
        this.f15137h = actionMenuView;
        this.f15138i = i10;
        this.f15139j = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ActionMenuView actionMenuView = this.f15137h;
        actionMenuView.setTranslationX(this.f15140k.C(actionMenuView, this.f15138i, this.f15139j));
    }
}
