package com.google.android.material.datepicker;

import android.view.View;
import j0.l0;

/* JADX INFO: compiled from: MaterialDatePicker.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements j0.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f5246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5247c;

    public p(int i10, View view, int i11) {
        this.f5245a = i10;
        this.f5246b = view;
        this.f5247c = i11;
    }

    @Override // j0.q
    public final l0 a(View view, l0 l0Var) {
        int i10 = l0Var.b(7).f6b;
        if (this.f5245a >= 0) {
            this.f5246b.getLayoutParams().height = this.f5245a + i10;
            View view2 = this.f5246b;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        View view3 = this.f5246b;
        view3.setPadding(view3.getPaddingLeft(), this.f5247c + i10, this.f5246b.getPaddingRight(), this.f5246b.getPaddingBottom());
        return l0Var;
    }
}
