package com.google.android.material.datepicker;

import android.view.View;

/* JADX INFO: compiled from: MaterialCalendar.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ w f5228h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ g f5229i;

    public l(g gVar, w wVar) {
        this.f5229i = gVar;
        this.f5228h = wVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int iU0 = this.f5229i.q0().U0() + 1;
        if (iU0 < this.f5229i.f5216i0.getAdapter().a()) {
            this.f5229i.s0(this.f5228h.m(iU0));
        }
    }
}
