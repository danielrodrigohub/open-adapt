package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.R;

/* JADX INFO: compiled from: CalendarStyle.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f5193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f5194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f5195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f5196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f5197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b f5198f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b f5199g;

    public c(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(j6.b.b(context, R.attr.materialCalendarStyle, g.class.getCanonicalName()), R.styleable.MaterialCalendar);
        this.f5193a = b.a(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayStyle, 0));
        this.f5199g = b.a(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.f5194b = b.a(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f5195c = b.a(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateListA = j6.c.a(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendar_rangeFillColor);
        this.f5196d = b.a(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearStyle, 0));
        this.f5197e = b.a(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f5198f = b.a(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearTodayStyle, 0));
        new Paint().setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
