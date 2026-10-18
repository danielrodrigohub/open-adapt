package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: UtcDates.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static AtomicReference<a0> f5192a = new AtomicReference<>();

    public static long a(long j10) {
        Calendar calendarE = e(null);
        calendarE.setTimeInMillis(j10);
        return b(calendarE).getTimeInMillis();
    }

    public static Calendar b(Calendar calendar) {
        Calendar calendarE = e(calendar);
        Calendar calendarE2 = e(null);
        calendarE2.set(calendarE.get(1), calendarE.get(2), calendarE.get(5));
        return calendarE2;
    }

    public static TimeZone c() {
        return TimeZone.getTimeZone("UTC");
    }

    public static Calendar d() {
        a0 a0Var = f5192a.get();
        if (a0Var == null) {
            a0Var = a0.f5183c;
        }
        TimeZone timeZone = a0Var.f5185b;
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l10 = a0Var.f5184a;
        if (l10 != null) {
            calendar.setTimeInMillis(l10.longValue());
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(c());
        return calendar;
    }

    public static Calendar e(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(c());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }
}
