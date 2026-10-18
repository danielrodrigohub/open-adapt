package com.google.android.material.snackbar;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: compiled from: BaseTransientBottomBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements SwipeDismissBehavior.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f5399a;

    public e(BaseTransientBottomBar baseTransientBottomBar) {
        this.f5399a = baseTransientBottomBar;
    }

    public final void a(View view) {
        if (view.getParent() != null) {
            view.setVisibility(8);
        }
        this.f5399a.b(0);
    }
}
