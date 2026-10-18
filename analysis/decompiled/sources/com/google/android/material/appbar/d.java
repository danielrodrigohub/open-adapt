package com.google.android.material.appbar;

import android.view.View;
import k0.j;

/* JADX INFO: compiled from: AppBarLayout.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f5000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f5001b;

    public d(AppBarLayout appBarLayout, boolean z10) {
        this.f5000a = appBarLayout;
        this.f5001b = z10;
    }

    @Override // k0.j
    public final boolean a(View view) {
        this.f5000a.setExpanded(this.f5001b);
        return true;
    }
}
