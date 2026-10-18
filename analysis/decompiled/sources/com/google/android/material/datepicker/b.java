package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.R;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: CalendarItemStyle.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f5186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ColorStateList f5187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ColorStateList f5188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ColorStateList f5189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final m6.i f5191f;

    public b(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i10, m6.i iVar, Rect rect) {
        c3.d.f(rect.left);
        c3.d.f(rect.top);
        c3.d.f(rect.right);
        c3.d.f(rect.bottom);
        this.f5186a = rect;
        this.f5187b = colorStateList2;
        this.f5188c = colorStateList;
        this.f5189d = colorStateList3;
        this.f5190e = i10;
        this.f5191f = iVar;
    }

    public static b a(Context context, int i10) {
        if (!(i10 != 0)) {
            throw new IllegalArgumentException("Cannot create a CalendarItemStyle with a styleResId of 0");
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R.styleable.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListA = j6.c.a(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListA2 = j6.c.a(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListA3 = j6.c.a(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        m6.i iVarA = m6.i.a(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0), new m6.a(0)).a();
        typedArrayObtainStyledAttributes.recycle();
        return new b(colorStateListA, colorStateListA2, colorStateListA3, dimensionPixelSize, iVarA, rect);
    }

    public final void b(TextView textView) {
        m6.f fVar = new m6.f();
        m6.f fVar2 = new m6.f();
        fVar.setShapeAppearanceModel(this.f5191f);
        fVar2.setShapeAppearanceModel(this.f5191f);
        fVar.o(this.f5188c);
        fVar.r(this.f5190e, this.f5189d);
        textView.setTextColor(this.f5187b);
        RippleDrawable rippleDrawable = new RippleDrawable(this.f5187b.withAlpha(30), fVar, fVar2);
        Rect rect = this.f5186a;
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
        WeakHashMap<View, g0> weakHashMap = j0.a0.f9147a;
        j0.a0.d.q(textView, insetDrawable);
    }
}
