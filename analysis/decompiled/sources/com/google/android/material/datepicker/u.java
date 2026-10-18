package com.google.android.material.datepicker;

import android.content.Context;
import android.icu.text.DateFormat;
import android.icu.util.TimeZone;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: MonthAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class u extends BaseAdapter {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f5258m = b0.e(null).getMaximum(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final t f5259h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d<?> f5260i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Collection<Long> f5261j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public c f5262k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final a f5263l;

    public u(t tVar, d<?> dVar, a aVar) {
        this.f5259h = tVar;
        this.f5260i = dVar;
        this.f5263l = aVar;
        this.f5261j = dVar.t();
    }

    public final int b(int i10) {
        return c() + (i10 - 1);
    }

    public final int c() {
        return this.f5259h.p();
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i10) {
        if (i10 < this.f5259h.p() || i10 > e()) {
            return null;
        }
        t tVar = this.f5259h;
        int iP = (i10 - tVar.p()) + 1;
        Calendar calendarB = b0.b(tVar.f5251h);
        calendarB.set(5, iP);
        return Long.valueOf(calendarB.getTimeInMillis());
    }

    public final int e() {
        return (this.f5259h.p() + this.f5259h.f5255l) - 1;
    }

    public final void f(TextView textView, long j10) {
        b bVar;
        if (textView == null) {
            return;
        }
        boolean z10 = false;
        if (this.f5263l.f5173j.n(j10)) {
            textView.setEnabled(true);
            Iterator<Long> it = this.f5260i.t().iterator();
            while (it.hasNext()) {
                if (b0.a(j10) == b0.a(it.next().longValue())) {
                    z10 = true;
                    break;
                }
            }
            if (z10) {
                bVar = this.f5262k.f5194b;
            } else {
                bVar = b0.d().getTimeInMillis() == j10 ? this.f5262k.f5195c : this.f5262k.f5193a;
            }
        } else {
            textView.setEnabled(false);
            bVar = this.f5262k.f5199g;
        }
        bVar.b(textView);
    }

    public final void g(MaterialCalendarGridView materialCalendarGridView, long j10) {
        if (t.o(j10).equals(this.f5259h)) {
            Calendar calendarB = b0.b(this.f5259h.f5251h);
            calendarB.setTimeInMillis(j10);
            f((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().b(calendarB.get(5)) - materialCalendarGridView.getFirstVisiblePosition()), j10);
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return c() + this.f5259h.f5255l;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return i10 / this.f5259h.f5254k;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x00d1  */
    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.f5262k == null) {
            this.f5262k = new c(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int iC = i10 - c();
        if (iC >= 0) {
            t tVar = this.f5259h;
            if (iC >= tVar.f5255l) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                int i11 = iC + 1;
                textView.setTag(tVar);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(i11)));
                Calendar calendarB = b0.b(this.f5259h.f5251h);
                calendarB.set(5, i11);
                long timeInMillis = calendarB.getTimeInMillis();
                int i12 = this.f5259h.f5253j;
                Calendar calendarD = b0.d();
                calendarD.set(5, 1);
                Calendar calendarB2 = b0.b(calendarD);
                calendarB2.get(2);
                int i13 = calendarB2.get(1);
                calendarB2.getMaximum(7);
                calendarB2.getActualMaximum(5);
                calendarB2.getTimeInMillis();
                if (i12 == i13) {
                    Locale locale = Locale.getDefault();
                    AtomicReference<a0> atomicReference = b0.f5192a;
                    DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("MMMEd", locale);
                    instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
                    textView.setContentDescription(instanceForSkeleton.format(new Date(timeInMillis)));
                } else {
                    Locale locale2 = Locale.getDefault();
                    AtomicReference<a0> atomicReference2 = b0.f5192a;
                    DateFormat instanceForSkeleton2 = DateFormat.getInstanceForSkeleton("yMMMEd", locale2);
                    instanceForSkeleton2.setTimeZone(TimeZone.getTimeZone("UTC"));
                    textView.setContentDescription(instanceForSkeleton2.format(new Date(timeInMillis)));
                }
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
        }
        Long item = getItem(i10);
        if (item != null) {
            f(textView, item.longValue());
        }
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
