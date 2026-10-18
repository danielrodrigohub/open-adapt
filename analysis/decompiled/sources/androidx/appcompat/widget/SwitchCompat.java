package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final Property<SwitchCompat, Float> f1093a0 = new a();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final int[] f1094b0 = {R.attr.state_checked};
    public int A;
    public int B;
    public float C;
    public float D;
    public VelocityTracker E;
    public int F;
    public float G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public boolean O;
    public final TextPaint P;
    public ColorStateList Q;
    public StaticLayout R;
    public StaticLayout S;
    public i.a T;
    public ObjectAnimator U;
    public n V;
    public final Rect W;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f1095h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ColorStateList f1096i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PorterDuff.Mode f1097j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1098k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1099l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f1100m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ColorStateList f1101n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PorterDuff.Mode f1102o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1103p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1104q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1105r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1106s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1107t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1108u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public CharSequence f1109v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public CharSequence f1110w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public CharSequence f1111x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f1112y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1113z;

    public class a extends Property<SwitchCompat, Float> {
        public a() {
            super(Float.class, "thumbPos");
        }

        @Override // android.util.Property
        public final Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.G);
        }

        @Override // android.util.Property
        public final void set(SwitchCompat switchCompat, Float f10) {
            switchCompat.setThumbPosition(f10.floatValue());
        }
    }

    public static class b {
        public static void a(ObjectAnimator objectAnimator, boolean z10) {
            objectAnimator.setAutoCancel(z10);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchCompat(Context context, AttributeSet attributeSet) {
        Typeface typeface;
        int resourceId;
        int i10 = androidx.appcompat.R.attr.switchStyle;
        super(context, attributeSet, i10);
        this.f1096i = null;
        this.f1097j = null;
        this.f1098k = false;
        this.f1099l = false;
        this.f1101n = null;
        this.f1102o = null;
        this.f1103p = false;
        this.f1104q = false;
        this.E = VelocityTracker.obtain();
        this.O = true;
        this.W = new Rect();
        a1.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.P = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = androidx.appcompat.R.styleable.SwitchCompat;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        f1 f1Var = new f1(context, typedArrayObtainStyledAttributes);
        j0.a0.o(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i10);
        Drawable drawableG = f1Var.g(androidx.appcompat.R.styleable.SwitchCompat_android_thumb);
        this.f1095h = drawableG;
        if (drawableG != null) {
            drawableG.setCallback(this);
        }
        Drawable drawableG2 = f1Var.g(androidx.appcompat.R.styleable.SwitchCompat_track);
        this.f1100m = drawableG2;
        if (drawableG2 != null) {
            drawableG2.setCallback(this);
        }
        setTextOnInternal(f1Var.n(androidx.appcompat.R.styleable.SwitchCompat_android_textOn));
        setTextOffInternal(f1Var.n(androidx.appcompat.R.styleable.SwitchCompat_android_textOff));
        this.f1113z = f1Var.a(androidx.appcompat.R.styleable.SwitchCompat_showText, true);
        this.f1105r = f1Var.f(androidx.appcompat.R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.f1106s = f1Var.f(androidx.appcompat.R.styleable.SwitchCompat_switchMinWidth, 0);
        this.f1107t = f1Var.f(androidx.appcompat.R.styleable.SwitchCompat_switchPadding, 0);
        this.f1108u = f1Var.a(androidx.appcompat.R.styleable.SwitchCompat_splitTrack, false);
        ColorStateList colorStateListC = f1Var.c(androidx.appcompat.R.styleable.SwitchCompat_thumbTint);
        if (colorStateListC != null) {
            this.f1096i = colorStateListC;
            this.f1098k = true;
        }
        PorterDuff.Mode modeD = l0.d(f1Var.j(androidx.appcompat.R.styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1097j != modeD) {
            this.f1097j = modeD;
            this.f1099l = true;
        }
        if (this.f1098k || this.f1099l) {
            a();
        }
        ColorStateList colorStateListC2 = f1Var.c(androidx.appcompat.R.styleable.SwitchCompat_trackTint);
        if (colorStateListC2 != null) {
            this.f1101n = colorStateListC2;
            this.f1103p = true;
        }
        PorterDuff.Mode modeD2 = l0.d(f1Var.j(androidx.appcompat.R.styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.f1102o != modeD2) {
            this.f1102o = modeD2;
            this.f1104q = true;
        }
        if (this.f1103p || this.f1104q) {
            b();
        }
        int iL = f1Var.l(androidx.appcompat.R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (iL != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iL, androidx.appcompat.R.styleable.TextAppearance);
            int i11 = androidx.appcompat.R.styleable.TextAppearance_android_textColor;
            ColorStateList colorStateList = (!typedArrayObtainStyledAttributes2.hasValue(i11) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(i11, 0)) == 0 || (colorStateList = g.a.a(context, resourceId)) == null) ? typedArrayObtainStyledAttributes2.getColorStateList(i11) : colorStateList;
            if (colorStateList != null) {
                this.Q = colorStateList;
            } else {
                this.Q = getTextColors();
            }
            int dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            if (dimensionPixelSize != 0) {
                float f10 = dimensionPixelSize;
                if (f10 != textPaint.getTextSize()) {
                    textPaint.setTextSize(f10);
                    requestLayout();
                }
            }
            int i12 = typedArrayObtainStyledAttributes2.getInt(androidx.appcompat.R.styleable.TextAppearance_android_typeface, -1);
            int i13 = typedArrayObtainStyledAttributes2.getInt(androidx.appcompat.R.styleable.TextAppearance_android_textStyle, -1);
            if (i12 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i12 != 2) {
                typeface = i12 != 3 ? null : Typeface.MONOSPACE;
            } else {
                typeface = Typeface.SERIF;
            }
            if (i13 > 0) {
                Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i13) : Typeface.create(typeface, i13);
                setSwitchTypeface(typefaceDefaultFromStyle);
                int i14 = i13 & (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0));
                textPaint.setFakeBoldText((i14 & 1) != 0);
                textPaint.setTextSkewX((i14 & 2) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (typedArrayObtainStyledAttributes2.getBoolean(androidx.appcompat.R.styleable.TextAppearance_textAllCaps, false)) {
                this.T = new i.a(getContext());
            } else {
                this.T = null;
            }
            setTextOnInternal(this.f1109v);
            setTextOffInternal(this.f1111x);
            typedArrayObtainStyledAttributes2.recycle();
        }
        new f0(this).h(attributeSet, i10);
        f1Var.r();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.B = viewConfiguration.getScaledTouchSlop();
        this.F = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().b(attributeSet, i10);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private n getEmojiTextViewHelper() {
        if (this.V == null) {
            this.V = new n(this);
        }
        return this.V;
    }

    private boolean getTargetCheckedState() {
        return this.G > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((o1.b(this) ? 1.0f - this.G : this.G) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f1100m;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.W;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f1095h;
        Rect rectC = drawable2 != null ? l0.c(drawable2) : l0.f1336c;
        return ((((this.H - this.J) - rect.left) - rect.right) - rectC.left) - rectC.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f1111x = charSequence;
        this.f1112y = c(charSequence);
        this.S = null;
        if (this.f1113z) {
            g();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f1109v = charSequence;
        this.f1110w = c(charSequence);
        this.R = null;
        if (this.f1113z) {
            g();
        }
    }

    public final void a() {
        Drawable drawable = this.f1095h;
        if (drawable != null) {
            if (this.f1098k || this.f1099l) {
                Drawable drawableMutate = drawable.mutate();
                this.f1095h = drawableMutate;
                if (this.f1098k) {
                    b0.a.b.h(drawableMutate, this.f1096i);
                }
                if (this.f1099l) {
                    b0.a.b.i(this.f1095h, this.f1097j);
                }
                if (this.f1095h.isStateful()) {
                    this.f1095h.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.f1100m;
        if (drawable != null) {
            if (this.f1103p || this.f1104q) {
                Drawable drawableMutate = drawable.mutate();
                this.f1100m = drawableMutate;
                if (this.f1103p) {
                    b0.a.b.h(drawableMutate, this.f1101n);
                }
                if (this.f1104q) {
                    b0.a.b.i(this.f1100m, this.f1102o);
                }
                if (this.f1100m.isStateful()) {
                    this.f1100m.setState(getDrawableState());
                }
            }
        }
    }

    public final CharSequence c(CharSequence charSequence) {
        TransformationMethod transformationMethodE = getEmojiTextViewHelper().f1384b.f14187a.e(this.T);
        return transformationMethodE != null ? transformationMethodE.getTransformation(charSequence, this) : charSequence;
    }

    public final Layout d(CharSequence charSequence) {
        TextPaint textPaint = this.P;
        return new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i10;
        int i11;
        Rect rect = this.W;
        int i12 = this.K;
        int i13 = this.L;
        int i14 = this.M;
        int i15 = this.N;
        int thumbOffset = getThumbOffset() + i12;
        Drawable drawable = this.f1095h;
        Rect rectC = drawable != null ? l0.c(drawable) : l0.f1336c;
        Drawable drawable2 = this.f1100m;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i16 = rect.left;
            thumbOffset += i16;
            if (rectC != null) {
                int i17 = rectC.left;
                if (i17 > i16) {
                    i12 += i17 - i16;
                }
                int i18 = rectC.top;
                int i19 = rect.top;
                i10 = i18 > i19 ? (i18 - i19) + i13 : i13;
                int i20 = rectC.right;
                int i21 = rect.right;
                if (i20 > i21) {
                    i14 -= i20 - i21;
                }
                int i22 = rectC.bottom;
                int i23 = rect.bottom;
                if (i22 > i23) {
                    i11 = i15 - (i22 - i23);
                }
                this.f1100m.setBounds(i12, i10, i14, i11);
            } else {
                i10 = i13;
            }
            i11 = i15;
            this.f1100m.setBounds(i12, i10, i14, i11);
        }
        Drawable drawable3 = this.f1095h;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i24 = thumbOffset - rect.left;
            int i25 = thumbOffset + this.J + rect.right;
            this.f1095h.setBounds(i24, i13, i25, i15);
            Drawable background = getBackground();
            if (background != null) {
                b0.a.b.f(background, i24, i13, i25, i15);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f10, float f11) {
        super.drawableHotspotChanged(f10, f11);
        Drawable drawable = this.f1095h;
        if (drawable != null) {
            b0.a.b.e(drawable, f10, f11);
        }
        Drawable drawable2 = this.f1100m;
        if (drawable2 != null) {
            b0.a.b.e(drawable2, f10, f11);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1095h;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f1100m;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    public final void e() {
        if (Build.VERSION.SDK_INT >= 30) {
            Object string = this.f1111x;
            if (string == null) {
                string = getResources().getString(androidx.appcompat.R.string.abc_capital_off);
            }
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            new j0.y(androidx.core.R.id.tag_state_description, CharSequence.class).e(this, string);
        }
    }

    public final void f() {
        if (Build.VERSION.SDK_INT >= 30) {
            Object string = this.f1109v;
            if (string == null) {
                string = getResources().getString(androidx.appcompat.R.string.abc_capital_on);
            }
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            new j0.y(androidx.core.R.id.tag_state_description, CharSequence.class).e(this, string);
        }
    }

    public final void g() {
        if (this.V.f1384b.f14187a.b()) {
            Object obj = androidx.emoji2.text.a.f1800a;
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!o1.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.H;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f1107t : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (o1.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.H;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f1107t : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n0.k.f(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f1113z;
    }

    public boolean getSplitTrack() {
        return this.f1108u;
    }

    public int getSwitchMinWidth() {
        return this.f1106s;
    }

    public int getSwitchPadding() {
        return this.f1107t;
    }

    public CharSequence getTextOff() {
        return this.f1111x;
    }

    public CharSequence getTextOn() {
        return this.f1109v;
    }

    public Drawable getThumbDrawable() {
        return this.f1095h;
    }

    public final float getThumbPosition() {
        return this.G;
    }

    public int getThumbTextPadding() {
        return this.f1105r;
    }

    public ColorStateList getThumbTintList() {
        return this.f1096i;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f1097j;
    }

    public Drawable getTrackDrawable() {
        return this.f1100m;
    }

    public ColorStateList getTrackTintList() {
        return this.f1101n;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f1102o;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1095h;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1100m;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.U;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.U.end();
        this.U = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1094b0);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.W;
        Drawable drawable = this.f1100m;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i10 = this.L;
        int i11 = this.N;
        int i12 = i10 + rect.top;
        int i13 = i11 - rect.bottom;
        Drawable drawable2 = this.f1095h;
        if (drawable != null) {
            if (!this.f1108u || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectC = l0.c(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectC.left;
                rect.right -= rectC.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.R : this.S;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.Q;
            if (colorStateList != null) {
                this.P.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.P.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i12 + i13) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f1109v : this.f1111x;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(text);
            sb2.append(SafeJsonPrimitive.NULL_CHAR);
            sb2.append(charSequence);
            accessibilityNodeInfo.setText(sb2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z10, i10, i11, i12, i13);
        int iMax2 = 0;
        if (this.f1095h != null) {
            Rect rect = this.W;
            Drawable drawable = this.f1100m;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectC = l0.c(this.f1095h);
            iMax = Math.max(0, rectC.left - rect.left);
            iMax2 = Math.max(0, rectC.right - rect.right);
        } else {
            iMax = 0;
        }
        if (o1.b(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.H + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.H) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i14 = this.I;
            int i15 = height2 - (i14 / 2);
            height = i14 + i15;
            paddingTop = i15;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.I + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.I;
        }
        this.K = paddingLeft;
        this.L = paddingTop;
        this.N = height;
        this.M = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i10, int i11) {
        int intrinsicWidth;
        int intrinsicHeight;
        int iMax;
        if (this.f1113z) {
            if (this.R == null) {
                this.R = (StaticLayout) d(this.f1110w);
            }
            if (this.S == null) {
                this.S = (StaticLayout) d(this.f1112y);
            }
        }
        Rect rect = this.W;
        Drawable drawable = this.f1095h;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f1095h.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f1095h.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        if (this.f1113z) {
            iMax = (this.f1105r * 2) + Math.max(this.R.getWidth(), this.S.getWidth());
        } else {
            iMax = 0;
        }
        this.J = Math.max(iMax, intrinsicWidth);
        Drawable drawable2 = this.f1100m;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f1100m.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax2 = rect.left;
        int iMax3 = rect.right;
        Drawable drawable3 = this.f1095h;
        if (drawable3 != null) {
            Rect rectC = l0.c(drawable3);
            iMax2 = Math.max(iMax2, rectC.left);
            iMax3 = Math.max(iMax3, rectC.right);
        }
        int iMax4 = this.O ? Math.max(this.f1106s, (this.J * 2) + iMax2 + iMax3) : this.f1106s;
        int iMax5 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.H = iMax4;
        this.I = iMax5;
        super.onMeasure(i10, i11);
        if (getMeasuredHeight() < iMax5) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax5);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1109v : this.f1111x;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0090  */
    /* JADX WARN: Code duplicated, block: B:42:0x0094  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00db  */
    /* JADX WARN: Code duplicated, block: B:64:0x00de  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f5  */
    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean zIsChecked;
        boolean targetCheckedState;
        float xVelocity;
        float f10;
        this.E.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        boolean z11 = false;
        if (actionMasked != 0) {
            float f11 = 0.0f;
            if (actionMasked == 1) {
                if (this.A == 2) {
                    this.A = 0;
                    if (motionEvent.getAction() == 1 || !isEnabled()) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    zIsChecked = isChecked();
                    if (z10) {
                        this.E.computeCurrentVelocity(1000);
                        xVelocity = this.E.getXVelocity();
                        if (Math.abs(xVelocity) <= this.F) {
                            targetCheckedState = o1.b(this) ? xVelocity > 0.0f : xVelocity < 0.0f;
                        } else {
                            targetCheckedState = getTargetCheckedState();
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    super.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.A = 0;
                this.E.clear();
            } else if (actionMasked == 2) {
                int i10 = this.A;
                if (i10 == 1) {
                    float x10 = motionEvent.getX();
                    float y7 = motionEvent.getY();
                    if (Math.abs(x10 - this.C) > this.B || Math.abs(y7 - this.D) > this.B) {
                        this.A = 2;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        this.C = x10;
                        this.D = y7;
                        return true;
                    }
                } else if (i10 == 2) {
                    float x11 = motionEvent.getX();
                    int thumbScrollRange = getThumbScrollRange();
                    float f12 = x11 - this.C;
                    if (thumbScrollRange != 0) {
                        f10 = f12 / thumbScrollRange;
                    } else {
                        f10 = f12 > 0.0f ? 1.0f : -1.0f;
                    }
                    if (o1.b(this)) {
                        f10 = -f10;
                    }
                    float f13 = this.G;
                    float f14 = f10 + f13;
                    if (f14 >= 0.0f) {
                        f11 = f14 > 1.0f ? 1.0f : f14;
                    }
                    if (f11 != f13) {
                        this.C = x11;
                        setThumbPosition(f11);
                    }
                    return true;
                }
            } else if (actionMasked == 3) {
                if (this.A == 2) {
                    this.A = 0;
                    if (motionEvent.getAction() == 1) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    zIsChecked = isChecked();
                    if (z10) {
                        this.E.computeCurrentVelocity(1000);
                        xVelocity = this.E.getXVelocity();
                        if (Math.abs(xVelocity) <= this.F) {
                            targetCheckedState = getTargetCheckedState();
                        } else if (o1.b(this)) {
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                    motionEventObtain2.setAction(3);
                    super.onTouchEvent(motionEventObtain2);
                    motionEventObtain2.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.A = 0;
                this.E.clear();
            }
        } else {
            float x12 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (isEnabled()) {
                if (this.f1095h != null) {
                    int thumbOffset = getThumbOffset();
                    this.f1095h.getPadding(this.W);
                    int i11 = this.L;
                    int i12 = this.B;
                    int i13 = i11 - i12;
                    int i14 = (this.K + thumbOffset) - i12;
                    int i15 = this.J + i14;
                    Rect rect = this.W;
                    int i16 = i15 + rect.left + rect.right + i12;
                    int i17 = this.N + i12;
                    if (x12 > i14 && x12 < i16 && y10 > i13 && y10 < i17) {
                        z11 = true;
                    }
                }
                if (z11) {
                    this.A = 1;
                    this.C = x12;
                    this.D = y10;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().c(z10);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        super.setChecked(z10);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            f();
        } else {
            e();
        }
        if (getWindowToken() != null) {
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            if (j0.a0.g.c(this)) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f1093a0, zIsChecked ? 1.0f : 0.0f);
                this.U = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(250L);
                b.a(this.U, true);
                this.U.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.U;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setThumbPosition(zIsChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(n0.k.g(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().d(z10);
        setTextOnInternal(this.f1109v);
        setTextOffInternal(this.f1111x);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z10) {
        this.O = z10;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z10) {
        if (this.f1113z != z10) {
            this.f1113z = z10;
            requestLayout();
            if (z10) {
                g();
            }
        }
    }

    public void setSplitTrack(boolean z10) {
        this.f1108u = z10;
        invalidate();
    }

    public void setSwitchMinWidth(int i10) {
        this.f1106s = i10;
        requestLayout();
    }

    public void setSwitchPadding(int i10) {
        this.f1107t = i10;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.P.getTypeface() == null || this.P.getTypeface().equals(typeface)) && (this.P.getTypeface() != null || typeface == null)) {
            return;
        }
        this.P.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            return;
        }
        e();
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            f();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1095h;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1095h = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f10) {
        this.G = f10;
        invalidate();
    }

    public void setThumbResource(int i10) {
        setThumbDrawable(g.a.b(getContext(), i10));
    }

    public void setThumbTextPadding(int i10) {
        this.f1105r = i10;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f1096i = colorStateList;
        this.f1098k = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f1097j = mode;
        this.f1099l = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1100m;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1100m = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i10) {
        setTrackDrawable(g.a.b(getContext(), i10));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f1101n = colorStateList;
        this.f1103p = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f1102o = mode;
        this.f1104q = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1095h || drawable == this.f1100m;
    }
}
