package com.nike.adapt.ui.tooltip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import fd.o;
import p4.h;

/* JADX INFO: compiled from: TooltipOverlayView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TooltipOverlayView extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RectF f5913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Paint f5915k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Float f5916l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TooltipOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        h.j(context, "context");
        this.f5912h = true;
        this.f5914j = Color.parseColor("#CC000000");
        Paint paint = new Paint(Color.parseColor("#000101"));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f5915k = paint;
        setVisibility(4);
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    public final boolean getUseBlendingForViewOverlay() {
        return this.f5912h;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        o oVar;
        RectF rectF;
        if (canvas == null) {
            return;
        }
        canvas.drawColor(this.f5914j);
        if (this.f5912h) {
            Float f10 = this.f5916l;
            RectF rectF2 = this.f5913i;
            if (f10 == null || rectF2 == null) {
                oVar = null;
            } else {
                float fFloatValue = f10.floatValue();
                canvas.drawRoundRect(rectF2, fFloatValue, fFloatValue, this.f5915k);
                oVar = o.f7408a;
            }
            if (oVar != null || (rectF = this.f5913i) == null) {
                return;
            }
            canvas.drawRect(rectF, this.f5915k);
        }
    }

    public final void setUseBlendingForViewOverlay(boolean z10) {
        this.f5912h = z10;
    }
}
