package com.google.android.material.datepicker;

import android.view.View;
import com.google.android.material.R;

/* JADX INFO: compiled from: MaterialCalendar.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends j0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f5223d;

    public i(g gVar) {
        this.f5223d = gVar;
    }

    @Override // j0.a
    public final void d(View view, k0.f fVar) {
        this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
        fVar.t(this.f5223d.f5218k0.getVisibility() == 0 ? this.f5223d.z(R.string.mtrl_picker_toggle_to_year_selection) : this.f5223d.z(R.string.mtrl_picker_toggle_to_day_selection));
    }
}
