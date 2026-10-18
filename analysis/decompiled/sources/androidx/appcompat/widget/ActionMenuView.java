package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends p0 implements androidx.appcompat.view.menu.e.b, androidx.appcompat.view.menu.j {
    public androidx.appcompat.widget.c A;
    public androidx.appcompat.view.menu.i.a B;
    public androidx.appcompat.view.menu.e.a C;
    public boolean D;
    public int E;
    public int F;
    public int G;
    public e H;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f1010w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Context f1011x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1012y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1013z;

    public interface a {
        boolean a();

        boolean b();
    }

    public static class b implements androidx.appcompat.view.menu.i.a {
        @Override // androidx.appcompat.view.menu.i.a
        public final void b(androidx.appcompat.view.menu.e eVar, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public final boolean c(androidx.appcompat.view.menu.e eVar) {
            return false;
        }
    }

    public static class c extends p0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f1015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f1016c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1017d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1018e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f1019f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.f1014a = cVar.f1014a;
        }

        public c() {
            super(-2, -2);
            this.f1014a = false;
        }
    }

    public class d implements androidx.appcompat.view.menu.e.a {
        public d() {
        }

        @Override // androidx.appcompat.view.menu.e.a
        public final boolean a(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
            boolean zOnMenuItemSelected;
            e eVar2 = ActionMenuView.this.H;
            if (eVar2 != null) {
                Toolbar.a aVar = (Toolbar.a) eVar2;
                if (Toolbar.this.N.b(menuItem)) {
                    zOnMenuItemSelected = true;
                } else {
                    Toolbar.f fVar = Toolbar.this.P;
                    zOnMenuItemSelected = fVar != null ? f.r.this.f6898b.onMenuItemSelected(0, menuItem) : false;
                }
                if (zOnMenuItemSelected) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public final void b(androidx.appcompat.view.menu.e eVar) {
            androidx.appcompat.view.menu.e.a aVar = ActionMenuView.this.C;
            if (aVar != null) {
                aVar.b(eVar);
            }
        }
    }

    public interface e {
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.F = (int) (56.0f * f10);
        this.G = (int) (f10 * 4.0f);
        this.f1011x = context;
        this.f1012y = 0;
    }

    public static int o(View view, int i10, int i11, int i12, int i13) {
        c cVar = (c) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i12) - i13, View.MeasureSpec.getMode(i12));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z10 = false;
        boolean z11 = actionMenuItemView != null && actionMenuItemView.c();
        int i14 = 2;
        if (i11 <= 0 || (z11 && i11 < 2)) {
            i14 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i11 * i10, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i15 = measuredWidth / i10;
            if (measuredWidth % i10 != 0) {
                i15++;
            }
            if (!z11 || i15 >= 2) {
                i14 = i15;
            }
        }
        if (!cVar.f1014a && z11) {
            z10 = true;
        }
        cVar.f1017d = z10;
        cVar.f1015b = i14;
        view.measure(View.MeasureSpec.makeMeasureSpec(i10 * i14, 1073741824), iMakeMeasureSpec);
        return i14;
    }

    @Override // androidx.appcompat.view.menu.e.b
    public final boolean a(androidx.appcompat.view.menu.g gVar) {
        return this.f1010w.t(gVar, null, 0);
    }

    @Override // androidx.appcompat.view.menu.j
    public final void b(androidx.appcompat.view.menu.e eVar) {
        this.f1010w = eVar;
    }

    @Override // androidx.appcompat.widget.p0, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public Menu getMenu() {
        if (this.f1010w == null) {
            Context context = getContext();
            androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(context);
            this.f1010w = eVar;
            eVar.y(new d());
            androidx.appcompat.widget.c cVar = new androidx.appcompat.widget.c(context);
            this.A = cVar;
            cVar.f1178s = true;
            cVar.f1179t = true;
            androidx.appcompat.view.menu.i.a bVar = this.B;
            if (bVar == null) {
                bVar = new b();
            }
            cVar.f830l = bVar;
            this.f1010w.c(cVar, this.f1011x);
            androidx.appcompat.widget.c cVar2 = this.A;
            cVar2.f833o = this;
            this.f1010w = cVar2.f828j;
        }
        return this.f1010w;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        androidx.appcompat.widget.c cVar = this.A;
        androidx.appcompat.widget.c.d dVar = cVar.f1175p;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (cVar.f1177r) {
            return cVar.f1176q;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f1012y;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.widget.p0
    /* JADX INFO: renamed from: i */
    public final p0.a generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.p0
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final c generateDefaultLayoutParams() {
        c cVar = new c();
        ((LinearLayout.LayoutParams) cVar).gravity = 16;
        return cVar;
    }

    @Override // androidx.appcompat.widget.p0
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        c cVar = layoutParams instanceof c ? new c((c) layoutParams) : new c(layoutParams);
        if (((LinearLayout.LayoutParams) cVar).gravity <= 0) {
            ((LinearLayout.LayoutParams) cVar).gravity = 16;
        }
        return cVar;
    }

    public final boolean n(int i10) {
        boolean zA = false;
        if (i10 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i10 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i10);
        if (i10 < getChildCount() && (childAt instanceof a)) {
            zA = false | ((a) childAt).a();
        }
        return (i10 <= 0 || !(childAt2 instanceof a)) ? zA : zA | ((a) childAt2).b();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.widget.c cVar = this.A;
        if (cVar != null) {
            cVar.f();
            if (this.A.l()) {
                this.A.g();
                this.A.m();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.c cVar = this.A;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override // androidx.appcompat.widget.p0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int width;
        int paddingLeft;
        if (!this.D) {
            super.onLayout(z10, i10, i11, i12, i13);
            return;
        }
        int childCount = getChildCount();
        int i14 = (i13 - i11) / 2;
        int dividerWidth = getDividerWidth();
        int i15 = i12 - i10;
        int paddingRight = (i15 - getPaddingRight()) - getPaddingLeft();
        boolean zB = o1.b(this);
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f1014a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (n(i18)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zB) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) cVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) cVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i19 = i14 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i19, width, measuredHeight + i19);
                    paddingRight -= measuredWidth;
                    i16 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) cVar).leftMargin) + ((LinearLayout.LayoutParams) cVar).rightMargin;
                    n(i18);
                    i17++;
                }
            }
        }
        if (childCount == 1 && i16 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i20 = (i15 / 2) - (measuredWidth2 / 2);
            int i21 = i14 - (measuredHeight2 / 2);
            childAt2.layout(i20, i21, measuredWidth2 + i20, measuredHeight2 + i21);
            return;
        }
        int i22 = i17 - (i16 ^ 1);
        int iMax = Math.max(0, i22 > 0 ? paddingRight / i22 : 0);
        if (zB) {
            int width2 = getWidth() - getPaddingRight();
            for (int i23 = 0; i23 < childCount; i23++) {
                View childAt3 = getChildAt(i23);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f1014a) {
                    int i24 = width2 - ((LinearLayout.LayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i25 = i14 - (measuredHeight3 / 2);
                    childAt3.layout(i24 - measuredWidth3, i25, i24, measuredHeight3 + i25);
                    width2 = i24 - ((measuredWidth3 + ((LinearLayout.LayoutParams) cVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i26 = 0; i26 < childCount; i26++) {
            View childAt4 = getChildAt(i26);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f1014a) {
                int i27 = paddingLeft2 + ((LinearLayout.LayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i28 = i14 - (measuredHeight4 / 2);
                childAt4.layout(i27, i28, i27 + measuredWidth4, measuredHeight4 + i28);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) cVar3).rightMargin + iMax + i27;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v40 */
    @Override // androidx.appcompat.widget.p0, android.view.View
    public final void onMeasure(int i10, int i11) {
        int i12;
        boolean z10;
        ?? r10;
        androidx.appcompat.view.menu.e eVar;
        boolean z11 = this.D;
        boolean z12 = View.MeasureSpec.getMode(i10) == 1073741824;
        this.D = z12;
        if (z11 != z12) {
            this.E = 0;
        }
        int size = View.MeasureSpec.getSize(i10);
        if (this.D && (eVar = this.f1010w) != null && size != this.E) {
            this.E = size;
            eVar.r(true);
        }
        int childCount = getChildCount();
        if (!this.D || childCount <= 0) {
            for (int i13 = 0; i13 < childCount; i13++) {
                c cVar = (c) getChildAt(i13).getLayoutParams();
                ((LinearLayout.LayoutParams) cVar).rightMargin = 0;
                ((LinearLayout.LayoutParams) cVar).leftMargin = 0;
            }
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i10);
        int size3 = View.MeasureSpec.getSize(i11);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, paddingBottom, -2);
        int i14 = size2 - paddingRight;
        int i15 = this.F;
        int i16 = i14 / i15;
        int i17 = i14 % i15;
        if (i16 == 0) {
            setMeasuredDimension(i14, 0);
            return;
        }
        int i18 = (i17 / i16) + i15;
        int childCount2 = getChildCount();
        int i19 = 0;
        int iMax = 0;
        int iMax2 = 0;
        int i20 = 0;
        int i21 = 0;
        boolean z13 = false;
        long j10 = 0;
        while (i21 < childCount2) {
            View childAt = getChildAt(i21);
            int i22 = size3;
            int i23 = i14;
            if (childAt.getVisibility() != 8) {
                boolean z14 = childAt instanceof ActionMenuItemView;
                int i24 = i19 + 1;
                if (z14) {
                    int i25 = this.G;
                    r10 = 0;
                    childAt.setPadding(i25, 0, i25, 0);
                } else {
                    r10 = 0;
                }
                c cVar2 = (c) childAt.getLayoutParams();
                cVar2.f1019f = r10;
                cVar2.f1016c = r10;
                cVar2.f1015b = r10;
                cVar2.f1017d = r10;
                ((LinearLayout.LayoutParams) cVar2).leftMargin = r10;
                ((LinearLayout.LayoutParams) cVar2).rightMargin = r10;
                cVar2.f1018e = z14 && ((ActionMenuItemView) childAt).c();
                int iO = o(childAt, i18, cVar2.f1014a ? 1 : i16, childMeasureSpec, paddingBottom);
                iMax2 = Math.max(iMax2, iO);
                if (cVar2.f1017d) {
                    i20++;
                }
                if (cVar2.f1014a) {
                    z13 = true;
                }
                i16 -= iO;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iO == 1) {
                    j10 |= (long) (1 << i21);
                }
                i19 = i24;
            }
            i21++;
            size3 = i22;
            i14 = i23;
        }
        int i26 = i14;
        int i27 = size3;
        boolean z15 = z13 && i19 == 2;
        boolean z16 = false;
        while (true) {
            if (i20 <= 0 || i16 <= 0) {
                i12 = iMax;
                z10 = z16;
                break;
            }
            int i28 = Integer.MAX_VALUE;
            int i29 = 0;
            int i30 = 0;
            long j11 = 0;
            while (i29 < childCount2) {
                int i31 = iMax;
                c cVar3 = (c) getChildAt(i29).getLayoutParams();
                boolean z17 = z16;
                if (cVar3.f1017d) {
                    int i32 = cVar3.f1015b;
                    if (i32 < i28) {
                        j11 = 1 << i29;
                        i28 = i32;
                        i30 = 1;
                    } else if (i32 == i28) {
                        i30++;
                        j11 |= 1 << i29;
                    }
                }
                i29++;
                z16 = z17;
                iMax = i31;
            }
            i12 = iMax;
            z10 = z16;
            j10 |= j11;
            if (i30 > i16) {
                break;
            }
            int i33 = i28 + 1;
            int i34 = 0;
            while (i34 < childCount2) {
                View childAt2 = getChildAt(i34);
                c cVar4 = (c) childAt2.getLayoutParams();
                int i35 = i20;
                long j12 = 1 << i34;
                if ((j11 & j12) == 0) {
                    if (cVar4.f1015b == i33) {
                        j10 |= j12;
                    }
                    z15 = z15;
                } else {
                    if (z15 && cVar4.f1018e && i16 == 1) {
                        int i36 = this.G;
                        childAt2.setPadding(i36 + i18, 0, i36, 0);
                    }
                    cVar4.f1015b++;
                    cVar4.f1019f = true;
                    i16--;
                }
                i34++;
                i20 = i35;
                z15 = z15;
            }
            iMax = i12;
            z16 = true;
        }
        boolean z18 = !z13 && i19 == 1;
        if (i16 > 0 && j10 != 0 && (i16 < i19 - 1 || z18 || iMax2 > 1)) {
            float fBitCount = Long.bitCount(j10);
            if (!z18) {
                if ((j10 & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).f1018e) {
                    fBitCount -= 0.5f;
                }
                int i37 = childCount2 - 1;
                if ((j10 & ((long) (1 << i37))) != 0 && !((c) getChildAt(i37).getLayoutParams()).f1018e) {
                    fBitCount -= 0.5f;
                }
            }
            int i38 = fBitCount > 0.0f ? (int) ((i16 * i18) / fBitCount) : 0;
            for (int i39 = 0; i39 < childCount2; i39++) {
                if ((j10 & ((long) (1 << i39))) != 0) {
                    View childAt3 = getChildAt(i39);
                    c cVar5 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar5.f1016c = i38;
                        cVar5.f1019f = true;
                        if (i39 == 0 && !cVar5.f1018e) {
                            ((LinearLayout.LayoutParams) cVar5).leftMargin = (-i38) / 2;
                        }
                        z10 = true;
                    } else if (cVar5.f1014a) {
                        cVar5.f1016c = i38;
                        cVar5.f1019f = true;
                        ((LinearLayout.LayoutParams) cVar5).rightMargin = (-i38) / 2;
                        z10 = true;
                    } else {
                        if (i39 != 0) {
                            ((LinearLayout.LayoutParams) cVar5).leftMargin = i38 / 2;
                        }
                        if (i39 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) cVar5).rightMargin = i38 / 2;
                        }
                    }
                }
            }
        }
        if (z10) {
            for (int i40 = 0; i40 < childCount2; i40++) {
                View childAt4 = getChildAt(i40);
                c cVar6 = (c) childAt4.getLayoutParams();
                if (cVar6.f1019f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar6.f1015b * i18) + cVar6.f1016c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i26, mode != 1073741824 ? i12 : i27);
    }

    public void setExpandedActionViewsExclusive(boolean z10) {
        this.A.f1183x = z10;
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.H = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        androidx.appcompat.widget.c cVar = this.A;
        androidx.appcompat.widget.c.d dVar = cVar.f1175p;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            cVar.f1177r = true;
            cVar.f1176q = drawable;
        }
    }

    public void setOverflowReserved(boolean z10) {
        this.f1013z = z10;
    }

    public void setPopupTheme(int i10) {
        if (this.f1012y != i10) {
            this.f1012y = i10;
            if (i10 == 0) {
                this.f1011x = getContext();
            } else {
                this.f1011x = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setPresenter(androidx.appcompat.widget.c cVar) {
        this.A = cVar;
        cVar.f833o = this;
        this.f1010w = cVar.f828j;
    }

    @Override // androidx.appcompat.widget.p0, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }
}
