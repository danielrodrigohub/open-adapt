package com.google.android.material.datepicker;

import android.view.View;

/* JADX INFO: compiled from: MaterialCalendar.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ g f5227h;

    public k(g gVar) {
        this.f5227h = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g gVar = this.f5227h;
        int i10 = gVar.f5213f0;
        if (i10 == 2) {
            gVar.t0(1);
        } else if (i10 == 1) {
            gVar.t0(2);
        }
    }
}
