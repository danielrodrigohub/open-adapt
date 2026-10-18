package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: compiled from: DaysOfWeekAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends BaseAdapter {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f5205k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Calendar f5206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f5208j;

    static {
        f5205k = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public f() {
        Calendar calendarE = b0.e(null);
        this.f5206h = calendarE;
        this.f5207i = calendarE.getMaximum(7);
        this.f5208j = calendarE.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f5207i;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i10) {
        int i11 = this.f5207i;
        if (i10 >= i11) {
            return null;
        }
        int i12 = i10 + this.f5208j;
        if (i12 > i11) {
            i12 -= i11;
        }
        return Integer.valueOf(i12);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"WrongConstant"})
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        Calendar calendar = this.f5206h;
        int i11 = i10 + this.f5208j;
        int i12 = this.f5207i;
        if (i11 > i12) {
            i11 -= i12;
        }
        calendar.set(7, i11);
        textView.setText(this.f5206h.getDisplayName(7, f5205k, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), this.f5206h.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
