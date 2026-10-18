package com.google.android.material.timepicker;

import android.content.res.ColorStateList;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
class ClockFaceView extends c implements ClockHandView.a {
    public final ClockHandView C;
    public final Rect D;
    public final RectF E;
    public final SparseArray<TextView> F;
    public final b G;
    public final int[] H;
    public final float[] I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public String[] N;
    public float O;
    public final ColorStateList P;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to com.google.android.material.timepicker.ClockFaceView for r9v1 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    public ClockFaceView(android.content.Context r10, android.util.AttributeSet r11) {
        /*
            Method dump skipped, instruction units count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockFaceView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.google.android.material.timepicker.ClockHandView.a
    public final void a(float f10) {
        if (Math.abs(this.O - f10) > 0.001f) {
            this.O = f10;
            t();
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) k0.f.b.a(1, this.N.length, 1).f9567a);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        t();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.M / Math.max(Math.max(this.K / displayMetrics.heightPixels, this.L / displayMetrics.widthPixels), 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
        setMeasuredDimension(iMax, iMax);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    public final void t() {
        RectF rectF = this.C.f5591p;
        for (int i10 = 0; i10 < this.F.size(); i10++) {
            TextView textView = this.F.get(i10);
            if (textView != null) {
                textView.getDrawingRect(this.D);
                offsetDescendantRectToMyCoords(textView, this.D);
                textView.setSelected(rectF.contains(this.D.centerX(), this.D.centerY()));
                this.E.set(this.D);
                this.E.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                textView.getPaint().setShader(!RectF.intersects(rectF, this.E) ? null : new RadialGradient(rectF.centerX() - this.E.left, rectF.centerY() - this.E.top, 0.5f * rectF.width(), this.H, this.I, Shader.TileMode.CLAMP));
                textView.invalidate();
            }
        }
    }
}
