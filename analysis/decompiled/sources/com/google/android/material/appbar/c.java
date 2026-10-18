package com.google.android.material.appbar;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import k0.j;

/* JADX INFO: compiled from: AppBarLayout.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f4995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f4996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f4997c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout.BaseBehavior f4999e;

    public c(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10) {
        this.f4999e = baseBehavior;
        this.f4995a = coordinatorLayout;
        this.f4996b = appBarLayout;
        this.f4997c = view;
        this.f4998d = i10;
    }

    @Override // k0.j
    public final boolean a(View view) {
        this.f4999e.G(this.f4995a, this.f4996b, this.f4997c, this.f4998d, new int[]{0, 0});
        return true;
    }
}
