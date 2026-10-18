package com.google.android.material.datepicker;

import android.view.View;

/* JADX INFO: compiled from: YearGridAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f5200h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d0 f5201i;

    public c0(d0 d0Var, int i10) {
        this.f5201i = d0Var;
        this.f5200h = i10;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        t tVarM = t.m(this.f5200h, this.f5201i.f5202d.f5212e0.f5252i);
        a aVar = this.f5201i.f5202d.d0;
        if (tVarM.compareTo(aVar.f5171h) < 0) {
            tVarM = aVar.f5171h;
        } else if (tVarM.compareTo(aVar.f5172i) > 0) {
            tVarM = aVar.f5172i;
        }
        this.f5201i.f5202d.s0(tVarM);
        this.f5201i.f5202d.t0(1);
    }
}
