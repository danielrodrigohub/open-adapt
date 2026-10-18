package com.google.android.material.datepicker;

import android.view.View;

/* JADX INFO: compiled from: MaterialCalendar.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ w f5230h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ g f5231i;

    public m(g gVar, w wVar) {
        this.f5231i = gVar;
        this.f5230h = wVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int iV0 = this.f5231i.q0().V0() - 1;
        if (iV0 >= 0) {
            this.f5231i.s0(this.f5230h.m(iV0));
        }
    }
}
