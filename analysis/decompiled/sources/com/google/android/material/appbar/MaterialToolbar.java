package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.o;
import com.google.android.material.R;
import g6.n;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import m6.f;

/* JADX INFO: loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final int f4984g0 = R.style.Widget_MaterialComponents_Toolbar;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final ImageView.ScaleType[] f4985h0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Integer f4986b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f4987c0;
    public boolean d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public ImageView.ScaleType f4988e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Boolean f4989f0;

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.toolbarStyle;
        int i11 = f4984g0;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayD = n.d(context2, attributeSet, R.styleable.MaterialToolbar, i10, i11, new int[0]);
        int i12 = R.styleable.MaterialToolbar_navigationIconTint;
        if (typedArrayD.hasValue(i12)) {
            setNavigationIconTint(typedArrayD.getColor(i12, -1));
        }
        this.f4987c0 = typedArrayD.getBoolean(R.styleable.MaterialToolbar_titleCentered, false);
        this.d0 = typedArrayD.getBoolean(R.styleable.MaterialToolbar_subtitleCentered, false);
        int i13 = typedArrayD.getInt(R.styleable.MaterialToolbar_logoScaleType, -1);
        if (i13 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f4985h0;
            if (i13 < scaleTypeArr.length) {
                this.f4988e0 = scaleTypeArr[i13];
            }
        }
        int i14 = R.styleable.MaterialToolbar_logoAdjustViewBounds;
        if (typedArrayD.hasValue(i14)) {
            this.f4989f0 = Boolean.valueOf(typedArrayD.getBoolean(i14, false));
        }
        typedArrayD.recycle();
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            f fVar = new f();
            fVar.o(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            fVar.m(context2);
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            fVar.n(a0.i.i(this));
            a0.d.q(this, fVar);
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.f4988e0;
    }

    public Integer getNavigationIconTint() {
        return this.f4986b0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o.J(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z10, i10, i11, i12, i13);
        ImageView imageView2 = null;
        if (this.f4987c0 || this.d0) {
            List<TextView> listA = g6.o.a(this, getTitle());
            TextView textView = ((ArrayList) listA).isEmpty() ? null : (TextView) Collections.min(listA, g6.o.f7774a);
            List<TextView> listA2 = g6.o.a(this, getSubtitle());
            TextView textView2 = ((ArrayList) listA2).isEmpty() ? null : (TextView) Collections.max(listA2, g6.o.f7774a);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i14 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i15 = 0; i15 < getChildCount(); i15++) {
                    View childAt = getChildAt(i15);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i14 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i14 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair<Integer, Integer> pair = new Pair<>(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.f4987c0 && textView != null) {
                    x(textView, pair);
                }
                if (this.d0 && textView2 != null) {
                    x(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            for (int i16 = 0; i16 < getChildCount(); i16++) {
                View childAt2 = getChildAt(i16);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.f4989f0;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f4988e0;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        o.I(this, f10);
    }

    public void setLogoAdjustViewBounds(boolean z10) {
        Boolean bool = this.f4989f0;
        if (bool == null || bool.booleanValue() != z10) {
            this.f4989f0 = Boolean.valueOf(z10);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.f4988e0 != scaleType) {
            this.f4988e0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.f4986b0 != null) {
            drawable = drawable.mutate();
            b0.a.b.g(drawable, this.f4986b0.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i10) {
        this.f4986b0 = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z10) {
        if (this.d0 != z10) {
            this.d0 = z10;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z10) {
        if (this.f4987c0 != z10) {
            this.f4987c0 = z10;
            requestLayout();
        }
    }

    public final void x(View view, Pair<Integer, Integer> pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i10 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i11 = measuredWidth2 + i10;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i10, 0), Math.max(i11 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i10 += iMax;
            i11 -= iMax;
            view.measure(View.MeasureSpec.makeMeasureSpec(i11 - i10, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i10, view.getTop(), i11, view.getBottom());
    }
}
