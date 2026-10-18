package com.google.android.material.datepicker;

import android.view.View;

/* JADX INFO: compiled from: MaterialDatePicker.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ o f5248h;

    public q(o oVar) {
        this.f5248h = oVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        o oVar = this.f5248h;
        oVar.K0.setEnabled(oVar.s0().q());
        this.f5248h.I0.toggle();
        o oVar2 = this.f5248h;
        oVar2.y0(oVar2.I0);
        this.f5248h.w0();
    }
}
