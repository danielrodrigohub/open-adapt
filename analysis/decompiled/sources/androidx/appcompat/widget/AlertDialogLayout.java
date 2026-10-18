package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.R;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class AlertDialogLayout extends p0 {
    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static int l(View view) {
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        int iD = j0.a0.d.d(view);
        if (iD > 0) {
            return iD;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return l(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x009f  */
    @Override // androidx.appcompat.widget.p0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int paddingLeft = getPaddingLeft();
        int i17 = i12 - i10;
        int paddingRight = i17 - getPaddingRight();
        int paddingRight2 = (i17 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i18 = gravity & 112;
        int i19 = gravity & 8388615;
        int paddingTop = i18 != 16 ? i18 != 80 ? getPaddingTop() : ((getPaddingTop() + i13) - i11) - measuredHeight : (((i13 - i11) - measuredHeight) / 2) + getPaddingTop();
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt = getChildAt(i20);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                p0.a aVar = (p0.a) childAt.getLayoutParams();
                int i21 = ((LinearLayout.LayoutParams) aVar).gravity;
                if (i21 < 0) {
                    i21 = i19;
                }
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                int absoluteGravity = Gravity.getAbsoluteGravity(i21, j0.a0.e.d(this)) & 7;
                if (absoluteGravity != 1) {
                    if (absoluteGravity != 5) {
                        i16 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                    } else {
                        i14 = paddingRight - measuredWidth;
                        i15 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                    }
                    if (k(i20)) {
                        paddingTop += intrinsicHeight;
                    }
                    int i22 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                    childAt.layout(i16, i22, measuredWidth + i16, measuredHeight2 + i22);
                    paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) aVar).bottomMargin + i22;
                } else {
                    i14 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) aVar).leftMargin;
                    i15 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                }
                i16 = i14 - i15;
                if (k(i20)) {
                    paddingTop += intrinsicHeight;
                }
                int i23 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                childAt.layout(i16, i23, measuredWidth + i16, measuredHeight2 + i23);
                paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) aVar).bottomMargin + i23;
            }
        }
    }

    @Override // androidx.appcompat.widget.p0, android.view.View
    public final void onMeasure(int i10, int i11) {
        int iCombineMeasuredStates;
        int iL;
        int measuredHeight;
        int measuredHeight2;
        int childCount = getChildCount();
        View view = null;
        boolean z10 = false;
        View view2 = null;
        View view3 = null;
        int i12 = 0;
        while (true) {
            if (i12 >= childCount) {
                int mode = View.MeasureSpec.getMode(i11);
                int size = View.MeasureSpec.getSize(i11);
                int mode2 = View.MeasureSpec.getMode(i10);
                int paddingBottom = getPaddingBottom() + getPaddingTop();
                if (view != null) {
                    view.measure(i10, 0);
                    paddingBottom += view.getMeasuredHeight();
                    iCombineMeasuredStates = View.combineMeasuredStates(0, view.getMeasuredState());
                } else {
                    iCombineMeasuredStates = 0;
                }
                if (view2 != null) {
                    view2.measure(i10, 0);
                    iL = l(view2);
                    measuredHeight = view2.getMeasuredHeight() - iL;
                    paddingBottom += iL;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
                } else {
                    iL = 0;
                    measuredHeight = 0;
                }
                if (view3 != null) {
                    view3.measure(i10, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode));
                    measuredHeight2 = view3.getMeasuredHeight();
                    paddingBottom += measuredHeight2;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
                } else {
                    measuredHeight2 = 0;
                }
                int i13 = size - paddingBottom;
                if (view2 != null) {
                    int i14 = paddingBottom - iL;
                    int iMin = Math.min(i13, measuredHeight);
                    if (iMin > 0) {
                        i13 -= iMin;
                        iL += iMin;
                    }
                    view2.measure(i10, View.MeasureSpec.makeMeasureSpec(iL, 1073741824));
                    paddingBottom = i14 + view2.getMeasuredHeight();
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
                }
                if (view3 != null && i13 > 0) {
                    view3.measure(i10, View.MeasureSpec.makeMeasureSpec(measuredHeight2 + i13, mode));
                    paddingBottom = (paddingBottom - measuredHeight2) + view3.getMeasuredHeight();
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
                }
                int iMax = 0;
                for (int i15 = 0; i15 < childCount; i15++) {
                    View childAt = getChildAt(i15);
                    if (childAt.getVisibility() != 8) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + iMax, i10, iCombineMeasuredStates), View.resolveSizeAndState(paddingBottom, i11, 0));
                if (mode2 != 1073741824) {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                    for (int i16 = 0; i16 < childCount; i16++) {
                        View childAt2 = getChildAt(i16);
                        if (childAt2.getVisibility() != 8) {
                            p0.a aVar = (p0.a) childAt2.getLayoutParams();
                            if (((LinearLayout.LayoutParams) aVar).width == -1) {
                                int i17 = ((LinearLayout.LayoutParams) aVar).height;
                                ((LinearLayout.LayoutParams) aVar).height = childAt2.getMeasuredHeight();
                                measureChildWithMargins(childAt2, iMakeMeasureSpec, 0, i11, 0);
                                ((LinearLayout.LayoutParams) aVar).height = i17;
                            }
                        }
                    }
                }
                z10 = true;
                break;
            }
            View childAt3 = getChildAt(i12);
            if (childAt3.getVisibility() != 8) {
                int id2 = childAt3.getId();
                if (id2 == R.id.topPanel) {
                    view = childAt3;
                } else if (id2 == R.id.buttonPanel) {
                    view2 = childAt3;
                } else if ((id2 != R.id.contentPanel && id2 != R.id.customPanel) || view3 != null) {
                    break;
                } else {
                    view3 = childAt3;
                }
            }
            i12++;
        }
        if (z10) {
            return;
        }
        super.onMeasure(i10, i11);
    }
}
