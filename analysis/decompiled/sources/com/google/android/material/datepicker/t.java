package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: compiled from: Month.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements Comparable<t>, Parcelable {
    public static final Parcelable.Creator<t> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Calendar f5251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f5253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f5254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f5255l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f5256m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f5257n;

    /* JADX INFO: compiled from: Month.java */
    public class a implements Parcelable.Creator<t> {
        @Override // android.os.Parcelable.Creator
        public final t createFromParcel(Parcel parcel) {
            return t.m(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final t[] newArray(int i10) {
            return new t[i10];
        }
    }

    public t(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarB = b0.b(calendar);
        this.f5251h = calendarB;
        this.f5252i = calendarB.get(2);
        this.f5253j = calendarB.get(1);
        this.f5254k = calendarB.getMaximum(7);
        this.f5255l = calendarB.getActualMaximum(5);
        this.f5256m = calendarB.getTimeInMillis();
    }

    public static t m(int i10, int i11) {
        Calendar calendarE = b0.e(null);
        calendarE.set(1, i10);
        calendarE.set(2, i11);
        return new t(calendarE);
    }

    public static t o(long j10) {
        Calendar calendarE = b0.e(null);
        calendarE.setTimeInMillis(j10);
        return new t(calendarE);
    }

    public final int A(t tVar) {
        if (!(this.f5251h instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (tVar.f5252i - this.f5252i) + ((tVar.f5253j - this.f5253j) * 12);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(t tVar) {
        return this.f5251h.compareTo(tVar.f5251h);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f5252i == tVar.f5252i && this.f5253j == tVar.f5253j;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f5252i), Integer.valueOf(this.f5253j)});
    }

    public final int p() {
        int firstDayOfWeek = this.f5251h.get(7) - this.f5251h.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f5254k : firstDayOfWeek;
    }

    public final String w() {
        if (this.f5257n == null) {
            this.f5257n = DateUtils.formatDateTime(null, this.f5251h.getTimeInMillis(), 8228);
        }
        return this.f5257n;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f5253j);
        parcel.writeInt(this.f5252i);
    }

    public final t y(int i10) {
        Calendar calendarB = b0.b(this.f5251h);
        calendarB.add(2, i10);
        return new t(calendarB);
    }
}
