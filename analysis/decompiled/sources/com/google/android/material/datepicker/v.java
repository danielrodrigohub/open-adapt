package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;

/* JADX INFO: compiled from: MonthsPagerAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class v implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f5264h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ w f5265i;

    public v(w wVar, MaterialCalendarGridView materialCalendarGridView) {
        this.f5265i = wVar;
        this.f5264h = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        u adapter = this.f5264h.getAdapter();
        if (i10 >= adapter.c() && i10 <= adapter.e()) {
            g.d dVar = (g.d) this.f5265i.f5268f;
            if (g.this.d0.f5173j.n(this.f5264h.getAdapter().getItem(i10).longValue())) {
                g.this.f5211c0.g();
                Iterator<x<Object>> it = g.this.f5272a0.iterator();
                while (it.hasNext()) {
                    it.next().a(g.this.f5211c0.u());
                }
                g.this.f5216i0.getAdapter().d();
                RecyclerView recyclerView = g.this.f5215h0;
                if (recyclerView != null) {
                    recyclerView.getAdapter().d();
                }
            }
        }
    }
}
