package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.f;
import androidx.lifecycle.o;
import g6.n;
import g6.s;
import j0.a0;
import j0.g0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import m6.i;
import m6.l;
import n0.k;

/* JADX INFO: loaded from: classes.dex */
public class MaterialButton extends f implements Checkable, l {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f5080x = {R.attr.state_checkable};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f5081y = {R.attr.state_checked};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f5082z = com.google.android.material.R.style.Widget_MaterialComponents_Button;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final u5.a f5083k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final LinkedHashSet<a> f5084l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b f5085m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public PorterDuff.Mode f5086n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ColorStateList f5087o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f5088p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5089q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5090r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5091s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f5092t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f5093u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f5094v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f5095w;

    public interface a {
        void a();
    }

    public interface b {
    }

    public static class c extends p0.a {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f5096j;

        public class a implements Parcelable.ClassLoaderCreator<c> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final c createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new c(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new c[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new c(parcel, null);
            }
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            parcel.writeInt(this.f5096j ? 1 : 0);
        }

        public c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                c.class.getClassLoader();
            }
            this.f5096j = parcel.readInt() == 1;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(Context context, AttributeSet attributeSet) {
        int i10 = com.google.android.material.R.attr.materialButtonStyle;
        int i11 = f5082z;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        this.f5084l = new LinkedHashSet<>();
        this.f5093u = false;
        this.f5094v = false;
        Context context2 = getContext();
        TypedArray typedArrayD = n.d(context2, attributeSet, com.google.android.material.R.styleable.MaterialButton, i10, i11, new int[0]);
        this.f5092t = typedArrayD.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_iconPadding, 0);
        this.f5086n = s.c(typedArrayD.getInt(com.google.android.material.R.styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f5087o = j6.c.a(getContext(), typedArrayD, com.google.android.material.R.styleable.MaterialButton_iconTint);
        this.f5088p = j6.c.c(getContext(), typedArrayD, com.google.android.material.R.styleable.MaterialButton_icon);
        this.f5095w = typedArrayD.getInteger(com.google.android.material.R.styleable.MaterialButton_iconGravity, 1);
        this.f5089q = typedArrayD.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_iconSize, 0);
        u5.a aVar = new u5.a(this, i.b(context2, attributeSet, i10, i11).a());
        this.f5083k = aVar;
        aVar.f15862c = typedArrayD.getDimensionPixelOffset(com.google.android.material.R.styleable.MaterialButton_android_insetLeft, 0);
        aVar.f15863d = typedArrayD.getDimensionPixelOffset(com.google.android.material.R.styleable.MaterialButton_android_insetRight, 0);
        aVar.f15864e = typedArrayD.getDimensionPixelOffset(com.google.android.material.R.styleable.MaterialButton_android_insetTop, 0);
        aVar.f15865f = typedArrayD.getDimensionPixelOffset(com.google.android.material.R.styleable.MaterialButton_android_insetBottom, 0);
        int i12 = com.google.android.material.R.styleable.MaterialButton_cornerRadius;
        if (typedArrayD.hasValue(i12)) {
            int dimensionPixelSize = typedArrayD.getDimensionPixelSize(i12, -1);
            aVar.f15866g = dimensionPixelSize;
            aVar.c(aVar.f15861b.f(dimensionPixelSize));
            aVar.f15875p = true;
        }
        aVar.f15867h = typedArrayD.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_strokeWidth, 0);
        aVar.f15868i = s.c(typedArrayD.getInt(com.google.android.material.R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        aVar.f15869j = j6.c.a(getContext(), typedArrayD, com.google.android.material.R.styleable.MaterialButton_backgroundTint);
        aVar.f15870k = j6.c.a(getContext(), typedArrayD, com.google.android.material.R.styleable.MaterialButton_strokeColor);
        aVar.f15871l = j6.c.a(getContext(), typedArrayD, com.google.android.material.R.styleable.MaterialButton_rippleColor);
        aVar.f15876q = typedArrayD.getBoolean(com.google.android.material.R.styleable.MaterialButton_android_checkable, false);
        aVar.f15878s = typedArrayD.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_elevation, 0);
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        int iF = a0.e.f(this);
        int paddingTop = getPaddingTop();
        int iE = a0.e.e(this);
        int paddingBottom = getPaddingBottom();
        if (typedArrayD.hasValue(com.google.android.material.R.styleable.MaterialButton_android_background)) {
            aVar.f15874o = true;
            setSupportBackgroundTintList(aVar.f15869j);
            setSupportBackgroundTintMode(aVar.f15868i);
        } else {
            aVar.e();
        }
        a0.e.k(this, iF + aVar.f15862c, paddingTop + aVar.f15864e, iE + aVar.f15863d, paddingBottom + aVar.f15865f);
        typedArrayD.recycle();
        setCompoundDrawablePadding(this.f5092t);
        g(this.f5088p != null);
    }

