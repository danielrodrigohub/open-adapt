package com.google.android.material.datepicker;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: MaterialCalendar.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends RecyclerView.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f5224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialButton f5225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f5226c;

    public j(g gVar, w wVar, MaterialButton materialButton) {
        this.f5226c = gVar;
        this.f5224a = wVar;
        this.f5225b = materialButton;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public final void a(RecyclerView recyclerView, int i10) {
        if (i10 == 0) {
            recyclerView.announceForAccessibility(this.f5225b.getText());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public final void b(RecyclerView recyclerView, int i10, int i11) {
        int iU0 = i10 < 0 ? this.f5226c.q0().U0() : this.f5226c.q0().V0();
        this.f5226c.f5212e0 = this.f5224a.m(iU0);
        this.f5225b.setText(this.f5224a.m(iU0).w());
    }
}
