package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: MaterialTextInputPicker.java */
/* JADX INFO: loaded from: classes.dex */
public final class s<S> extends y {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f5249b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public d<S> f5250c0;
    public a d0;

    @Override // androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        if (bundle == null) {
            bundle = this.f1971n;
        }
        this.f5249b0 = bundle.getInt("THEME_RES_ID_KEY");
        this.f5250c0 = (d) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.d0 = (a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.cloneInContext(new ContextThemeWrapper(l(), this.f5249b0));
        return this.f5250c0.x();
    }

    @Override // androidx.fragment.app.m
    public final void R(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.f5249b0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f5250c0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d0);
    }
}