    private String getA11yClassName() {
        return (a() ? CompoundButton.class : Button.class).getName();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        return Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
    }

    public final boolean a() {
        u5.a aVar = this.f5083k;
        return aVar != null && aVar.f15876q;
    }

    public final boolean b() {
        int i10 = this.f5095w;
        return i10 == 3 || i10 == 4;
    }

    public final boolean c() {
        int i10 = this.f5095w;
        return i10 == 1 || i10 == 2;
    }

    public final boolean d() {
        int i10 = this.f5095w;
        return i10 == 16 || i10 == 32;
    }

    public final boolean e() {
        u5.a aVar = this.f5083k;
        return (aVar == null || aVar.f15874o) ? false : true;
    }

    public final void f() {
        if (c()) {
            k.b.e(this, this.f5088p, null, null, null);
        } else if (b()) {
            k.b.e(this, null, null, this.f5088p, null);
        } else if (d()) {
            k.b.e(this, null, this.f5088p, null, null);
        }
    }

    public final void g(boolean z10) {
        Drawable drawable = this.f5088p;
        boolean z11 = true;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.f5088p = drawableMutate;
            b0.a.b.h(drawableMutate, this.f5087o);
            PorterDuff.Mode mode = this.f5086n;
            if (mode != null) {
                b0.a.b.i(this.f5088p, mode);
            }
            int intrinsicWidth = this.f5089q;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f5088p.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f5089q;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f5088p.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f5088p;
            int i10 = this.f5090r;
            int i11 = this.f5091s;
            drawable2.setBounds(i10, i11, intrinsicWidth + i10, intrinsicHeight + i11);
            this.f5088p.setVisible(true, z10);
        }
        if (z10) {
            f();
            return;
        }
        Drawable[] drawableArrA = k.b.a(this);
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[1];
        Drawable drawable5 = drawableArrA[2];
        if ((!c() || drawable3 == this.f5088p) && ((!b() || drawable5 == this.f5088p) && (!d() || drawable4 == this.f5088p))) {
            z11 = false;
        }
        if (z11) {
            f();
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (e()) {
            return this.f5083k.f15866g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f5088p;
    }

    public int getIconGravity() {
        return this.f5095w;
    }

    public int getIconPadding() {
        return this.f5092t;
    }

    public int getIconSize() {
        return this.f5089q;
    }

    public ColorStateList getIconTint() {
        return this.f5087o;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f5086n;
    }

    public int getInsetBottom() {
        return this.f5083k.f15865f;
    }

    public int getInsetTop() {
        return this.f5083k.f15864e;
    }

    public ColorStateList getRippleColor() {
        if (e()) {
            return this.f5083k.f15871l;
        }
        return null;
    }

    public i getShapeAppearanceModel() {
        if (e()) {
            return this.f5083k.f15861b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (e()) {
            return this.f5083k.f15870k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (e()) {
            return this.f5083k.f15867h;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.f
    public ColorStateList getSupportBackgroundTintList() {
        return e() ? this.f5083k.f15869j : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.f
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return e() ? this.f5083k.f15868i : super.getSupportBackgroundTintMode();
    }

    public final void h(int i10, int i11) {
        if (this.f5088p == null || getLayout() == null) {
            return;
        }
        if (!c() && !b()) {
            if (d()) {
                this.f5090r = 0;
                if (this.f5095w == 16) {
                    this.f5091s = 0;
                    g(false);
                    return;
                }
                int intrinsicHeight = this.f5089q;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f5088p.getIntrinsicHeight();
                }
                int textHeight = (((((i11 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f5092t) - getPaddingBottom()) / 2;
                if (this.f5091s != textHeight) {
                    this.f5091s = textHeight;
                    g(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f5091s = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i12 = this.f5095w;
        if (i12 == 1 || i12 == 3 || ((i12 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i12 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f5090r = 0;
            g(false);
            return;
        }
        int intrinsicWidth = this.f5089q;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f5088p.getIntrinsicWidth();
        }
        int textWidth = i10 - getTextWidth();
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        int iE = (((textWidth - a0.e.e(this)) - intrinsicWidth) - this.f5092t) - a0.e.f(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            iE /= 2;
        }
        if ((a0.e.d(this) == 1) != (this.f5095w == 4)) {
            iE = -iE;
        }
        if (this.f5090r != iE) {
            this.f5090r = iE;
            g(false);
        }
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f5093u;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            o.K(this, this.f5083k.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (a()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f5080x);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f5081y);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.f, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.f, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.f, android.widget.TextView, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.f12620h);
        setChecked(cVar.f5096j);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f5096j = this.f5093u;
        return cVar;
    }

    @Override // androidx.appcompat.widget.f, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f5088p != null) {
            if (this.f5088p.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (!e()) {
            super.setBackgroundColor(i10);
            return;
        }
        u5.a aVar = this.f5083k;
        if (aVar.b(false) != null) {
            aVar.b(false).setTint(i10);
        }
    }

    @Override // androidx.appcompat.widget.f, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!e()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        u5.a aVar = this.f5083k;
        aVar.f15874o = true;
        aVar.f15860a.setSupportBackgroundTintList(aVar.f15869j);
        aVar.f15860a.setSupportBackgroundTintMode(aVar.f15868i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.f, android.view.View
    public void setBackgroundResource(int i10) {
        setBackgroundDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z10) {
        if (e()) {
            this.f5083k.f15876q = z10;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (a() && isEnabled() && this.f5093u != z10) {
            this.f5093u = z10;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z11 = this.f5093u;
                if (!materialButtonToggleGroup.f5103m) {
                    materialButtonToggleGroup.b(getId(), z11);
                }
            }
            if (this.f5094v) {
                return;
            }
            this.f5094v = true;
            Iterator<a> it = this.f5084l.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f5094v = false;
        }
    }

    public void setCornerRadius(int i10) {
        if (e()) {
            u5.a aVar = this.f5083k;
            if (aVar.f15875p && aVar.f15866g == i10) {
                return;
            }
            aVar.f15866g = i10;
            aVar.f15875p = true;
            aVar.c(aVar.f15861b.f(i10));
        }
    }

    public void setCornerRadiusResource(int i10) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        if (e()) {
            this.f5083k.b(false).n(f10);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f5088p != drawable) {
            this.f5088p = drawable;
            g(true);
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.f5095w != i10) {
            this.f5095w = i10;
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i10) {
        if (this.f5092t != i10) {
            this.f5092t = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(int i10) {
        setIcon(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    public void setIconSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f5089q != i10) {
            this.f5089q = i10;
            g(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f5087o != colorStateList) {
            this.f5087o = colorStateList;
            g(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f5086n != mode) {
            this.f5086n = mode;
            g(false);
        }
    }

    public void setIconTintResource(int i10) {
        setIconTint(g.a.a(getContext(), i10));
    }

    public void setInsetBottom(int i10) {
        u5.a aVar = this.f5083k;
        aVar.d(aVar.f15864e, i10);
    }

    public void setInsetTop(int i10) {
        u5.a aVar = this.f5083k;
        aVar.d(i10, aVar.f15865f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(b bVar) {
        this.f5085m = bVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z10) {
        b bVar = this.f5085m;
        if (bVar != null) {
            MaterialButtonToggleGroup.this.invalidate();
        }
        super.setPressed(z10);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (e()) {
            u5.a aVar = this.f5083k;
            if (aVar.f15871l != colorStateList) {
                aVar.f15871l = colorStateList;
                if (aVar.f15860a.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) aVar.f15860a.getBackground()).setColor(k6.a.b(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i10) {
        if (e()) {
            setRippleColor(g.a.a(getContext(), i10));
        }
    }

    @Override // m6.l
    public void setShapeAppearanceModel(i iVar) {
        if (!e()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f5083k.c(iVar);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z10) {
        if (e()) {
            u5.a aVar = this.f5083k;
            aVar.f15873n = z10;
            aVar.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (e()) {
            u5.a aVar = this.f5083k;
            if (aVar.f15870k != colorStateList) {
                aVar.f15870k = colorStateList;
                aVar.f();
            }
        }
    }

    public void setStrokeColorResource(int i10) {
        if (e()) {
            setStrokeColor(g.a.a(getContext(), i10));
        }
    }

    public void setStrokeWidth(int i10) {
        if (e()) {
            u5.a aVar = this.f5083k;
            if (aVar.f15867h != i10) {
                aVar.f15867h = i10;
                aVar.f();
            }
        }
    }

    public void setStrokeWidthResource(int i10) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // androidx.appcompat.widget.f
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!e()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        u5.a aVar = this.f5083k;
        if (aVar.f15869j != colorStateList) {
            aVar.f15869j = colorStateList;
            if (aVar.b(false) != null) {
                b0.a.b.h(aVar.b(false), aVar.f15869j);
            }
        }
    }

    @Override // androidx.appcompat.widget.f
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!e()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        u5.a aVar = this.f5083k;
        if (aVar.f15868i != mode) {
            aVar.f15868i = mode;
            if (aVar.b(false) == null || aVar.f15868i == null) {
                return;
            }
            b0.a.b.i(aVar.b(false), aVar.f15868i);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i10) {
        super.setTextAlignment(i10);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f5093u);
    }
}
