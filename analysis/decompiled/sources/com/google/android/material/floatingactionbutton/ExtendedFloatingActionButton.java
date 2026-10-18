package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import g6.f;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p5.g;

/* JADX INFO: loaded from: classes.dex */
public final class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.b {
    public static final /* synthetic */ int B = 0;
    public boolean A;

    public class a extends Property<View, Float> {
        public a() {
            super(Float.class, "width");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        public final void set(View view, Float f10) {
            View view2 = view;
            view2.getLayoutParams().width = f10.intValue();
            view2.requestLayout();
        }
    }

    public class b extends Property<View, Float> {
        public b() {
            super(Float.class, "height");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        public final void set(View view, Float f10) {
            View view2 = view;
            view2.getLayoutParams().height = f10.intValue();
            view2.requestLayout();
        }
    }

    public class c extends Property<View, Float> {
        public c() {
            super(Float.class, "paddingStart");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            return Float.valueOf(a0.e.f(view));
        }

        @Override // android.util.Property
        public final void set(View view, Float f10) {
            View view2 = view;
            int iIntValue = f10.intValue();
            int paddingTop = view2.getPaddingTop();
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.e.k(view2, iIntValue, paddingTop, a0.e.e(view2), view2.getPaddingBottom());
        }
    }

    public class d extends Property<View, Float> {
        public d() {
            super(Float.class, "paddingEnd");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            return Float.valueOf(a0.e.e(view));
        }

        @Override // android.util.Property
        public final void set(View view, Float f10) {
            View view2 = view;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.e.k(view2, a0.e.f(view2), view2.getPaddingTop(), f10.intValue(), view2.getPaddingBottom());
        }
    }

    static {
        new a();
        new b();
        new c();
        new d();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<ExtendedFloatingActionButton> getBehavior() {
        return null;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    public int getCollapsedSize() {
        return 0;
    }

    public g getExtendMotionSpec() {
        throw null;
    }

    public g getHideMotionSpec() {
        throw null;
    }

    public g getShowMotionSpec() {
        throw null;
    }

    public g getShrinkMotionSpec() {
        throw null;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void setAnimateShowBeforeLayout(boolean z10) {
        this.A = z10;
    }

    public void setExtendMotionSpec(g gVar) {
        throw null;
    }

    public void setExtendMotionSpecResource(int i10) {
        setExtendMotionSpec(g.b(getContext(), i10));
    }

    public void setExtended(boolean z10) {
        if (z10) {
            throw null;
        }
    }

    public void setHideMotionSpec(g gVar) {
        throw null;
    }

    public void setHideMotionSpecResource(int i10) {
        setHideMotionSpec(g.b(getContext(), i10));
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10, i11, i12, i13);
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
    }

    public void setShowMotionSpec(g gVar) {
        throw null;
    }

    public void setShowMotionSpecResource(int i10) {
        setShowMotionSpec(g.b(getContext(), i10));
    }

    public void setShrinkMotionSpec(g gVar) {
        throw null;
    }

    public void setShrinkMotionSpecResource(int i10) {
        setShrinkMotionSpec(g.b(getContext(), i10));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i10) {
        super.setTextColor(i10);
        getTextColors();
    }

    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.c<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Rect f5273a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f5274b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f5275c;

        public ExtendedFloatingActionButtonBehavior() {
            this.f5274b = false;
            this.f5275c = true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final /* bridge */ /* synthetic */ boolean a(View view, Rect rect) {
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final void c(CoordinatorLayout.f fVar) {
            if (fVar.f1751h == 0) {
                fVar.f1751h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                t(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).f1744a instanceof BottomSheetBehavior : false) {
                    u(view2, extendedFloatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            ArrayList arrayList = (ArrayList) coordinatorLayout.e(extendedFloatingActionButton);
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view2 = (View) arrayList.get(i11);
                if (view2 instanceof AppBarLayout) {
                    t(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
                } else {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).f1744a instanceof BottomSheetBehavior : false) {
                        u(view2, extendedFloatingActionButton);
                    }
                }
            }
            coordinatorLayout.s(extendedFloatingActionButton, i10);
            return true;
        }

        public final boolean s(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f5274b || this.f5275c) && ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams()).f1749f == view.getId();
        }

        public final boolean t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!s(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f5273a == null) {
                this.f5273a = new Rect();
            }
            Rect rect = this.f5273a;
            f.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                if (this.f5275c) {
                    int i10 = ExtendedFloatingActionButton.B;
                    throw null;
                }
                int i11 = ExtendedFloatingActionButton.B;
                throw null;
            }
            if (this.f5275c) {
                int i12 = ExtendedFloatingActionButton.B;
                throw null;
            }
            int i13 = ExtendedFloatingActionButton.B;
            throw null;
        }

        public final boolean u(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!s(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                if (this.f5275c) {
                    int i10 = ExtendedFloatingActionButton.B;
                    throw null;
                }
                int i11 = ExtendedFloatingActionButton.B;
                throw null;
            }
            if (this.f5275c) {
                int i12 = ExtendedFloatingActionButton.B;
                throw null;
            }
            int i13 = ExtendedFloatingActionButton.B;
            throw null;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f5274b = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f5275c = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        getTextColors();
    }
}
