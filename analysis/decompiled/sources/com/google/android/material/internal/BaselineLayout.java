package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class BaselineLayout extends ViewGroup {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5350h;

    public BaselineLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f5350h = -1;
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f5350h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = ((i12 - i10) - getPaddingRight()) - paddingLeft;
        int paddingTop = getPaddingTop();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i15 = ((paddingRight - measuredWidth) / 2) + paddingLeft;
                int baseline = (this.f5350h == -1 || childAt.getBaseline() == -1) ? paddingTop : (this.f5350h + paddingTop) - childAt.getBaseline();
                childAt.layout(i15, baseline, measuredWidth + i15, measuredHeight + baseline);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int childCount = getChildCount();
        int iMax = -1;
        int iMax2 = -1;
        int iMax3 = 0;
        int iMax4 = 0;
        int iCombineMeasuredStates = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i10, i11);
                int baseline = childAt.getBaseline();
                if (baseline != -1) {
                    iMax = Math.max(iMax, baseline);
                    iMax2 = Math.max(iMax2, childAt.getMeasuredHeight() - baseline);
                }
                iMax4 = Math.max(iMax4, childAt.getMeasuredWidth());
                iMax3 = Math.max(iMax3, childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        if (iMax != -1) {
            iMax3 = Math.max(iMax3, Math.max(iMax2, getPaddingBottom()) + iMax);
            this.f5350h = iMax;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax4, getSuggestedMinimumWidth()), i10, iCombineMeasuredStates), View.resolveSizeAndState(Math.max(iMax3, getSuggestedMinimumHeight()), i11, iCombineMeasuredStates << 16));
    }
}
