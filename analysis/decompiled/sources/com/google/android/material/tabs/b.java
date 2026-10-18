package com.google.android.material.tabs;

import android.view.View;

/* JADX INFO: compiled from: TabLayout.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ View f5470h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ TabLayout.i f5471i;

    public b(TabLayout.i iVar, View view) {
        this.f5471i = iVar;
        this.f5470h = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (this.f5470h.getVisibility() == 0) {
            this.f5471i.f(this.f5470h);
        }
    }
}
