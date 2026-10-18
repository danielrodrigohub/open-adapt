package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import java.util.Iterator;

/* JADX INFO: compiled from: MonthsPagerAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class w extends RecyclerView.e<a> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.google.android.material.datepicker.a f5266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d<?> f5267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final g.e f5268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f5269g;

    /* JADX INFO: compiled from: MonthsPagerAdapter.java */
    public static class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final TextView f5270u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final MaterialCalendarGridView f5271v;

        public a(LinearLayout linearLayout, boolean z10) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.f5270u = textView;
            j0.a0.q(textView, true);
            this.f5271v = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
            if (z10) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    public w(Context context, d<?> dVar, com.google.android.material.datepicker.a aVar, g.e eVar) {
        t tVar = aVar.f5171h;
        t tVar2 = aVar.f5172i;
        t tVar3 = aVar.f5174k;
        if (tVar.compareTo(tVar3) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (tVar3.compareTo(tVar2) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int i10 = u.f5258m;
        int i11 = g.f5209l0;
        Resources resources = context.getResources();
        int i12 = R.dimen.mtrl_calendar_day_height;
        this.f5269g = (resources.getDimensionPixelSize(i12) * i10) + (o.u0(context) ? context.getResources().getDimensionPixelSize(i12) : 0);
        this.f5266d = aVar;
        this.f5267e = dVar;
        this.f5268f = eVar;
        l(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f5266d.f5176m;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final long b(int i10) {
        return this.f5266d.f5171h.y(i10).f5251h.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, int i10) {
        a aVar = (a) b0Var;
        t tVarY = this.f5266d.f5171h.y(i10);
        aVar.f5270u.setText(tVarY.w());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) aVar.f5271v.findViewById(R.id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !tVarY.equals(materialCalendarGridView.getAdapter().f5259h)) {
            u uVar = new u(tVarY, this.f5267e, this.f5266d);
            materialCalendarGridView.setNumColumns(tVarY.f5254k);
            materialCalendarGridView.setAdapter((ListAdapter) uVar);
        } else {
            materialCalendarGridView.invalidate();
            u uVarA = materialCalendarGridView.getAdapter();
            Iterator<Long> it = uVarA.f5261j.iterator();
            while (it.hasNext()) {
                uVarA.g(materialCalendarGridView, it.next().longValue());
            }
            d<?> dVar = uVarA.f5260i;
            if (dVar != null) {
                Iterator<Long> it2 = dVar.t().iterator();
                while (it2.hasNext()) {
                    uVarA.g(materialCalendarGridView, it2.next().longValue());
                }
                uVarA.f5261j = uVarA.f5260i.t();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new v(this, materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!o.u0(viewGroup.getContext())) {
            return new a(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.n(-1, this.f5269g));
        return new a(linearLayout, true);
    }

    public final t m(int i10) {
        return this.f5266d.f5171h.y(i10);
    }

    public final int n(t tVar) {
        return this.f5266d.f5171h.A(tVar);
    }
}
