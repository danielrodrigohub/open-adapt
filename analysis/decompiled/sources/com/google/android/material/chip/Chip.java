package com.google.android.material.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.g;
import androidx.lifecycle.o;
import com.google.android.material.R;
import g6.i;
import g6.n;
import g6.s;
import j0.a0;
import j0.g0;
import j6.c;
import j6.d;
import j6.f;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import m6.l;

/* JADX INFO: loaded from: classes.dex */
public class Chip extends g implements com.google.android.material.chip.a.InterfaceC0087a, l, i<Chip> {
    public static final int E = R.style.Widget_MaterialComponents_Chip_Action;
    public static final Rect F = new Rect();
    public static final int[] G = {android.R.attr.state_selected};
    public static final int[] H = {android.R.attr.state_checkable};
    public boolean A;
    public final Rect B;
    public final RectF C;
    public final a D;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public com.google.android.material.chip.a f5116l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public InsetDrawable f5117m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public RippleDrawable f5118n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View.OnClickListener f5119o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f5120p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public i.a<Chip> f5121q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f5122r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5123s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f5124t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f5125u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f5126v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f5127w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f5128x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f5129y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final b f5130z;

    public class a extends f {
        public a() {
        }

        @Override // j6.f
        public final void a(int i10) {
        }

        @Override // j6.f
        public final void b(Typeface typeface, boolean z10) {
            Chip chip = Chip.this;
            com.google.android.material.chip.a aVar = chip.f5116l;
            chip.setText(aVar.M0 ? aVar.N : chip.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    public class b extends q0.a {
        public b(Chip chip) {
            super(chip);
        }

        @Override // q0.a
        public final void m(List<Integer> list) {
            boolean z10 = false;
            list.add(0);
            Chip chip = Chip.this;
            int i10 = Chip.E;
            if (chip.e()) {
                Chip chip2 = Chip.this;
                com.google.android.material.chip.a aVar = chip2.f5116l;
                if (aVar != null && aVar.T) {
                    z10 = true;
                }
                if (!z10 || chip2.f5119o == null) {
                    return;
                }
                list.add(1);
            }
        }

        @Override // q0.a
        public final boolean p(int i10, int i11) {
            if (i11 != 16) {
                return false;
            }
            if (i10 == 0) {
                return Chip.this.performClick();
            }
            if (i10 == 1) {
                return Chip.this.g();
            }
            return false;
        }

        @Override // q0.a
        public final void q(int i10, k0.f fVar) {
            if (i10 != 1) {
                fVar.r("");
                fVar.l(Chip.F);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                fVar.r(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i11 = R.string.mtrl_chip_close_icon_content_description;
                Object[] objArr = new Object[1];
                objArr[0] = TextUtils.isEmpty(text) ? "" : text;
                fVar.r(context.getString(i11, objArr).trim());
            }
            fVar.l(Chip.this.getCloseIconTouchBoundsInt());
            fVar.b(k0.f.a.f9555e);
            fVar.f9552a.setEnabled(Chip.this.isEnabled());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet) {
        int resourceId;
        int i10 = R.attr.chipStyle;
        int i11 = E;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        this.B = new Rect();
        this.C = new RectF();
        this.D = new a();
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        com.google.android.material.chip.a aVar = new com.google.android.material.chip.a(context2, attributeSet, i10);
        Context context3 = aVar.f5156n0;
        int[] iArr = R.styleable.Chip;
        TypedArray typedArrayD = n.d(context3, attributeSet, iArr, i10, i11, new int[0]);
        int i12 = R.styleable.Chip_shapeAppearance;
        aVar.O0 = typedArrayD.hasValue(i12);
        ColorStateList colorStateListA = c.a(aVar.f5156n0, typedArrayD, R.styleable.Chip_chipSurfaceColor);
        if (aVar.G != colorStateListA) {
            aVar.G = colorStateListA;
            aVar.onStateChange(aVar.getState());
        }
        aVar.O(c.a(aVar.f5156n0, typedArrayD, R.styleable.Chip_chipBackgroundColor));
        aVar.V(typedArrayD.getDimension(R.styleable.Chip_chipMinHeight, 0.0f));
        int i13 = R.styleable.Chip_chipCornerRadius;
        if (typedArrayD.hasValue(i13)) {
            aVar.P(typedArrayD.getDimension(i13, 0.0f));
        }
        aVar.X(c.a(aVar.f5156n0, typedArrayD, R.styleable.Chip_chipStrokeColor));
        aVar.Y(typedArrayD.getDimension(R.styleable.Chip_chipStrokeWidth, 0.0f));
        aVar.i0(c.a(aVar.f5156n0, typedArrayD, R.styleable.Chip_rippleColor));
        aVar.j0(typedArrayD.getText(R.styleable.Chip_android_text));
        Context context4 = aVar.f5156n0;
        int i14 = R.styleable.Chip_android_textAppearance;
        d dVar = (!typedArrayD.hasValue(i14) || (resourceId = typedArrayD.getResourceId(i14, 0)) == 0) ? null : new d(context4, resourceId);
        dVar.f9455k = typedArrayD.getDimension(R.styleable.Chip_android_textSize, dVar.f9455k);
        aVar.k0(dVar);
        int i15 = typedArrayD.getInt(R.styleable.Chip_android_ellipsize, 0);
        if (i15 == 1) {
            aVar.L0 = TextUtils.TruncateAt.START;
        } else if (i15 == 2) {
            aVar.L0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i15 == 3) {
            aVar.L0 = TextUtils.TruncateAt.END;
        }
        aVar.U(typedArrayD.getBoolean(R.styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            aVar.U(typedArrayD.getBoolean(R.styleable.Chip_chipIconEnabled, false));
        }
        aVar.R(c.c(aVar.f5156n0, typedArrayD, R.styleable.Chip_chipIcon));
        int i16 = R.styleable.Chip_chipIconTint;
        if (typedArrayD.hasValue(i16)) {
            aVar.T(c.a(aVar.f5156n0, typedArrayD, i16));
        }
        aVar.S(typedArrayD.getDimension(R.styleable.Chip_chipIconSize, -1.0f));
        aVar.f0(typedArrayD.getBoolean(R.styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            aVar.f0(typedArrayD.getBoolean(R.styleable.Chip_closeIconEnabled, false));
        }
        aVar.Z(c.c(aVar.f5156n0, typedArrayD, R.styleable.Chip_closeIcon));
        aVar.e0(c.a(aVar.f5156n0, typedArrayD, R.styleable.Chip_closeIconTint));
        aVar.b0(typedArrayD.getDimension(R.styleable.Chip_closeIconSize, 0.0f));
        aVar.K(typedArrayD.getBoolean(R.styleable.Chip_android_checkable, false));
        aVar.N(typedArrayD.getBoolean(R.styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            aVar.N(typedArrayD.getBoolean(R.styleable.Chip_checkedIconEnabled, false));
        }
        aVar.L(c.c(aVar.f5156n0, typedArrayD, R.styleable.Chip_checkedIcon));
        int i17 = R.styleable.Chip_checkedIconTint;
        if (typedArrayD.hasValue(i17)) {
            aVar.M(c.a(aVar.f5156n0, typedArrayD, i17));
        }
        aVar.d0 = p5.g.a(aVar.f5156n0, typedArrayD, R.styleable.Chip_showMotionSpec);
        aVar.f5147e0 = p5.g.a(aVar.f5156n0, typedArrayD, R.styleable.Chip_hideMotionSpec);
        aVar.W(typedArrayD.getDimension(R.styleable.Chip_chipStartPadding, 0.0f));
        aVar.h0(typedArrayD.getDimension(R.styleable.Chip_iconStartPadding, 0.0f));
        aVar.g0(typedArrayD.getDimension(R.styleable.Chip_iconEndPadding, 0.0f));
        aVar.m0(typedArrayD.getDimension(R.styleable.Chip_textStartPadding, 0.0f));
        aVar.l0(typedArrayD.getDimension(R.styleable.Chip_textEndPadding, 0.0f));
        aVar.c0(typedArrayD.getDimension(R.styleable.Chip_closeIconStartPadding, 0.0f));
        aVar.a0(typedArrayD.getDimension(R.styleable.Chip_closeIconEndPadding, 0.0f));
        aVar.Q(typedArrayD.getDimension(R.styleable.Chip_chipEndPadding, 0.0f));
        aVar.N0 = typedArrayD.getDimensionPixelSize(R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE);
        typedArrayD.recycle();
        TypedArray typedArrayD2 = n.d(context2, attributeSet, iArr, i10, i11, new int[0]);
        this.f5126v = typedArrayD2.getBoolean(R.styleable.Chip_ensureMinTouchTargetSize, false);
        this.f5128x = (int) Math.ceil(typedArrayD2.getDimension(R.styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(s.a(getContext(), 48))));
        typedArrayD2.recycle();
        setChipDrawable(aVar);
        aVar.n(a0.i.i(this));
        TypedArray typedArrayD3 = n.d(context2, attributeSet, iArr, i10, i11, new int[0]);
        boolean zHasValue = typedArrayD3.hasValue(i12);
        typedArrayD3.recycle();
        this.f5130z = new b(this);
        i();
        if (!zHasValue) {
            setOutlineProvider(new x5.b(this));
        }
        setChecked(this.f5122r);
        setText(aVar.N);
        setEllipsize(aVar.L0);
        m();
        if (!this.f5116l.M0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        l();
        if (this.f5126v) {
            setMinHeight(this.f5128x);
        }
        this.f5127w = a0.e.d(this);
        super.setOnCheckedChangeListener(new x5.a(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.C.setEmpty();
        if (e() && this.f5119o != null) {
            com.google.android.material.chip.a aVar = this.f5116l;
            aVar.B(aVar.getBounds(), this.C);
        }
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.B.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.B;
    }

    private d getTextAppearance() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5162t0.f7770f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z10) {
        if (this.f5124t != z10) {
            this.f5124t = z10;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z10) {
        if (this.f5123s != z10) {
            this.f5123s = z10;
            refreshDrawableState();
        }
    }

    @Override // com.google.android.material.chip.a.InterfaceC0087a
    public final void a() {
        d(this.f5128x);
        requestLayout();
        invalidateOutline();
    }

    public final boolean d(int i10) {
        this.f5128x = i10;
        if (!this.f5126v) {
            if (this.f5117m != null) {
                h();
            } else {
                j();
            }
            return false;
        }
        int iMax = Math.max(0, i10 - ((int) this.f5116l.I));
        int iMax2 = Math.max(0, i10 - this.f5116l.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f5117m != null) {
                h();
            } else {
                j();
            }
            return false;
        }
        int i11 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i12 = iMax > 0 ? iMax / 2 : 0;
        if (this.f5117m != null) {
            Rect rect = new Rect();
            this.f5117m.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                j();
                return true;
            }
        }
        if (getMinHeight() != i10) {
            setMinHeight(i10);
        }
        if (getMinWidth() != i10) {
            setMinWidth(i10);
        }
        this.f5117m = new InsetDrawable((Drawable) this.f5116l, i11, i12, i11, i12);
        j();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0074  */
    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        boolean z10;
        int i10;
        if (!this.A) {
            return super.dispatchHoverEvent(motionEvent);
        }
        b bVar = this.f5130z;
        if (bVar.f13504h.isEnabled() && bVar.f13504h.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                int i11 = (Chip.this.e() && Chip.this.getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY())) ? 1 : 0;
                int i12 = bVar.f13509m;
                if (i12 != i11) {
                    bVar.f13509m = i11;
                    bVar.s(i11, 128);
                    bVar.s(i12, 256);
                }
                if (i11 != Integer.MIN_VALUE) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else if (action == 10 && (i10 = bVar.f13509m) != Integer.MIN_VALUE) {
                if (i10 != Integer.MIN_VALUE) {
                    bVar.f13509m = Integer.MIN_VALUE;
                    bVar.s(Integer.MIN_VALUE, 128);
                    bVar.s(i10, 256);
                }
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        return z10 || super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i10;
        if (!this.A) {
            return super.dispatchKeyEvent(keyEvent);
        }
        b bVar = this.f5130z;
        Objects.requireNonNull(bVar);
        boolean zN = false;
        int i11 = 0;
        zN = false;
        zN = false;
        zN = false;
        zN = false;
        zN = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i12 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i12 = 33;
                                } else if (keyCode == 21) {
                                    i12 = 17;
                                } else if (keyCode != 22) {
                                    i12 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z10 = false;
                                while (i11 < repeatCount && bVar.n(i12, null)) {
                                    i11++;
                                    z10 = true;
                                }
                                zN = z10;
                            }
                            break;
                        case 23:
                            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                                i10 = bVar.f13508l;
                                if (i10 != Integer.MIN_VALUE) {
                                    bVar.p(i10, 16);
                                }
                                zN = true;
                            }
                            break;
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    i10 = bVar.f13508l;
                    if (i10 != Integer.MIN_VALUE) {
                        bVar.p(i10, 16);
                    }
                    zN = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                zN = bVar.n(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                zN = bVar.n(1, null);
            }
        }
        if (!zN || this.f5130z.f13508l == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // androidx.appcompat.widget.g, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i10;
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f5116l;
        boolean zD0 = false;
        int i11 = 0;
        zD0 = false;
        if (aVar != null && com.google.android.material.chip.a.H(aVar.U)) {
            com.google.android.material.chip.a aVar2 = this.f5116l;
            ?? IsEnabled = isEnabled();
            if (this.f5125u) {
                i10 = IsEnabled;
                i10 = IsEnabled + 1;
            }
            i10 = IsEnabled;
            int i12 = i10;
            if (this.f5124t) {
                i12 = i10 + 1;
            }
            int i13 = i12;
            if (this.f5123s) {
                i13 = i12 + 1;
            }
            int i14 = i13;
            if (isChecked()) {
                i14 = i13 + 1;
            }
            int[] iArr = new int[i14];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i11 = 1;
            }
            if (this.f5125u) {
                iArr[i11] = 16842908;
                i11++;
            }
            if (this.f5124t) {
                iArr[i11] = 16843623;
                i11++;
            }
            if (this.f5123s) {
                iArr[i11] = 16842919;
                i11++;
            }
            if (isChecked()) {
                iArr[i11] = 16842913;
            }
            zD0 = aVar2.d0(iArr);
        }
        if (zD0) {
            invalidate();
        }
    }

    public final boolean e() {
        com.google.android.material.chip.a aVar = this.f5116l;
        return (aVar == null || aVar.E() == null) ? false : true;
    }

    public final boolean f() {
        com.google.android.material.chip.a aVar = this.f5116l;
        return aVar != null && aVar.Z;
    }

    public final boolean g() {
        boolean z10 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f5119o;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z10 = true;
        }
        if (this.A) {
            this.f5130z.s(1, 1);
        }
        return z10;
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f5129y)) {
            return this.f5129y;
        }
        if (!f()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).f5137o.f7706d) ? "android.widget.RadioButton" : "android.widget.CompoundButton";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f5117m;
        return insetDrawable == null ? this.f5116l : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5145b0;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5146c0;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.H;
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return Math.max(0.0f, aVar.D());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f5116l;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5155m0;
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        Drawable drawable;
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar == null || (drawable = aVar.P) == null) {
            return null;
        }
        return b0.a.a(drawable);
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.R;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.Q;
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.I;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5148f0;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.K;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.L;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.E();
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.Y;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5154l0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.X;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5153k0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.W;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.L0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.A) {
            b bVar = this.f5130z;
            if (bVar.f13508l == 1 || bVar.f13507k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public p5.g getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5147e0;
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5150h0;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5149g0;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.M;
        }
        return null;
    }

    public m6.i getShapeAppearanceModel() {
        return this.f5116l.f10495h.f10515a;
    }

    public p5.g getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.d0;
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5152j0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            return aVar.f5151i0;
        }
        return 0.0f;
    }

