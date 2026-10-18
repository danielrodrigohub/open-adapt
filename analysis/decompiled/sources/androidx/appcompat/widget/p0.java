package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.R;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: LinearLayoutCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class p0 extends ViewGroup {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1398h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1399i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1400j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1401k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1402l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1403m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f1404n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1405o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[] f1406p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[] f1407q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Drawable f1408r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1409s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1410t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1411u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1412v;

    /* JADX INFO: compiled from: LinearLayoutCompat.java */
    public static class a extends LinearLayout.LayoutParams {
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public a(int i10, int i11) {
            super(i10, i11);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public p0(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public final void f(Canvas canvas, int i10) {
        this.f1408r.setBounds(getPaddingLeft() + this.f1412v, i10, (getWidth() - getPaddingRight()) - this.f1412v, this.f1410t + i10);
        this.f1408r.draw(canvas);
    }

    public final void g(Canvas canvas, int i10) {
        this.f1408r.setBounds(i10, getPaddingTop() + this.f1412v, this.f1409s + i10, (getHeight() - getPaddingBottom()) - this.f1412v);
        this.f1408r.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i10;
        if (this.f1399i < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i11 = this.f1399i;
        if (childCount <= i11) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i11);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f1399i == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f1400j;
        if (this.f1401k == 1 && (i10 = this.f1402l & 112) != 48) {
            if (i10 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1403m) / 2;
            } else if (i10 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f1403m;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f1399i;
    }

    public Drawable getDividerDrawable() {
        return this.f1408r;
    }

    public int getDividerPadding() {
        return this.f1412v;
    }

    public int getDividerWidth() {
        return this.f1409s;
    }

    public int getGravity() {
        return this.f1402l;
    }

    public int getOrientation() {
        return this.f1401k;
    }

    public int getShowDividers() {
        return this.f1411u;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1404n;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        int i10 = this.f1401k;
        if (i10 == 0) {
            return new a(-2, -2);
        }
        if (i10 == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    public final boolean k(int i10) {
        if (i10 == 0) {
            return (this.f1411u & 1) != 0;
        }
        if (i10 == getChildCount()) {
            return (this.f1411u & 4) != 0;
        }
        if ((this.f1411u & 2) == 0) {
            return false;
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (getChildAt(i11).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i10;
        int bottom;
        if (this.f1408r == null) {
            return;
        }
        int i11 = 0;
        if (this.f1401k == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i11 < virtualChildCount) {
                View childAt = getChildAt(i11);
                if (childAt != null && childAt.getVisibility() != 8 && k(i11)) {
                    f(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin) - this.f1410t);
                }
                i11++;
            }
            if (k(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                if (childAt2 == null) {
                    bottom = (getHeight() - getPaddingBottom()) - this.f1410t;
                } else {
                    bottom = childAt2.getBottom() + ((LinearLayout.LayoutParams) ((a) childAt2.getLayoutParams())).bottomMargin;
                }
                f(canvas, bottom);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean zB = o1.b(this);
        while (i11 < virtualChildCount2) {
            View childAt3 = getChildAt(i11);
            if (childAt3 != null && childAt3.getVisibility() != 8 && k(i11)) {
                a aVar = (a) childAt3.getLayoutParams();
                g(canvas, zB ? childAt3.getRight() + ((LinearLayout.LayoutParams) aVar).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) aVar).leftMargin) - this.f1409s);
            }
            i11++;
        }
        if (k(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                a aVar2 = (a) childAt4.getLayoutParams();
                if (zB) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    i10 = this.f1409s;
                    right = left - i10;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                }
            } else if (zB) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i10 = this.f1409s;
                right = left - i10;
            }
            g(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0158  */
    /* JADX WARN: Code duplicated, block: B:61:0x0161  */
    /* JADX WARN: Code duplicated, block: B:63:0x0165  */
    /* JADX WARN: Code duplicated, block: B:65:0x0169  */
    /* JADX WARN: Code duplicated, block: B:66:0x016c  */
    /* JADX WARN: Code duplicated, block: B:68:0x0174  */
    /* JADX WARN: Code duplicated, block: B:69:0x0182  */
    /* JADX WARN: Code duplicated, block: B:71:0x0188  */
    /* JADX WARN: Code duplicated, block: B:72:0x0191  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a3  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int paddingLeft;
        int i14;
        int i15;
        int i16;
        int i17;
        int baseline;
        int i18;
        int i19;
        int measuredHeight;
        int paddingTop;
        int i20;
        int i21;
        int i22;
        int i23 = 8;
        int i24 = 5;
        if (this.f1401k == 1) {
            int paddingLeft2 = getPaddingLeft();
            int i25 = i12 - i10;
            int paddingRight = i25 - getPaddingRight();
            int paddingRight2 = (i25 - paddingLeft2) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i26 = this.f1402l;
            int i27 = i26 & 112;
            int i28 = 8388615 & i26;
            if (i27 != 16) {
                paddingTop = i27 != 80 ? getPaddingTop() : ((getPaddingTop() + i13) - i11) - this.f1403m;
            } else {
                paddingTop = getPaddingTop() + (((i13 - i11) - this.f1403m) / 2);
            }
            int i29 = 0;
            while (i29 < virtualChildCount) {
                View childAt = getChildAt(i29);
                if (childAt == null) {
                    paddingTop += 0;
                } else if (childAt.getVisibility() != i23) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    a aVar = (a) childAt.getLayoutParams();
                    int i30 = ((LinearLayout.LayoutParams) aVar).gravity;
                    if (i30 < 0) {
                        i30 = i28;
                    }
                    WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                    int absoluteGravity = Gravity.getAbsoluteGravity(i30, j0.a0.e.d(this)) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != i24) {
                            i22 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft2;
                        } else {
                            i20 = paddingRight - measuredWidth;
                            i21 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                        }
                        if (k(i29)) {
                            paddingTop += this.f1410t;
                        }
                        int i31 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                        int i32 = i31 + 0;
                        childAt.layout(i22, i32, measuredWidth + i22, measuredHeight2 + i32);
                        i29 += 0;
                        paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) aVar).bottomMargin + 0 + i31;
                    } else {
                        i20 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft2 + ((LinearLayout.LayoutParams) aVar).leftMargin;
                        i21 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                    }
                    i22 = i20 - i21;
                    if (k(i29)) {
                        paddingTop += this.f1410t;
                    }
                    int i33 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                    int i34 = i33 + 0;
                    childAt.layout(i22, i34, measuredWidth + i22, measuredHeight2 + i34);
                    i29 += 0;
                    paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) aVar).bottomMargin + 0 + i33;
                }
                i29++;
                i23 = 8;
                i24 = 5;
            }
            return;
        }
        boolean zB = o1.b(this);
        int paddingTop2 = getPaddingTop();
        int i35 = i13 - i11;
        int paddingBottom = i35 - getPaddingBottom();
        int paddingBottom2 = (i35 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i36 = this.f1402l;
        int i37 = 8388615 & i36;
        int i38 = i36 & 112;
        boolean z11 = this.f1398h;
        int[] iArr = this.f1406p;
        int[] iArr2 = this.f1407q;
        WeakHashMap<View, j0.g0> weakHashMap2 = j0.a0.f9147a;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i37, j0.a0.e.d(this));
        if (absoluteGravity2 != 1) {
            paddingLeft = absoluteGravity2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i12) - i10) - this.f1403m;
        } else {
            paddingLeft = getPaddingLeft() + (((i12 - i10) - this.f1403m) / 2);
        }
        if (zB) {
            i15 = virtualChildCount2 - 1;
            i14 = -1;
        } else {
            i14 = 1;
            i15 = 0;
        }
        int i39 = paddingLeft;
        int i40 = 0;
        while (i40 < virtualChildCount2) {
            int i41 = (i14 * i40) + i15;
            View childAt2 = getChildAt(i41);
            if (childAt2 == null) {
                i39 += 0;
            } else {
                if (childAt2.getVisibility() != 8) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight3 = childAt2.getMeasuredHeight();
                    a aVar2 = (a) childAt2.getLayoutParams();
                    if (z11) {
                        i16 = i15;
                        i17 = virtualChildCount2;
                        baseline = ((LinearLayout.LayoutParams) aVar2).height != -1 ? childAt2.getBaseline() : -1;
                        i18 = ((LinearLayout.LayoutParams) aVar2).gravity;
                        if (i18 < 0) {
                            i18 = i38;
                        }
                        i19 = i18 & 112;
                        if (i19 != 16) {
                            measuredHeight = ((((paddingBottom2 - measuredHeight3) / 2) + paddingTop2) + ((LinearLayout.LayoutParams) aVar2).topMargin) - ((LinearLayout.LayoutParams) aVar2).bottomMargin;
                        } else if (i19 != 48) {
                            measuredHeight = ((LinearLayout.LayoutParams) aVar2).topMargin + paddingTop2;
                            if (baseline != -1) {
                                measuredHeight = (iArr[1] - baseline) + measuredHeight;
                            }
                        } else if (i19 != 80) {
                            measuredHeight = paddingTop2;
                        } else {
                            measuredHeight = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) aVar2).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                            }
                        }
                        if (k(i41)) {
                            i39 += this.f1409s;
                        }
                        int i42 = i39 + ((LinearLayout.LayoutParams) aVar2).leftMargin;
                        int i43 = i42 + 0;
                        childAt2.layout(i43, measuredHeight, measuredWidth2 + i43, measuredHeight3 + measuredHeight);
                        i40 += 0;
                        i39 = measuredWidth2 + ((LinearLayout.LayoutParams) aVar2).rightMargin + 0 + i42;
                    } else {
                        i16 = i15;
                        i17 = virtualChildCount2;
                    }
                    i18 = ((LinearLayout.LayoutParams) aVar2).gravity;
                    if (i18 < 0) {
                        i18 = i38;
                    }
                    i19 = i18 & 112;
                    if (i19 != 16) {
                        measuredHeight = ((((paddingBottom2 - measuredHeight3) / 2) + paddingTop2) + ((LinearLayout.LayoutParams) aVar2).topMargin) - ((LinearLayout.LayoutParams) aVar2).bottomMargin;
                    } else if (i19 != 48) {
                        measuredHeight = ((LinearLayout.LayoutParams) aVar2).topMargin + paddingTop2;
                        if (baseline != -1) {
                            measuredHeight = (iArr[1] - baseline) + measuredHeight;
                        }
                    } else if (i19 != 80) {
                        measuredHeight = paddingTop2;
                    } else {
                        measuredHeight = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) aVar2).bottomMargin;
                        if (baseline != -1) {
                            measuredHeight -= iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                        }
                    }
                    if (k(i41)) {
                        i39 += this.f1409s;
                    }
                    int i44 = i39 + ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    int i45 = i44 + 0;
                    childAt2.layout(i45, measuredHeight, measuredWidth2 + i45, measuredHeight3 + measuredHeight);
                    i40 += 0;
                    i39 = measuredWidth2 + ((LinearLayout.LayoutParams) aVar2).rightMargin + 0 + i44;
                }
                i40++;
                i15 = i16;
                virtualChildCount2 = i17;
                i38 = i38;
            }
            i16 = i15;
            i17 = virtualChildCount2;
            i40++;
            i15 = i16;
            virtualChildCount2 = i17;
            i38 = i38;
        }
    }

    /* JADX WARN: Code duplicated, block: B:152:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:158:0x0309  */
    /* JADX WARN: Code duplicated, block: B:219:0x049e  */
    /* JADX WARN: Code duplicated, block: B:220:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:223:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:224:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:227:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:228:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:230:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:236:0x050e  */
    /* JADX WARN: Code duplicated, block: B:245:0x0551  */
    /* JADX WARN: Code duplicated, block: B:251:0x0561  */
    /* JADX WARN: Code duplicated, block: B:254:0x0569 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:255:0x056b  */
    /* JADX WARN: Code duplicated, block: B:257:0x0574  */
    /* JADX WARN: Code duplicated, block: B:259:0x0578  */
    /* JADX WARN: Code duplicated, block: B:286:0x060b  */
    /* JADX WARN: Code duplicated, block: B:288:0x0611  */
    /* JADX WARN: Code duplicated, block: B:289:0x0617  */
    /* JADX WARN: Code duplicated, block: B:291:0x061f  */
    /* JADX WARN: Code duplicated, block: B:292:0x0622  */
    /* JADX WARN: Code duplicated, block: B:294:0x062a  */
    /* JADX WARN: Code duplicated, block: B:295:0x0638  */
    /* JADX WARN: Code duplicated, block: B:320:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:322:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:325:0x06e7  */
    /* JADX WARN: Code duplicated, block: B:327:0x06ed  */
    /* JADX WARN: Code duplicated, block: B:375:0x07fc  */
    /* JADX WARN: Code duplicated, block: B:377:0x0805  */
    /* JADX WARN: Code duplicated, block: B:381:0x0833  */
    /* JADX WARN: Code duplicated, block: B:389:0x0845  */
    /* JADX WARN: Code duplicated, block: B:392:0x0877  */
    /* JADX WARN: Code duplicated, block: B:395:0x087c  */
    /* JADX WARN: Code duplicated, block: B:398:0x089e  */
    /* JADX WARN: Code duplicated, block: B:400:0x08ad  */
    /* JADX WARN: Code duplicated, block: B:402:0x08b9  */
    /* JADX WARN: Code duplicated, block: B:404:0x08c5  */
    /* JADX WARN: Code duplicated, block: B:405:0x08da  */
    /* JADX WARN: Code duplicated, block: B:443:0x08db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:448:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        char c10;
        int i12;
        float f10;
        int i13;
        int iCombineMeasuredStates;
        int i14;
        int i15;
        int i16;
        char c11;
        int i17;
        View childAt;
        int i18;
        int i19;
        int baseline;
        int i20;
        int iMakeMeasureSpec;
        int i21;
        int i22;
        View childAt2;
        a aVar;
        int i23;
        int i24;
        View childAt3;
        a aVar2;
        int i25;
        int i26;
        float f11;
        int i27;
        int i28;
        int i29;
        int iMax;
        int i30;
        int i31;
        boolean z10;
        boolean z11;
        a aVar3;
        int measuredWidth;
        boolean z12;
        int i32;
        boolean z13;
        int i33;
        int measuredHeight;
        boolean z14;
        int baseline2;
        int i34;
        int i35;
        boolean z15;
        boolean z16;
        int i36;
        int i37;
        a aVar4;
        boolean z17;
        boolean z18;
        int i38;
        boolean z19;
        int iMax2;
        int i39 = -2;
        int i40 = Integer.MIN_VALUE;
        int i41 = 8;
        float f12 = 0.0f;
        int i42 = 1073741824;
        boolean z20 = true;
        int i43 = 0;
        if (this.f1401k == 1) {
            this.f1403m = 0;
            int virtualChildCount = getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int i44 = this.f1399i;
            boolean z21 = this.f1405o;
            int i45 = 0;
            int i46 = 0;
            int iMax3 = 0;
            int iMax4 = 0;
            int iMax5 = 0;
            boolean z22 = false;
            boolean z23 = false;
            int i47 = 0;
            boolean z24 = true;
            float f13 = 0.0f;
            while (i45 < virtualChildCount) {
                View childAt4 = getChildAt(i45);
                if (childAt4 == null) {
                    this.f1403m += i43;
                } else {
                    if (childAt4.getVisibility() == i41) {
                        i45 += 0;
                    } else {
                        if (k(i45)) {
                            this.f1403m += this.f1410t;
                        }
                        a aVar5 = (a) childAt4.getLayoutParams();
                        float f14 = ((LinearLayout.LayoutParams) aVar5).weight;
                        f13 += f14;
                        if (mode2 == i42 && ((LinearLayout.LayoutParams) aVar5).height == 0 && f14 > f12) {
                            int i48 = this.f1403m;
                            this.f1403m = Math.max(i48, ((LinearLayout.LayoutParams) aVar5).topMargin + i48 + ((LinearLayout.LayoutParams) aVar5).bottomMargin);
                            i44 = i44;
                            aVar4 = aVar5;
                            z18 = true;
                            z17 = true;
                        } else {
                            if (((LinearLayout.LayoutParams) aVar5).height != 0 || f14 <= f12) {
                                i37 = i40;
                            } else {
                                ((LinearLayout.LayoutParams) aVar5).height = i39;
                                i37 = 0;
                            }
                            int i49 = f13 == f12 ? this.f1403m : 0;
                            aVar4 = aVar5;
                            z17 = true;
                            measureChildWithMargins(childAt4, i10, 0, i11, i49);
                            if (i37 != i40) {
                                ((LinearLayout.LayoutParams) aVar4).height = i37;
                            }
                            int measuredHeight2 = childAt4.getMeasuredHeight();
                            int i50 = this.f1403m;
                            this.f1403m = Math.max(i50, i50 + measuredHeight2 + ((LinearLayout.LayoutParams) aVar4).topMargin + ((LinearLayout.LayoutParams) aVar4).bottomMargin + 0);
                            if (z21) {
                                iMax3 = Math.max(measuredHeight2, iMax3);
                            }
                            z18 = z22;
                        }
                        if (i44 >= 0 && i44 == i45 + 1) {
                            this.f1400j = this.f1403m;
                        }
                        if (i45 < i44 && ((LinearLayout.LayoutParams) aVar4).weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        i38 = mode;
                        if (i38 == 1073741824 || ((LinearLayout.LayoutParams) aVar4).width != -1) {
                            z19 = false;
                        } else {
                            z19 = z17;
                            z23 = z19;
                        }
                        int i51 = ((LinearLayout.LayoutParams) aVar4).leftMargin + ((LinearLayout.LayoutParams) aVar4).rightMargin;
                        int measuredWidth2 = childAt4.getMeasuredWidth() + i51;
                        iMax2 = Math.max(i46, measuredWidth2);
                        int iCombineMeasuredStates2 = View.combineMeasuredStates(i47, childAt4.getMeasuredState());
                        boolean z25 = (z24 && ((LinearLayout.LayoutParams) aVar4).width == -1) ? z17 : false;
                        if (((LinearLayout.LayoutParams) aVar4).weight > 0.0f) {
                            if (!z19) {
                                i51 = measuredWidth2;
                            }
                            iMax5 = Math.max(iMax5, i51);
                        } else {
                            int i52 = iMax5;
                            if (!z19) {
                                i51 = measuredWidth2;
                            }
                            iMax4 = Math.max(iMax4, i51);
                            iMax5 = i52;
                        }
                        i45 += 0;
                        z22 = z18;
                        z24 = z25;
                        i47 = iCombineMeasuredStates2;
                    }
                    i45++;
                    mode = i38;
                    i46 = iMax2;
                    i44 = i44;
                    z20 = z17;
                    mode2 = mode2;
                    virtualChildCount = virtualChildCount;
                    i43 = 0;
                    i39 = -2;
                    i40 = Integer.MIN_VALUE;
                    i41 = 8;
                    f12 = 0.0f;
                    i42 = 1073741824;
                }
                i44 = i44;
                mode2 = mode2;
                i38 = mode;
                virtualChildCount = virtualChildCount;
                iMax2 = i46;
                z17 = true;
                i45++;
                mode = i38;
                i46 = iMax2;
                i44 = i44;
                z20 = z17;
                mode2 = mode2;
                virtualChildCount = virtualChildCount;
                i43 = 0;
                i39 = -2;
                i40 = Integer.MIN_VALUE;
                i41 = 8;
                f12 = 0.0f;
                i42 = 1073741824;
            }
            int i53 = mode2;
            int i54 = mode;
            int i55 = virtualChildCount;
            boolean z26 = z20;
            int iMax6 = i46;
            int i56 = iMax3;
            int iMax7 = iMax4;
            int i57 = iMax5;
            int iCombineMeasuredStates3 = i47;
            if (this.f1403m > 0 && k(i55)) {
                this.f1403m += this.f1410t;
            }
            int i58 = i53;
            if (z21 && (i58 == Integer.MIN_VALUE || i58 == 0)) {
                int i59 = 0;
                this.f1403m = 0;
                int i60 = 0;
                while (i60 < i55) {
                    View childAt5 = getChildAt(i60);
                    if (childAt5 == null) {
                        this.f1403m += i59;
                    } else if (childAt5.getVisibility() == 8) {
                        i60 += 0;
                    } else {
                        a aVar6 = (a) childAt5.getLayoutParams();
                        int i61 = this.f1403m;
                        this.f1403m = Math.max(i61, i61 + i56 + ((LinearLayout.LayoutParams) aVar6).topMargin + ((LinearLayout.LayoutParams) aVar6).bottomMargin + 0);
                    }
                    i60++;
                    i59 = 0;
                }
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop() + this.f1403m;
            this.f1403m = paddingBottom;
            int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i11, 0);
            int i62 = (16777215 & iResolveSizeAndState) - this.f1403m;
            if (z22 || (i62 != 0 && f13 > 0.0f)) {
                float f15 = this.f1404n;
                if (f15 > 0.0f) {
                    f13 = f15;
                }
                this.f1403m = 0;
                int i63 = 0;
                while (i63 < i55) {
                    View childAt6 = getChildAt(i63);
                    if (childAt6.getVisibility() != 8) {
                        a aVar7 = (a) childAt6.getLayoutParams();
                        float f16 = ((LinearLayout.LayoutParams) aVar7).weight;
                        if (f16 > 0.0f) {
                            int i64 = (int) ((i62 * f16) / f13);
                            f13 -= f16;
                            int i65 = i62 - i64;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + ((LinearLayout.LayoutParams) aVar7).leftMargin + ((LinearLayout.LayoutParams) aVar7).rightMargin, ((LinearLayout.LayoutParams) aVar7).width);
                            if (((LinearLayout.LayoutParams) aVar7).height == 0) {
                                i36 = 1073741824;
                                if (i58 == 1073741824) {
                                    if (i64 <= 0) {
                                        i64 = 0;
                                    }
                                    childAt6.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i64, 1073741824));
                                }
                                iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, childAt6.getMeasuredState() & (-256));
                                i62 = i65;
                            } else {
                                i36 = 1073741824;
                            }
                            int measuredHeight3 = childAt6.getMeasuredHeight() + i64;
                            if (measuredHeight3 < 0) {
                                measuredHeight3 = 0;
                            }
                            childAt6.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight3, i36));
                            iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, childAt6.getMeasuredState() & (-256));
                            i62 = i65;
                        }
                        int i66 = ((LinearLayout.LayoutParams) aVar7).leftMargin + ((LinearLayout.LayoutParams) aVar7).rightMargin;
                        int measuredWidth3 = childAt6.getMeasuredWidth() + i66;
                        iMax6 = Math.max(iMax6, measuredWidth3);
                        if (i54 != 1073741824) {
                            i34 = i62;
                            i35 = -1;
                            z15 = ((LinearLayout.LayoutParams) aVar7).width == -1 ? z26 : false;
                            if (!z15) {
                                i66 = measuredWidth3;
                            }
                            iMax7 = Math.max(iMax7, i66);
                            if (z24 || ((LinearLayout.LayoutParams) aVar7).width != i35) {
                                z16 = false;
                            } else {
                                z16 = z26;
                            }
                            int i67 = this.f1403m;
                            this.f1403m = Math.max(i67, childAt6.getMeasuredHeight() + i67 + ((LinearLayout.LayoutParams) aVar7).topMargin + ((LinearLayout.LayoutParams) aVar7).bottomMargin + 0);
                            z24 = z16;
                            i62 = i34;
                        } else {
                            i34 = i62;
                            i35 = -1;
                        }
                        if (!z15) {
                            i66 = measuredWidth3;
                        }
                        iMax7 = Math.max(iMax7, i66);
                        if (z24) {
                            z16 = false;
                        } else {
                            z16 = false;
                        }
                        int i68 = this.f1403m;
                        this.f1403m = Math.max(i68, childAt6.getMeasuredHeight() + i68 + ((LinearLayout.LayoutParams) aVar7).topMargin + ((LinearLayout.LayoutParams) aVar7).bottomMargin + 0);
                        z24 = z16;
                        i62 = i34;
                    }
                    i63++;
                    i58 = i58;
                }
                this.f1403m = getPaddingBottom() + getPaddingTop() + this.f1403m;
            } else {
                iMax7 = Math.max(iMax7, i57);
                if (z21 && i58 != 1073741824) {
                    for (int i69 = 0; i69 < i55; i69++) {
                        View childAt7 = getChildAt(i69);
                        if (childAt7 != null && childAt7.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) childAt7.getLayoutParams())).weight > 0.0f) {
                            childAt7.measure(View.MeasureSpec.makeMeasureSpec(childAt7.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i56, 1073741824));
                        }
                    }
                }
            }
            int i70 = iMax6;
            if (z24 || i54 == 1073741824) {
                iMax7 = i70;
            }
            setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax7, getSuggestedMinimumWidth()), i10, iCombineMeasuredStates3), iResolveSizeAndState);
            if (z23) {
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                for (int i71 = 0; i71 < i55; i71++) {
                    View childAt8 = getChildAt(i71);
                    if (childAt8.getVisibility() != 8) {
                        a aVar8 = (a) childAt8.getLayoutParams();
                        if (((LinearLayout.LayoutParams) aVar8).width == -1) {
                            int i72 = ((LinearLayout.LayoutParams) aVar8).height;
                            ((LinearLayout.LayoutParams) aVar8).height = childAt8.getMeasuredHeight();
                            measureChildWithMargins(childAt8, iMakeMeasureSpec2, 0, i11, 0);
                            ((LinearLayout.LayoutParams) aVar8).height = i72;
                        }
                    }
                }
                return;
            }
            return;
        }
        this.f1403m = 0;
        int virtualChildCount2 = getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i10);
        int mode4 = View.MeasureSpec.getMode(i11);
        if (this.f1406p == null || this.f1407q == null) {
            this.f1406p = new int[4];
            this.f1407q = new int[4];
        }
        int[] iArr = this.f1406p;
        int[] iArr2 = this.f1407q;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z27 = this.f1398h;
        boolean z28 = this.f1405o;
        boolean z29 = mode3 == 1073741824;
        boolean z30 = true;
        int iMax8 = 0;
        float f17 = 0.0f;
        int i73 = 0;
        int i74 = 0;
        int iMax9 = 0;
        int i75 = 0;
        int iMax10 = 0;
        boolean z31 = false;
        boolean z32 = false;
        while (i74 < virtualChildCount2) {
            View childAt9 = getChildAt(i74);
            if (childAt9 == null) {
                this.f1403m += 0;
                i25 = iMax8;
                i26 = i73;
            } else {
                i25 = iMax8;
                i26 = i73;
                if (childAt9.getVisibility() == 8) {
                    i74 += 0;
                } else {
                    if (k(i74)) {
                        this.f1403m += this.f1409s;
                    }
                    a aVar9 = (a) childAt9.getLayoutParams();
                    float f18 = ((LinearLayout.LayoutParams) aVar9).weight;
                    float f19 = f17 + f18;
                    if (mode3 == 1073741824 && ((LinearLayout.LayoutParams) aVar9).width == 0 && f18 > 0.0f) {
                        if (z29) {
                            this.f1403m = ((LinearLayout.LayoutParams) aVar9).leftMargin + ((LinearLayout.LayoutParams) aVar9).rightMargin + this.f1403m;
                        } else {
                            int i76 = this.f1403m;
                            this.f1403m = Math.max(i76, ((LinearLayout.LayoutParams) aVar9).leftMargin + i76 + ((LinearLayout.LayoutParams) aVar9).rightMargin);
                        }
                        if (z27) {
                            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt9.measure(iMakeMeasureSpec3, iMakeMeasureSpec3);
                            aVar3 = aVar9;
                            i29 = i25;
                            iMax = i26;
                            i31 = i74;
                            z10 = z28;
                            z11 = z27;
                        } else {
                            aVar3 = aVar9;
                            i29 = i25;
                            iMax = i26;
                            i31 = i74;
                            i32 = 1073741824;
                            z10 = z28;
                            z11 = z27;
                            z12 = true;
                        }
                        if (mode4 == i32 && ((LinearLayout.LayoutParams) aVar3).height == -1) {
                            z13 = true;
                            z32 = true;
                        } else {
                            z13 = false;
                        }
                        i33 = ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin;
                        measuredHeight = childAt9.getMeasuredHeight() + i33;
                        int iCombineMeasuredStates4 = View.combineMeasuredStates(i75, childAt9.getMeasuredState());
                        if (!z11 && (baseline2 = childAt9.getBaseline()) != -1) {
                            int i77 = ((LinearLayout.LayoutParams) aVar3).gravity;
                            if (i77 < 0) {
                                i77 = this.f1402l;
                            }
                            int i78 = (((i77 & 112) >> 4) & (-2)) >> 1;
                            iArr[i78] = Math.max(iArr[i78], baseline2);
                            iArr2[i78] = Math.max(iArr2[i78], measuredHeight - baseline2);
                        }
                        int iMax11 = Math.max(iMax10, measuredHeight);
                        if (z30 || ((LinearLayout.LayoutParams) aVar3).height != -1) {
                            z14 = false;
                        } else {
                            z14 = true;
                        }
                        if (((LinearLayout.LayoutParams) aVar3).weight > 0.0f) {
                            if (z13) {
                                measuredHeight = i33;
                            }
                            iMax8 = Math.max(i29, measuredHeight);
                        } else {
                            int i79 = i29;
                            if (z13) {
                                measuredHeight = i33;
                            }
                            iMax = Math.max(iMax, measuredHeight);
                            iMax8 = i79;
                        }
                        i74 = i31 + 0;
                        iMax10 = iMax11;
                        i75 = iCombineMeasuredStates4;
                        z31 = z12;
                        z30 = z14;
                        f17 = f19;
                        i73 = iMax;
                    } else {
                        int i80 = i74;
                        if (((LinearLayout.LayoutParams) aVar9).width == 0) {
                            f11 = 0.0f;
                            if (f18 > 0.0f) {
                                ((LinearLayout.LayoutParams) aVar9).width = -2;
                                i27 = 0;
                            }
                            if (f19 == f11) {
                                i28 = this.f1403m;
                            } else {
                                i28 = 0;
                            }
                            i29 = i25;
                            iMax = i26;
                            i30 = i27;
                            i31 = i80;
                            z10 = z28;
                            z11 = z27;
                            measureChildWithMargins(childAt9, i10, i28, i11, 0);
                            if (i30 != Integer.MIN_VALUE) {
                                aVar3 = aVar9;
                                ((LinearLayout.LayoutParams) aVar3).width = i30;
                            } else {
                                aVar3 = aVar9;
                            }
                            measuredWidth = childAt9.getMeasuredWidth();
                            if (z29) {
                                this.f1403m = ((LinearLayout.LayoutParams) aVar3).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) aVar3).rightMargin + 0 + this.f1403m;
                            } else {
                                int i81 = this.f1403m;
                                this.f1403m = Math.max(i81, i81 + measuredWidth + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + 0);
                            }
                            if (z10) {
                                iMax9 = Math.max(measuredWidth, iMax9);
                            }
                        } else {
                            f11 = 0.0f;
                        }
                        i27 = Integer.MIN_VALUE;
                        if (f19 == f11) {
                            i28 = this.f1403m;
                        } else {
                            i28 = 0;
                        }
                        i29 = i25;
                        iMax = i26;
                        i30 = i27;
                        i31 = i80;
                        z10 = z28;
                        z11 = z27;
                        measureChildWithMargins(childAt9, i10, i28, i11, 0);
                        if (i30 != Integer.MIN_VALUE) {
                            aVar3 = aVar9;
                            ((LinearLayout.LayoutParams) aVar3).width = i30;
                        } else {
                            aVar3 = aVar9;
                        }
                        measuredWidth = childAt9.getMeasuredWidth();
                        if (z29) {
                            this.f1403m = ((LinearLayout.LayoutParams) aVar3).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) aVar3).rightMargin + 0 + this.f1403m;
                        } else {
                            int i82 = this.f1403m;
                            this.f1403m = Math.max(i82, i82 + measuredWidth + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + 0);
                        }
                        if (z10) {
                            iMax9 = Math.max(measuredWidth, iMax9);
                        }
                    }
                    z12 = z31;
                    i32 = 1073741824;
                    if (mode4 == i32) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    i33 = ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin;
                    measuredHeight = childAt9.getMeasuredHeight() + i33;
                    int iCombineMeasuredStates5 = View.combineMeasuredStates(i75, childAt9.getMeasuredState());
                    if (!z11) {
                    }
                    int iMax12 = Math.max(iMax10, measuredHeight);
                    if (z30) {
                        z14 = false;
                    } else {
                        z14 = false;
                    }
                    if (((LinearLayout.LayoutParams) aVar3).weight > 0.0f) {
                        if (z13) {
                            measuredHeight = i33;
                        }
                        iMax8 = Math.max(i29, measuredHeight);
                    } else {
                        int i710 = i29;
                        if (z13) {
                            measuredHeight = i33;
                        }
                        iMax = Math.max(iMax, measuredHeight);
                        iMax8 = i710;
                    }
                    i74 = i31 + 0;
                    iMax10 = iMax12;
                    i75 = iCombineMeasuredStates5;
                    z31 = z12;
                    z30 = z14;
                    f17 = f19;
                    i73 = iMax;
                }
                i74++;
                z28 = z10;
                z27 = z11;
            }
            z11 = z27;
            iMax8 = i25;
            i73 = i26;
            z10 = z28;
            i74++;
            z28 = z10;
            z27 = z11;
        }
        boolean z33 = z28;
        boolean z34 = z27;
        int i83 = i73;
        int i84 = iMax8;
        int iMax13 = i83;
        if (this.f1403m > 0 && k(virtualChildCount2)) {
            this.f1403m += this.f1409s;
        }
        if (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1) {
            c10 = 3;
            if (iArr[3] != -1) {
            }
            if (z33 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
                i23 = 0;
                this.f1403m = 0;
                i24 = 0;
                while (i24 < virtualChildCount2) {
                    childAt3 = getChildAt(i24);
                    if (childAt3 == null) {
                        this.f1403m += i23;
                    } else if (childAt3.getVisibility() == 8) {
                        i24 += 0;
                    } else {
                        aVar2 = (a) childAt3.getLayoutParams();
                        if (z29) {
                            this.f1403m = ((LinearLayout.LayoutParams) aVar2).leftMargin + iMax9 + ((LinearLayout.LayoutParams) aVar2).rightMargin + 0 + this.f1403m;
                        } else {
                            int i85 = this.f1403m;
                            this.f1403m = Math.max(i85, i85 + iMax9 + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin + 0);
                        }
                    }
                    i24++;
                    i23 = 0;
                }
            }
            int paddingRight = getPaddingRight() + getPaddingLeft() + this.f1403m;
            this.f1403m = paddingRight;
            int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i10, 0);
            i12 = (16777215 & iResolveSizeAndState2) - this.f1403m;
            if (!z31 || (i12 != 0 && f17 > 0.0f)) {
                f10 = this.f1404n;
                if (f10 > 0.0f) {
                    f17 = f10;
                }
                iArr[3] = -1;
                iArr[2] = -1;
                iArr[1] = -1;
                iArr[0] = -1;
                iArr2[3] = -1;
                iArr2[2] = -1;
                iArr2[1] = -1;
                iArr2[0] = -1;
                this.f1403m = 0;
                i13 = i12;
                iCombineMeasuredStates = i75;
                int iMax14 = -1;
                i14 = 0;
                while (i14 < virtualChildCount2) {
                    childAt = getChildAt(i14);
                    if (childAt != null || childAt.getVisibility() == 8) {
                        virtualChildCount2 = virtualChildCount2;
                        i18 = i13;
                    } else {
                        a aVar10 = (a) childAt.getLayoutParams();
                        float f20 = ((LinearLayout.LayoutParams) aVar10).weight;
                        if (f20 > 0.0f) {
                            int i86 = (int) ((i13 * f20) / f17);
                            float f21 = f17 - f20;
                            int i87 = i13 - i86;
                            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i11, getPaddingBottom() + getPaddingTop() + ((LinearLayout.LayoutParams) aVar10).topMargin + ((LinearLayout.LayoutParams) aVar10).bottomMargin, ((LinearLayout.LayoutParams) aVar10).height);
                            if (((LinearLayout.LayoutParams) aVar10).width == 0) {
                                i20 = 1073741824;
                                if (mode3 == 1073741824) {
                                    if (i86 <= 0) {
                                        i86 = 0;
                                    }
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i86, 1073741824), childMeasureSpec2);
                                }
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState() & (-16777216));
                                f17 = f21;
                                i18 = i87;
                            } else {
                                i20 = 1073741824;
                            }
                            int measuredWidth4 = childAt.getMeasuredWidth() + i86;
                            if (measuredWidth4 < 0) {
                                measuredWidth4 = 0;
                            }
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4, i20), childMeasureSpec2);
                            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState() & (-16777216));
                            f17 = f21;
                            i18 = i87;
                        } else {
                            i18 = i13;
                        }
                        if (z29) {
                            this.f1403m = childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) aVar10).leftMargin + ((LinearLayout.LayoutParams) aVar10).rightMargin + 0 + this.f1403m;
                        } else {
                            int i88 = this.f1403m;
                            this.f1403m = Math.max(i88, childAt.getMeasuredWidth() + i88 + ((LinearLayout.LayoutParams) aVar10).leftMargin + ((LinearLayout.LayoutParams) aVar10).rightMargin + 0);
                        }
                        boolean z35 = mode4 != 1073741824 && ((LinearLayout.LayoutParams) aVar10).height == -1;
                        int i89 = ((LinearLayout.LayoutParams) aVar10).topMargin + ((LinearLayout.LayoutParams) aVar10).bottomMargin;
                        int measuredHeight4 = childAt.getMeasuredHeight() + i89;
                        iMax14 = Math.max(iMax14, measuredHeight4);
                        if (!z35) {
                            i89 = measuredHeight4;
                        }
                        iMax13 = Math.max(iMax13, i89);
                        if (z30) {
                            i19 = -1;
                            boolean z36 = ((LinearLayout.LayoutParams) aVar10).height == -1;
                            if (!z34 && (baseline = childAt.getBaseline()) != i19) {
                                int i90 = ((LinearLayout.LayoutParams) aVar10).gravity;
                                if (i90 < 0) {
                                    i90 = this.f1402l;
                                }
                                int i91 = (((i90 & 112) >> 4) & (-2)) >> 1;
                                iArr[i91] = Math.max(iArr[i91], baseline);
                                iArr2[i91] = Math.max(iArr2[i91], measuredHeight4 - baseline);
                            }
                            z30 = z36;
                            f17 = f17;
                        } else {
                            i19 = -1;
                        }
                        if (!z34) {
                        }
                        z30 = z36;
                        f17 = f17;
                    }
                    i14++;
                    virtualChildCount2 = virtualChildCount2;
                    i13 = i18;
                }
                i15 = i11;
                i16 = virtualChildCount2;
                this.f1403m = getPaddingRight() + getPaddingLeft() + this.f1403m;
                if (iArr[1] != -1 && iArr[0] == -1 && iArr[2] == -1) {
                    c11 = 3;
                    if (iArr[3] == -1) {
                        iMax10 = iMax14;
                    }
                    if (z30 || mode4 == 1073741824) {
                        iMax13 = iMax10;
                    }
                    setMeasuredDimension(((-16777216) & iCombineMeasuredStates) | iResolveSizeAndState2, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax13, getSuggestedMinimumHeight()), i15, iCombineMeasuredStates << 16));
                    if (z32) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                        i22 = i16;
                        for (i21 = i17; i21 < i22; i21++) {
                            childAt2 = getChildAt(i21);
                            if (childAt2.getVisibility() != 8) {
                                aVar = (a) childAt2.getLayoutParams();
                                if (((LinearLayout.LayoutParams) aVar).height == -1) {
                                    int i92 = ((LinearLayout.LayoutParams) aVar).width;
                                    ((LinearLayout.LayoutParams) aVar).width = childAt2.getMeasuredWidth();
                                    measureChildWithMargins(childAt2, i10, 0, iMakeMeasureSpec, 0);
                                    ((LinearLayout.LayoutParams) aVar).width = i92;
                                }
                            }
                        }
                    }
                }
                c11 = 3;
                i17 = 0;
                iMax10 = Math.max(iMax14, Math.max(iArr2[c11], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c11], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
                if (z30) {
                    iMax13 = iMax10;
                } else {
                    iMax13 = iMax10;
                }
                setMeasuredDimension(((-16777216) & iCombineMeasuredStates) | iResolveSizeAndState2, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax13, getSuggestedMinimumHeight()), i15, iCombineMeasuredStates << 16));
                if (z32) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                    i22 = i16;
                    while (i21 < i22) {
                        childAt2 = getChildAt(i21);
                        if (childAt2.getVisibility() != 8) {
                            aVar = (a) childAt2.getLayoutParams();
                            if (((LinearLayout.LayoutParams) aVar).height == -1) {
                                int i93 = ((LinearLayout.LayoutParams) aVar).width;
                                ((LinearLayout.LayoutParams) aVar).width = childAt2.getMeasuredWidth();
                                measureChildWithMargins(childAt2, i10, 0, iMakeMeasureSpec, 0);
                                ((LinearLayout.LayoutParams) aVar).width = i93;
                            }
                        }
                    }
                }
            }
            iMax13 = Math.max(iMax13, i84);
            if (z33 && mode3 != 1073741824) {
                for (int i94 = 0; i94 < virtualChildCount2; i94++) {
                    View childAt10 = getChildAt(i94);
                    if (childAt10 != null && childAt10.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) childAt10.getLayoutParams())).weight > 0.0f) {
                        childAt10.measure(View.MeasureSpec.makeMeasureSpec(iMax9, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt10.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i15 = i11;
            i16 = virtualChildCount2;
            iCombineMeasuredStates = i75;
            i17 = 0;
            if (z30) {
                iMax13 = iMax10;
            } else {
                iMax13 = iMax10;
            }
            setMeasuredDimension(((-16777216) & iCombineMeasuredStates) | iResolveSizeAndState2, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax13, getSuggestedMinimumHeight()), i15, iCombineMeasuredStates << 16));
            if (z32) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                i22 = i16;
                while (i21 < i22) {
                    childAt2 = getChildAt(i21);
                    if (childAt2.getVisibility() != 8) {
                        aVar = (a) childAt2.getLayoutParams();
                        if (((LinearLayout.LayoutParams) aVar).height == -1) {
                            int i95 = ((LinearLayout.LayoutParams) aVar).width;
                            ((LinearLayout.LayoutParams) aVar).width = childAt2.getMeasuredWidth();
                            measureChildWithMargins(childAt2, i10, 0, iMakeMeasureSpec, 0);
                            ((LinearLayout.LayoutParams) aVar).width = i95;
                        }
                    }
                }
            }
        }
        c10 = 3;
        iMax10 = Math.max(iMax10, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c10], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        if (z33) {
            i23 = 0;
            this.f1403m = 0;
            i24 = 0;
            while (i24 < virtualChildCount2) {
                childAt3 = getChildAt(i24);
                if (childAt3 == null) {
                    this.f1403m += i23;
                } else if (childAt3.getVisibility() == 8) {
                    i24 += 0;
                } else {
                    aVar2 = (a) childAt3.getLayoutParams();
                    if (z29) {
                        this.f1403m = ((LinearLayout.LayoutParams) aVar2).leftMargin + iMax9 + ((LinearLayout.LayoutParams) aVar2).rightMargin + 0 + this.f1403m;
                    } else {
                        int i810 = this.f1403m;
                        this.f1403m = Math.max(i810, i810 + iMax9 + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin + 0);
                    }
                }
                i24++;
                i23 = 0;
            }
        }
        int paddingRight2 = getPaddingRight() + getPaddingLeft() + this.f1403m;
        this.f1403m = paddingRight2;
        int iResolveSizeAndState3 = View.resolveSizeAndState(Math.max(paddingRight2, getSuggestedMinimumWidth()), i10, 0);
        i12 = (16777215 & iResolveSizeAndState3) - this.f1403m;
        if (z31) {
            f10 = this.f1404n;
            if (f10 > 0.0f) {
                f17 = f10;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f1403m = 0;
            i13 = i12;
            iCombineMeasuredStates = i75;
            int iMax15 = -1;
            i14 = 0;
            while (i14 < virtualChildCount2) {
                childAt = getChildAt(i14);
                if (childAt != null) {
                    virtualChildCount2 = virtualChildCount2;
                    i18 = i13;
                } else {
                    virtualChildCount2 = virtualChildCount2;
                    i18 = i13;
                }
                i14++;
                virtualChildCount2 = virtualChildCount2;
                i13 = i18;
            }
            i15 = i11;
            i16 = virtualChildCount2;
            this.f1403m = getPaddingRight() + getPaddingLeft() + this.f1403m;
            if (iArr[1] != -1) {
                c11 = 3;
            } else {
                c11 = 3;
            }
            i17 = 0;
            iMax10 = Math.max(iMax15, Math.max(iArr2[c11], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c11], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        } else {
            f10 = this.f1404n;
            if (f10 > 0.0f) {
                f17 = f10;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f1403m = 0;
            i13 = i12;
            iCombineMeasuredStates = i75;
            int iMax16 = -1;
            i14 = 0;
            while (i14 < virtualChildCount2) {
                childAt = getChildAt(i14);
                if (childAt != null) {
                    virtualChildCount2 = virtualChildCount2;
                    i18 = i13;
                } else {
                    virtualChildCount2 = virtualChildCount2;
                    i18 = i13;
                }
                i14++;
                virtualChildCount2 = virtualChildCount2;
                i13 = i18;
            }
            i15 = i11;
            i16 = virtualChildCount2;
            this.f1403m = getPaddingRight() + getPaddingLeft() + this.f1403m;
            if (iArr[1] != -1) {
                c11 = 3;
            } else {
                c11 = 3;
            }
            i17 = 0;
            iMax10 = Math.max(iMax16, Math.max(iArr2[c11], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c11], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z30) {
            iMax13 = iMax10;
        } else {
            iMax13 = iMax10;
        }
        setMeasuredDimension(((-16777216) & iCombineMeasuredStates) | iResolveSizeAndState3, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax13, getSuggestedMinimumHeight()), i15, iCombineMeasuredStates << 16));
        if (z32) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
            i22 = i16;
            while (i21 < i22) {
                childAt2 = getChildAt(i21);
                if (childAt2.getVisibility() != 8) {
                    aVar = (a) childAt2.getLayoutParams();
                    if (((LinearLayout.LayoutParams) aVar).height == -1) {
                        int i96 = ((LinearLayout.LayoutParams) aVar).width;
                        ((LinearLayout.LayoutParams) aVar).width = childAt2.getMeasuredWidth();
                        measureChildWithMargins(childAt2, i10, 0, iMakeMeasureSpec, 0);
                        ((LinearLayout.LayoutParams) aVar).width = i96;
                    }
                }
            }
        }
    }

    public void setBaselineAligned(boolean z10) {
        this.f1398h = z10;
    }

    public void setBaselineAlignedChildIndex(int i10) {
        if (i10 >= 0 && i10 < getChildCount()) {
            this.f1399i = i10;
            return;
        }
        StringBuilder sbC = a0.b.c("base aligned child index out of range (0, ");
        sbC.append(getChildCount());
        sbC.append(")");
        throw new IllegalArgumentException(sbC.toString());
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f1408r) {
            return;
        }
        this.f1408r = drawable;
        if (drawable != null) {
            this.f1409s = drawable.getIntrinsicWidth();
            this.f1410t = drawable.getIntrinsicHeight();
        } else {
            this.f1409s = 0;
            this.f1410t = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i10) {
        this.f1412v = i10;
    }

    public void setGravity(int i10) {
        if (this.f1402l != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= 8388611;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.f1402l = i10;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i10) {
        int i11 = i10 & 8388615;
        int i12 = this.f1402l;
        if ((8388615 & i12) != i11) {
            this.f1402l = i11 | ((-8388616) & i12);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z10) {
        this.f1405o = z10;
    }

    public void setOrientation(int i10) {
        if (this.f1401k != i10) {
            this.f1401k = i10;
            requestLayout();
        }
    }

    public void setShowDividers(int i10) {
        if (i10 != this.f1411u) {
            requestLayout();
        }
        this.f1411u = i10;
    }

    public void setVerticalGravity(int i10) {
        int i11 = i10 & 112;
        int i12 = this.f1402l;
        if ((i12 & 112) != i11) {
            this.f1402l = i11 | (i12 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f10) {
        this.f1404n = Math.max(0.0f, f10);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public p0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public p0(Context context, AttributeSet attributeSet, int i10) {
        Drawable drawable;
        int resourceId;
        super(context, attributeSet, i10);
        this.f1398h = true;
        this.f1399i = -1;
        this.f1400j = 0;
        this.f1402l = 8388659;
        int[] iArr = R.styleable.LinearLayoutCompat;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        j0.a0.o(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i10);
        int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i11 >= 0) {
            setOrientation(i11);
        }
        int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i12 >= 0) {
            setGravity(i12);
        }
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z10) {
            setBaselineAligned(z10);
        }
        this.f1404n = typedArrayObtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f1399i = typedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f1405o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        int i13 = R.styleable.LinearLayoutCompat_divider;
        if (typedArrayObtainStyledAttributes.hasValue(i13) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i13, 0)) != 0) {
            drawable = g.a.b(context, resourceId);
        } else {
            drawable = typedArrayObtainStyledAttributes.getDrawable(i13);
        }
        setDividerDrawable(drawable);
        this.f1411u = typedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.f1412v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
