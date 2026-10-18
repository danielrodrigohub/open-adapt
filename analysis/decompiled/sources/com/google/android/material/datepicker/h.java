package com.google.android.material.datepicker;

import android.graphics.Canvas;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: MaterialCalendar.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f5222a;

    public h(g gVar) {
        this.f5222a = gVar;
        b0.e(null);
        b0.e(null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public final void g(Canvas canvas, RecyclerView recyclerView) {
        if ((recyclerView.getAdapter() instanceof d0) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            Iterator<i0.d<Long, Long>> it = this.f5222a.f5211c0.l().iterator();
            while (it.hasNext()) {
                Objects.requireNonNull(it.next());
            }
        }
    }
}
