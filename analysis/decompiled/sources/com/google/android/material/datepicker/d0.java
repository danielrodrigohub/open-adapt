package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: YearGridAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends RecyclerView.e<a> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g<?> f5202d;

    /* JADX INFO: compiled from: YearGridAdapter.java */
    public static class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final TextView f5203u;

        public a(TextView textView) {
            super(textView);
            this.f5203u = textView;
        }
    }

    public d0(g<?> gVar) {
        this.f5202d = gVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f5202d.d0.f5175l;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, int i10) {
        a aVar = (a) b0Var;
        int i11 = this.f5202d.d0.f5171h.f5253j + i10;
        String string = aVar.f5203u.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        aVar.f5203u.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i11)));
        aVar.f5203u.setContentDescription(String.format(string, Integer.valueOf(i11)));
        c cVar = this.f5202d.f5214g0;
        Calendar calendarD = b0.d();
        b bVar = calendarD.get(1) == i11 ? cVar.f5198f : cVar.f5196d;
        Iterator<Long> it = this.f5202d.f5211c0.t().iterator();
        while (it.hasNext()) {
            calendarD.setTimeInMillis(it.next().longValue());
            if (calendarD.get(1) == i11) {
                bVar = cVar.f5197e;
            }
        }
        bVar.b(aVar.f5203u);
        aVar.f5203u.setOnClickListener(new c0(this, i11));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        return new a((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }

    public final int m(int i10) {
        return i10 - this.f5202d.d0.f5171h.f5253j;
    }
}
