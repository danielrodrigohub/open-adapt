package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.j1;
import androidx.appcompat.widget.p0;
import g6.h;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;
import k0.f;
import n0.k;
import z.d;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuItemView extends h implements j.a {
    public static final int[] M = {R.attr.state_checked};
    public int C;
    public boolean D;
    public boolean E;
    public final CheckedTextView F;
    public FrameLayout G;
    public g H;
    public ColorStateList I;
    public boolean J;
    public Drawable K;
    public final a L;

    public class a extends j0.a {
        public a() {
        }

        @Override // j0.a
        public final void d(View view, f fVar) {
            this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
            fVar.m(NavigationMenuItemView.this.E);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.G == null) {
                this.G = (FrameLayout) ((ViewStub) findViewById(com.google.android.material.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.G.removeAllViews();
            this.G.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.j.a
    public final void d(g gVar) {
        StateListDrawable stateListDrawable;
        this.H = gVar;
        int i10 = gVar.f905a;
        if (i10 > 0) {
            setId(i10);
        }
        setVisibility(gVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(M, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.q(this, stateListDrawable);
        }
        setCheckable(gVar.isCheckable());
        setChecked(gVar.isChecked());
        setEnabled(gVar.isEnabled());
        setTitle(gVar.f909e);
        setIcon(gVar.getIcon());
        setActionView(gVar.getActionView());
        setContentDescription(gVar.f921q);
        j1.a(this, gVar.f922r);
        g gVar2 = this.H;
        if (gVar2.f909e == null && gVar2.getIcon() == null && this.H.getActionView() != null) {
            this.F.setVisibility(8);
            FrameLayout frameLayout = this.G;
            if (frameLayout != null) {
                p0.a aVar = (p0.a) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) aVar).width = -1;
                this.G.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.F.setVisibility(0);
        FrameLayout frameLayout2 = this.G;
        if (frameLayout2 != null) {
            p0.a aVar2 = (p0.a) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) aVar2).width = -2;
            this.G.setLayoutParams(aVar2);
        }
    }

    @Override // androidx.appcompat.view.menu.j.a
    public g getItemData() {
        return this.H;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        g gVar = this.H;
        if (gVar != null && gVar.isCheckable() && this.H.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, M);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z10) {
        refreshDrawableState();
        if (this.E != z10) {
            this.E = z10;
            this.L.h(this.F, 2048);
        }
    }

    public void setChecked(boolean z10) {
        refreshDrawableState();
        this.F.setChecked(z10);
    }

    public void setHorizontalPadding(int i10) {
        setPadding(i10, getPaddingTop(), i10, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.J) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = drawable.mutate();
                b0.a.b.h(drawable, this.I);
            }
            int i10 = this.C;
            drawable.setBounds(0, 0, i10, i10);
        } else if (this.D) {
            if (this.K == null) {
                Resources resources = getResources();
                int i11 = com.google.android.material.R.drawable.navigation_empty_icon;
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal<TypedValue> threadLocal = d.f19223a;
                Drawable drawableA = d.a.a(resources, i11, theme);
                this.K = drawableA;
                if (drawableA != null) {
                    int i12 = this.C;
                    drawableA.setBounds(0, 0, i12, i12);
                }
            }
            drawable = this.K;
        }
        k.b.e(this.F, drawable, null, null, null);
    }

    public void setIconPadding(int i10) {
        this.F.setCompoundDrawablePadding(i10);
    }

    public void setIconSize(int i10) {
        this.C = i10;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.I = colorStateList;
        this.J = colorStateList != null;
        g gVar = this.H;
        if (gVar != null) {
            setIcon(gVar.getIcon());
        }
    }

    public void setMaxLines(int i10) {
        this.F.setMaxLines(i10);
    }

    public void setNeedsEmptyIcon(boolean z10) {
        this.D = z10;
    }

    public void setTextAppearance(int i10) {
        this.F.setTextAppearance(i10);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.F.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.F.setText(charSequence);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, 0);
        a aVar = new a();
        this.L = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.google.android.material.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.google.android.material.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.google.android.material.R.id.design_menu_item_text);
        this.F = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        a0.p(checkedTextView, aVar);
    }
}