    public final void h() {
        if (this.f5117m != null) {
            this.f5117m = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            j();
        }
    }

    public final void i() {
        if (e()) {
            com.google.android.material.chip.a aVar = this.f5116l;
            if ((aVar != null && aVar.T) && this.f5119o != null) {
                a0.p(this, this.f5130z);
                this.A = true;
                return;
            }
        }
        a0.p(this, null);
        this.A = false;
    }

    public final void j() {
        int[] iArr = k6.a.f9725a;
        k();
    }

    public final void k() {
        this.f5118n = new RippleDrawable(k6.a.b(this.f5116l.M), getBackgroundDrawable(), null);
        this.f5116l.n0();
        RippleDrawable rippleDrawable = this.f5118n;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.q(this, rippleDrawable);
        l();
    }

    public final void l() {
        com.google.android.material.chip.a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f5116l) == null) {
            return;
        }
        int iC = (int) (aVar.C() + aVar.f5155m0 + aVar.f5152j0);
        com.google.android.material.chip.a aVar2 = this.f5116l;
        int iZ = (int) (aVar2.z() + aVar2.f5148f0 + aVar2.f5151i0);
        if (this.f5117m != null) {
            Rect rect = new Rect();
            this.f5117m.getPadding(rect);
            iZ += rect.left;
            iC += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.e.k(this, iZ, paddingTop, iC, paddingBottom);
    }

    public final void m() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.e(getContext(), paint, this.D);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o.K(this, this.f5116l);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, G);
        }
        if (f()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, H);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (this.A) {
            b bVar = this.f5130z;
            int i11 = bVar.f13508l;
            if (i11 != Integer.MIN_VALUE) {
                bVar.k(i11);
            }
            if (z10) {
                bVar.n(i10, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i10;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(f());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            if (!chipGroup.f7740j) {
                i10 = -1;
                break;
            }
            int i11 = 0;
            i10 = 0;
            while (true) {
                if (i11 >= chipGroup.getChildCount()) {
                    i10 = -1;
                    break;
                }
                if (chipGroup.getChildAt(i11) instanceof Chip) {
                    if (((Chip) chipGroup.getChildAt(i11)) == this) {
                        break;
                    } else {
                        i10++;
                    }
                }
                i11++;
            }
            Object tag = getTag(R.id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) k0.f.c.a(tag instanceof Integer ? ((Integer) tag).intValue() : -1, 1, i10, 1, isChecked()).f9568a);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i10) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.f5127w != i10) {
            this.f5127w = i10;
            l();
        }
    }

    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f5123s) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z10 = true;
                }
                z10 = false;
            } else {
                if (this.f5123s) {
                    g();
                    z10 = true;
                }
                setCloseIconPressed(false);
            }
            z10 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z10 = true;
        } else {
            z10 = false;
        }
        return z10 || super.onTouchEvent(motionEvent);
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.f5129y = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f5118n) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.g, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f5118n) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.g, android.view.View
    public void setBackgroundResource(int i10) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.K(z10);
        }
    }

    public void setCheckableResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.K(aVar.f5156n0.getResources().getBoolean(i10));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar == null) {
            this.f5122r = z10;
        } else if (aVar.Z) {
            super.setChecked(z10);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.L(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z10) {
        setCheckedIconVisible(z10);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i10) {
        setCheckedIconVisible(i10);
    }

    public void setCheckedIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.L(g.a.b(aVar.f5156n0, i10));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.M(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.M(g.a.a(aVar.f5156n0, i10));
        }
    }

    public void setCheckedIconVisible(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.N(aVar.f5156n0.getResources().getBoolean(i10));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.O(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.O(g.a.a(aVar.f5156n0, i10));
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.P(f10);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.P(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setChipDrawable(com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f5116l;
        if (aVar2 != aVar) {
            if (aVar2 != null) {
                aVar2.K0 = new WeakReference<>(null);
            }
            this.f5116l = aVar;
            aVar.M0 = false;
            Objects.requireNonNull(aVar);
            aVar.K0 = new WeakReference<>(this);
            d(this.f5128x);
        }
    }

    public void setChipEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.Q(f10);
        }
    }

    public void setChipEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.Q(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setChipIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.R(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z10) {
        setChipIconVisible(z10);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i10) {
        setChipIconVisible(i10);
    }

    public void setChipIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.R(g.a.b(aVar.f5156n0, i10));
        }
    }

    public void setChipIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.S(f10);
        }
    }

    public void setChipIconSizeResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.S(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.T(colorStateList);
        }
    }

    public void setChipIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.T(g.a.a(aVar.f5156n0, i10));
        }
    }

    public void setChipIconVisible(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.U(aVar.f5156n0.getResources().getBoolean(i10));
        }
    }

    public void setChipMinHeight(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.V(f10);
        }
    }

    public void setChipMinHeightResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.V(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setChipStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.W(f10);
        }
    }

    public void setChipStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.W(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.X(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.X(g.a.a(aVar.f5156n0, i10));
        }
    }

    public void setChipStrokeWidth(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.Y(f10);
        }
    }

    public void setChipStrokeWidthResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.Y(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i10) {
        setText(getResources().getString(i10));
    }

    public void setCloseIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.Z(drawable);
        }
        i();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar == null || aVar.Y == charSequence) {
            return;
        }
        h0.a aVarC = h0.a.c();
        aVar.Y = (SpannableStringBuilder) aVarC.d(charSequence, aVarC.f8089c);
        aVar.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z10) {
        setCloseIconVisible(z10);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i10) {
        setCloseIconVisible(i10);
    }

    public void setCloseIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.a0(f10);
        }
    }

    public void setCloseIconEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.a0(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.Z(g.a.b(aVar.f5156n0, i10));
        }
        i();
    }

    public void setCloseIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.b0(f10);
        }
    }

    public void setCloseIconSizeResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.b0(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.c0(f10);
        }
    }

    public void setCloseIconStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.c0(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.e0(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.e0(g.a.a(aVar.f5156n0, i10));
        }
    }

    public void setCloseIconVisible(int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override // androidx.appcompat.widget.g, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // androidx.appcompat.widget.g, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.n(f10);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f5116l == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.L0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        this.f5126v = z10;
        d(this.f5128x);
    }

    @Override // android.widget.TextView
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i10);
        }
    }

    public void setHideMotionSpec(p5.g gVar) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.f5147e0 = gVar;
        }
    }

    public void setHideMotionSpecResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.f5147e0 = p5.g.b(aVar.f5156n0, i10);
        }
    }

    public void setIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.g0(f10);
        }
    }

    public void setIconEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.g0(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.h0(f10);
        }
    }

    public void setIconStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.h0(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    @Override // g6.i
    public void setInternalOnCheckedChangeListener(i.a<Chip> aVar) {
        this.f5121q = aVar;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        if (this.f5116l == null) {
            return;
        }
        super.setLayoutDirection(i10);
    }

    @Override // android.widget.TextView
    public void setLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i10) {
        super.setMaxWidth(i10);
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.N0 = i10;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i10);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f5120p = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f5119o = onClickListener;
        i();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.i0(colorStateList);
        }
        if (this.f5116l.I0) {
            return;
        }
        k();
    }

    public void setRippleColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.i0(g.a.a(aVar.f5156n0, i10));
            if (this.f5116l.I0) {
                return;
            }
            k();
        }
    }

    @Override // m6.l
    public void setShapeAppearanceModel(m6.i iVar) {
        this.f5116l.setShapeAppearanceModel(iVar);
    }

    public void setShowMotionSpec(p5.g gVar) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.d0 = gVar;
        }
    }

    public void setShowMotionSpecResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.d0 = p5.g.b(aVar.f5156n0, i10);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z10) {
        if (!z10) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z10);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(aVar.M0 ? null : charSequence, bufferType);
        com.google.android.material.chip.a aVar2 = this.f5116l;
        if (aVar2 != null) {
            aVar2.j0(charSequence);
        }
    }

    public void setTextAppearance(d dVar) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.k0(dVar);
        }
        m();
    }

    public void setTextAppearanceResource(int i10) {
        setTextAppearance(getContext(), i10);
    }

    public void setTextEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.l0(f10);
        }
    }

    public void setTextEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.l0(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setTextStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.m0(f10);
        }
    }

    public void setTextStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.m0(aVar.f5156n0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.f0(z10);
        }
        i();
    }

    public void setCheckedIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.N(z10);
        }
    }

    public void setChipIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.U(z10);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.k0(new d(aVar.f5156n0, i10));
        }
        m();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        com.google.android.material.chip.a aVar = this.f5116l;
        if (aVar != null) {
            aVar.k0(new d(aVar.f5156n0, i10));
        }
        m();
    }
}
