package com.google.android.material.timepicker;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.material.R;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class ClockHandView extends View {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ValueAnimator f5583h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f5584i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f5585j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5586k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<a> f5587l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f5588m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f5589n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Paint f5590o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final RectF f5591p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f5592q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f5593r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5594s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public double f5595t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f5596u;

    public interface a {
        void a(float f10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ClockHandView(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.materialClockStyle;
        super(context, attributeSet, i10);
        this.f5587l = new ArrayList();
        Paint paint = new Paint();
        this.f5590o = paint;
        this.f5591p = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i10, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.f5596u = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.f5588m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.f5592q = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f5589n = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        b(0.0f);
        this.f5586k = ViewConfiguration.get(context).getScaledTouchSlop();
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.s(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final int a(float f10, float f11) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    public final void b(float f10) {
        ValueAnimator valueAnimator = this.f5583h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        c(f10, false);
    }

    /* JADX WARN: Type inference failed for: r7v8, types: [java.util.ArrayList, java.util.List<com.google.android.material.timepicker.ClockHandView$a>] */
    public final void c(float f10, boolean z10) {
        float f11 = f10 % 360.0f;
        this.f5593r = f11;
        this.f5595t = Math.toRadians(f11 - 90.0f);
        int height = getHeight() / 2;
        float fCos = (this.f5596u * ((float) Math.cos(this.f5595t))) + (getWidth() / 2);
        float fSin = (this.f5596u * ((float) Math.sin(this.f5595t))) + height;
        RectF rectF = this.f5591p;
        float f12 = this.f5588m;
        rectF.set(fCos - f12, fSin - f12, fCos + f12, fSin + f12);
        Iterator it = this.f5587l.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(f11);
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f10 = width;
        float fCos = (this.f5596u * ((float) Math.cos(this.f5595t))) + f10;
        float f11 = height;
        float fSin = (this.f5596u * ((float) Math.sin(this.f5595t))) + f11;
        this.f5590o.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f5588m, this.f5590o);
        double dSin = Math.sin(this.f5595t);
        double dCos = Math.cos(this.f5595t);
        double d10 = this.f5596u - this.f5588m;
        this.f5590o.setStrokeWidth(this.f5592q);
        canvas.drawLine(f10, f11, width + ((int) (dCos * d10)), height + ((int) (d10 * dSin)), this.f5590o);
        canvas.drawCircle(f10, f11, this.f5589n, this.f5590o);
    }

    @Override // android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        b(this.f5593r);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y7 = motionEvent.getY();
        boolean z12 = false;
        if (actionMasked == 0) {
            this.f5584i = x10;
            this.f5585j = y7;
            this.f5594s = false;
            z10 = false;
            z11 = true;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z10 = this.f5594s;
            z11 = false;
        } else {
            z10 = false;
            z11 = false;
        }
        boolean z13 = this.f5594s;
        float fA = a(x10, y7);
        boolean z14 = this.f5593r != fA;
        if (z11 && z14) {
            z12 = true;
        } else if (z14 || z10) {
            b(fA);
            z12 = true;
        }
        this.f5594s = z13 | z12;
        return true;
    }
}
