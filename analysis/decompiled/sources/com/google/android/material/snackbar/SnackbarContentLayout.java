package com.google.android.material.snackbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.R;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout implements n6.f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f5392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Button f5393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5394j;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final boolean a(int i10, int i11, int i12) {
        boolean z10;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f5392h.getPaddingTop() == i11 && this.f5392h.getPaddingBottom() == i12) {
            return z10;
        }
        TextView textView = this.f5392h;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.e.g(textView)) {
            a0.e.k(textView, a0.e.f(textView), i11, a0.e.e(textView), i12);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i11, textView.getPaddingRight(), i12);
        return true;
    }

    public Button getActionView() {
        return this.f5393i;
    }

    public TextView getMessageView() {
        return this.f5392h;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f5392h = (TextView) findViewById(R.id.snackbar_text);
        this.f5393i = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0053  */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        boolean z10 = true;
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z11 = this.f5392h.getLayout().getLineCount() > 1;
        if (!z11 || this.f5394j <= 0 || this.f5393i.getMeasuredWidth() <= this.f5394j) {
            if (!z11) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                z10 = false;
            }
        } else if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            z10 = false;
        }
        if (z10) {
            super.onMeasure(i10, i11);
        }
    }

    public void setMaxInlineActionWidth(int i10) {
        this.f5394j = i10;
    }
}
