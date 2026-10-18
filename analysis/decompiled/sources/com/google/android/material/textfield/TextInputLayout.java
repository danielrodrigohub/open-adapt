package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.f1;
import androidx.appcompat.widget.l0;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import g6.n;
import g6.s;
import j0.a0;
import j0.g0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.WeakHashMap;
import m6.i;
import q6.j;
import q6.k;
import q6.l;
import q6.o;
import q6.p;

/* JADX INFO: loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    public static final int P0 = R.style.Widget_Design_TextInputLayout;
    public AppCompatTextView A;
    public int A0;
    public ColorStateList B;
    public int B0;
    public int C;
    public ColorStateList C0;
    public androidx.transition.b D;
    public int D0;
    public androidx.transition.b E;
    public int E0;
    public ColorStateList F;
    public int F0;
    public ColorStateList G;
    public int G0;
    public CharSequence H;
    public int H0;
    public final AppCompatTextView I;
    public boolean I0;
    public boolean J;
    public final g6.e J0;
    public CharSequence K;
    public boolean K0;
    public boolean L;
    public boolean L0;
    public m6.f M;
    public ValueAnimator M0;
    public m6.f N;
    public boolean N0;
    public m6.f O;
    public boolean O0;
    public i P;
    public boolean Q;
    public final int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f5474a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f5475b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final Rect f5476c0;
    public final Rect d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final RectF f5477e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Typeface f5478f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public ColorDrawable f5479g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f5480h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f5481h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p f5482i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final LinkedHashSet<f> f5483i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f5484j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f5485j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FrameLayout f5486k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final SparseArray<q6.i> f5487k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public EditText f5488l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final CheckableImageButton f5489l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f5490m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final LinkedHashSet<g> f5491m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5492n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public ColorStateList f5493n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5494o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public PorterDuff.Mode f5495o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5496p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public ColorDrawable f5497p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5498q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f5499q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final k f5500r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public Drawable f5501r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5502s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public View.OnLongClickListener f5503s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f5504t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public View.OnLongClickListener f5505t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f5506u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final CheckableImageButton f5507u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public AppCompatTextView f5508v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public ColorStateList f5509v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f5510w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public PorterDuff.Mode f5511w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f5512x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public ColorStateList f5513x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f5514y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public ColorStateList f5515y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f5516z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f5517z0;

    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.A(!textInputLayout.O0, false);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f5502s) {
                textInputLayout2.t(editable.length());
            }
            TextInputLayout textInputLayout3 = TextInputLayout.this;
            if (textInputLayout3.f5516z) {
                textInputLayout3.B(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            TextInputLayout.this.f5489l0.performClick();
            TextInputLayout.this.f5489l0.jumpDrawablesToCurrentState();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            TextInputLayout.this.f5488l.requestLayout();
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.J0.o(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class e extends j0.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final TextInputLayout f5522d;

        public e(TextInputLayout textInputLayout) {
            this.f5522d = textInputLayout;
        }

        @Override // j0.a
        public void d(View view, k0.f fVar) {
            this.f9144a.onInitializeAccessibilityNodeInfo(view, fVar.f9552a);
            EditText editText = this.f5522d.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f5522d.getHint();
            CharSequence error = this.f5522d.getError();
            CharSequence placeholderText = this.f5522d.getPlaceholderText();
            int counterMaxLength = this.f5522d.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f5522d.getCounterOverflowDescription();
            boolean z10 = !TextUtils.isEmpty(text);
            boolean z11 = !TextUtils.isEmpty(hint);
            boolean z12 = !this.f5522d.I0;
            boolean z13 = !TextUtils.isEmpty(error);
            boolean z14 = z13 || !TextUtils.isEmpty(counterOverflowDescription);
            String string = z11 ? hint.toString() : "";
            p pVar = this.f5522d.f5482i;
            if (pVar.f13691i.getVisibility() == 0) {
                fVar.f9552a.setLabelFor(pVar.f13691i);
                fVar.A(pVar.f13691i);
            } else {
                fVar.A(pVar.f13693k);
            }
            if (z10) {
                fVar.z(text);
            } else if (!TextUtils.isEmpty(string)) {
                fVar.z(string);
                if (z12 && placeholderText != null) {
                    fVar.z(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                fVar.z(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    fVar.t(string);
                } else {
                    if (z10) {
                        string = ((Object) text) + ", " + string;
                    }
                    fVar.z(string);
                }
                fVar.x(!z10);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            fVar.f9552a.setMaxTextLength(counterMaxLength);
            if (z14) {
                if (!z13) {
                    error = counterOverflowDescription;
                }
                fVar.f9552a.setError(error);
            }
            AppCompatTextView appCompatTextView = this.f5522d.f5500r.f13675r;
            if (appCompatTextView != null) {
                fVar.f9552a.setLabelFor(appCompatTextView);
            }
        }
    }

    public interface f {
        void a(TextInputLayout textInputLayout);
    }

    public interface g {
        void a(TextInputLayout textInputLayout, int i10);
    }

    public static class h extends p0.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CharSequence f5523j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f5524k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public CharSequence f5525l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public CharSequence f5526m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public CharSequence f5527n;

        public class a implements Parcelable.ClassLoaderCreator<h> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new h[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("TextInputLayout.SavedState{");
            sbC.append(Integer.toHexString(System.identityHashCode(this)));
            sbC.append(" error=");
            sbC.append((Object) this.f5523j);
            sbC.append(" hint=");
            sbC.append((Object) this.f5525l);
            sbC.append(" helperText=");
            sbC.append((Object) this.f5526m);
            sbC.append(" placeholderText=");
            sbC.append((Object) this.f5527n);
            sbC.append("}");
            return sbC.toString();
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            TextUtils.writeToParcel(this.f5523j, parcel, i10);
            parcel.writeInt(this.f5524k ? 1 : 0);
            TextUtils.writeToParcel(this.f5525l, parcel, i10);
            TextUtils.writeToParcel(this.f5526m, parcel, i10);
            TextUtils.writeToParcel(this.f5527n, parcel, i10);
        }

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f5523j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f5524k = parcel.readInt() == 1;
            this.f5525l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f5526m = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f5527n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v112 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v52, types: [boolean, int] */
    public TextInputLayout(Context context, AttributeSet attributeSet) {
        int i10;
        ?? r10;
        int i11 = R.attr.textInputStyle;
        int i12 = P0;
        super(r6.a.a(context, attributeSet, i11, i12), attributeSet, i11);
        this.f5492n = -1;
        this.f5494o = -1;
        this.f5496p = -1;
        this.f5498q = -1;
        this.f5500r = new k(this);
        this.f5476c0 = new Rect();
        this.d0 = new Rect();
        this.f5477e0 = new RectF();
        this.f5483i0 = new LinkedHashSet<>();
        this.f5485j0 = 0;
        SparseArray<q6.i> sparseArray = new SparseArray<>();
        this.f5487k0 = sparseArray;
        this.f5491m0 = new LinkedHashSet<>();
        g6.e eVar = new g6.e(this);
        this.J0 = eVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f5480h = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f5486k = frameLayout2;
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f5484j = linearLayout;
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2, null);
        this.I = appCompatTextView;
        linearLayout.setVisibility(8);
        frameLayout2.setVisibility(8);
        appCompatTextView.setVisibility(8);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context2);
        int i13 = R.layout.design_text_input_end_icon;
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(i13, (ViewGroup) linearLayout, false);
        this.f5507u0 = checkableImageButton;
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) layoutInflaterFrom.inflate(i13, (ViewGroup) frameLayout2, false);
        this.f5489l0 = checkableImageButton2;
        frameLayout.setAddStatesFromChildren(true);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        LinearInterpolator linearInterpolator = p5.a.f13252a;
        eVar.O = linearInterpolator;
        eVar.k(false);
        eVar.N = linearInterpolator;
        eVar.k(false);
        eVar.m(8388659);
        int[] iArr = R.styleable.TextInputLayout;
        int i14 = R.styleable.TextInputLayout_counterTextAppearance;
        int i15 = R.styleable.TextInputLayout_counterOverflowTextAppearance;
        int i16 = R.styleable.TextInputLayout_errorTextAppearance;
        int i17 = R.styleable.TextInputLayout_helperTextTextAppearance;
        int i18 = R.styleable.TextInputLayout_hintTextAppearance;
        n.a(context2, attributeSet, i11, i12);
        n.b(context2, attributeSet, iArr, i11, i12, i14, i15, i16, i17, i18);
        f1 f1Var = new f1(context2, context2.obtainStyledAttributes(attributeSet, iArr, i11, i12));
        p pVar = new p(this, f1Var);
        this.f5482i = pVar;
        this.J = f1Var.a(R.styleable.TextInputLayout_hintEnabled, true);
        setHint(f1Var.n(R.styleable.TextInputLayout_android_hint));
        this.L0 = f1Var.a(R.styleable.TextInputLayout_hintAnimationEnabled, true);
        this.K0 = f1Var.a(R.styleable.TextInputLayout_expandedHintEnabled, true);
        int i19 = R.styleable.TextInputLayout_android_minEms;
        if (f1Var.o(i19)) {
            i10 = -1;
            setMinEms(f1Var.j(i19, -1));
        } else {
            i10 = -1;
            int i20 = R.styleable.TextInputLayout_android_minWidth;
            if (f1Var.o(i20)) {
                setMinWidth(f1Var.f(i20, -1));
            }
        }
        int i21 = R.styleable.TextInputLayout_android_maxEms;
        if (f1Var.o(i21)) {
            setMaxEms(f1Var.j(i21, i10));
        } else {
            int i22 = R.styleable.TextInputLayout_android_maxWidth;
            if (f1Var.o(i22)) {
                setMaxWidth(f1Var.f(i22, i10));
            }
        }
        this.P = new i(i.b(context2, attributeSet, i11, i12));
        this.R = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.T = f1Var.e(R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.V = f1Var.f(R.styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.W = f1Var.f(R.styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.U = this.V;
        float fD = f1Var.d(R.styleable.TextInputLayout_boxCornerRadiusTopStart);
        float fD2 = f1Var.d(R.styleable.TextInputLayout_boxCornerRadiusTopEnd);
        float fD3 = f1Var.d(R.styleable.TextInputLayout_boxCornerRadiusBottomEnd);
        float fD4 = f1Var.d(R.styleable.TextInputLayout_boxCornerRadiusBottomStart);
        i iVar = this.P;
        Objects.requireNonNull(iVar);
        i.a aVar = new i.a(iVar);
        if (fD >= 0.0f) {
            aVar.e(fD);
        }
        if (fD2 >= 0.0f) {
            aVar.f(fD2);
        }
        if (fD3 >= 0.0f) {
            aVar.d(fD3);
        }
        if (fD4 >= 0.0f) {
            aVar.c(fD4);
        }
        this.P = new i(aVar);
        ColorStateList colorStateListB = j6.c.b(context2, f1Var, R.styleable.TextInputLayout_boxBackgroundColor);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.D0 = defaultColor;
            this.f5475b0 = defaultColor;
            if (colorStateListB.isStateful()) {
                this.E0 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.F0 = colorStateListB.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
                this.G0 = colorStateListB.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            } else {
                this.F0 = this.D0;
                ColorStateList colorStateListA = g.a.a(context2, R.color.mtrl_filled_background_color);
                this.E0 = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.G0 = colorStateListA.getColorForState(new int[]{android.R.attr.state_hovered}, -1);
            }
        } else {
            this.f5475b0 = 0;
            this.D0 = 0;
            this.E0 = 0;
            this.F0 = 0;
            this.G0 = 0;
        }
        int i23 = R.styleable.TextInputLayout_android_textColorHint;
        if (f1Var.o(i23)) {
            ColorStateList colorStateListC = f1Var.c(i23);
            this.f5515y0 = colorStateListC;
            this.f5513x0 = colorStateListC;
        }
        int i24 = R.styleable.TextInputLayout_boxStrokeColor;
        ColorStateList colorStateListB2 = j6.c.b(context2, f1Var, i24);
        this.B0 = f1Var.b(i24);
        int i25 = R.color.mtrl_textinput_default_box_stroke_color;
        Object obj = y.a.f18143a;
        this.f5517z0 = y.a.c.a(context2, i25);
        this.H0 = y.a.c.a(context2, R.color.mtrl_textinput_disabled_color);
        this.A0 = y.a.c.a(context2, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        int i26 = R.styleable.TextInputLayout_boxStrokeErrorColor;
        if (f1Var.o(i26)) {
            setBoxStrokeErrorColor(j6.c.b(context2, f1Var, i26));
        }
        if (f1Var.l(i18, -1) != -1) {
            r10 = 0;
            setHintTextAppearance(f1Var.l(i18, 0));
        } else {
            r10 = 0;
        }
        int iL = f1Var.l(i16, r10);
        CharSequence charSequenceN = f1Var.n(R.styleable.TextInputLayout_errorContentDescription);
        boolean zA = f1Var.a(R.styleable.TextInputLayout_errorEnabled, r10);
        checkableImageButton.setId(R.id.text_input_error_icon);
        if (j6.c.d(context2)) {
            j0.h.h((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), r10);
        }
        int i27 = R.styleable.TextInputLayout_errorIconTint;
        if (f1Var.o(i27)) {
            this.f5509v0 = j6.c.b(context2, f1Var, i27);
        }
        int i28 = R.styleable.TextInputLayout_errorIconTintMode;
        if (f1Var.o(i28)) {
            this.f5511w0 = s.c(f1Var.j(i28, -1), null);
        }
        int i29 = R.styleable.TextInputLayout_errorIconDrawable;
        if (f1Var.o(i29)) {
            setErrorIconDrawable(f1Var.g(i29));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.s(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int iL2 = f1Var.l(i17, 0);
        boolean zA2 = f1Var.a(R.styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence charSequenceN2 = f1Var.n(R.styleable.TextInputLayout_helperText);
        int iL3 = f1Var.l(R.styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence charSequenceN3 = f1Var.n(R.styleable.TextInputLayout_placeholderText);
        int iL4 = f1Var.l(R.styleable.TextInputLayout_suffixTextAppearance, 0);
        CharSequence charSequenceN4 = f1Var.n(R.styleable.TextInputLayout_suffixText);
        boolean zA3 = f1Var.a(R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(f1Var.j(R.styleable.TextInputLayout_counterMaxLength, -1));
        this.f5512x = f1Var.l(i14, 0);
        this.f5510w = f1Var.l(i15, 0);
        setBoxBackgroundMode(f1Var.j(R.styleable.TextInputLayout_boxBackgroundMode, 0));
        if (j6.c.d(context2)) {
            j0.h.h((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams(), 0);
        }
        int iL5 = f1Var.l(R.styleable.TextInputLayout_endIconDrawable, 0);
        sparseArray.append(-1, new q6.d(this, iL5));
        sparseArray.append(0, new o(this));
        sparseArray.append(1, new com.google.android.material.textfield.c(this, iL5 == 0 ? f1Var.l(R.styleable.TextInputLayout_passwordToggleDrawable, 0) : iL5));
        sparseArray.append(2, new com.google.android.material.textfield.a(this, iL5));
        sparseArray.append(3, new com.google.android.material.textfield.b(this, iL5));
        int i30 = R.styleable.TextInputLayout_passwordToggleEnabled;
        if (!f1Var.o(i30)) {
            int i31 = R.styleable.TextInputLayout_endIconTint;
            if (f1Var.o(i31)) {
                this.f5493n0 = j6.c.b(context2, f1Var, i31);
            }
            int i32 = R.styleable.TextInputLayout_endIconTintMode;
            if (f1Var.o(i32)) {
                this.f5495o0 = s.c(f1Var.j(i32, -1), null);
            }
        }
        int i33 = R.styleable.TextInputLayout_endIconMode;
        if (f1Var.o(i33)) {
            setEndIconMode(f1Var.j(i33, 0));
            int i34 = R.styleable.TextInputLayout_endIconContentDescription;
            if (f1Var.o(i34)) {
                setEndIconContentDescription(f1Var.n(i34));
            }
            setEndIconCheckable(f1Var.a(R.styleable.TextInputLayout_endIconCheckable, true));
        } else if (f1Var.o(i30)) {
            int i35 = R.styleable.TextInputLayout_passwordToggleTint;
            if (f1Var.o(i35)) {
                this.f5493n0 = j6.c.b(context2, f1Var, i35);
            }
            int i36 = R.styleable.TextInputLayout_passwordToggleTintMode;
            if (f1Var.o(i36)) {
                this.f5495o0 = s.c(f1Var.j(i36, -1), null);
            }
            setEndIconMode(f1Var.a(i30, false) ? 1 : 0);
            setEndIconContentDescription(f1Var.n(R.styleable.TextInputLayout_passwordToggleContentDescription));
        }
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        a0.g.f(appCompatTextView, 1);
        setErrorContentDescription(charSequenceN);
        setCounterOverflowTextAppearance(this.f5510w);
        setHelperTextTextAppearance(iL2);
        setErrorTextAppearance(iL);
        setCounterTextAppearance(this.f5512x);
        setPlaceholderText(charSequenceN3);
        setPlaceholderTextAppearance(iL3);
        setSuffixTextAppearance(iL4);
        int i37 = R.styleable.TextInputLayout_errorTextColor;
        if (f1Var.o(i37)) {
            setErrorTextColor(f1Var.c(i37));
        }
        int i38 = R.styleable.TextInputLayout_helperTextTextColor;
        if (f1Var.o(i38)) {
            setHelperTextColor(f1Var.c(i38));
        }
        int i39 = R.styleable.TextInputLayout_hintTextColor;
        if (f1Var.o(i39)) {
            setHintTextColor(f1Var.c(i39));
        }
        int i40 = R.styleable.TextInputLayout_counterTextColor;
        if (f1Var.o(i40)) {
            setCounterTextColor(f1Var.c(i40));
        }
        int i41 = R.styleable.TextInputLayout_counterOverflowTextColor;
        if (f1Var.o(i41)) {
            setCounterOverflowTextColor(f1Var.c(i41));
        }
        int i42 = R.styleable.TextInputLayout_placeholderTextColor;
        if (f1Var.o(i42)) {
            setPlaceholderTextColor(f1Var.c(i42));
        }
        int i43 = R.styleable.TextInputLayout_suffixTextColor;
        if (f1Var.o(i43)) {
            setSuffixTextColor(f1Var.c(i43));
        }
        setEnabled(f1Var.a(R.styleable.TextInputLayout_android_enabled, true));
        f1Var.r();
        a0.d.s(this, 2);
        int i44 = Build.VERSION.SDK_INT;
        if (i44 >= 26 && i44 >= 26) {
            a0.l.l(this, 1);
        }
        frameLayout2.addView(checkableImageButton2);
        linearLayout.addView(appCompatTextView);
        linearLayout.addView(checkableImageButton);
        linearLayout.addView(frameLayout2);
        frameLayout.addView(pVar);
        frameLayout.addView(linearLayout);
        addView(frameLayout);
        setHelperTextEnabled(zA2);
        setErrorEnabled(zA);
        setCounterEnabled(zA3);
        setHelperText(charSequenceN2);
        setSuffixText(charSequenceN4);
    }

    private q6.i getEndIconDelegate() {
        q6.i iVar = this.f5487k0.get(this.f5485j0);
        return iVar != null ? iVar : this.f5487k0.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.f5507u0.getVisibility() == 0) {
            return this.f5507u0;
        }
        if (i() && k()) {
            return this.f5489l0;
        }
        return null;
    }

    public static void o(ViewGroup viewGroup, boolean z10) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z10);
            if (childAt instanceof ViewGroup) {
                o((ViewGroup) childAt, z10);
            }
        }
    }

    public static void q(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        boolean zA = a0.c.a(checkableImageButton);
        boolean z10 = onLongClickListener != null;
        boolean z11 = zA || z10;
        checkableImageButton.setFocusable(z11);
        checkableImageButton.setClickable(zA);
        checkableImageButton.setPressable(zA);
        checkableImageButton.setLongClickable(z10);
        a0.d.s(checkableImageButton, z11 ? 1 : 2);
    }

    private void setEditText(EditText editText) {
        if (this.f5488l != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f5485j0 != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f5488l = editText;
        int i10 = this.f5492n;
        if (i10 != -1) {
            setMinEms(i10);
        } else {
            setMinWidth(this.f5496p);
        }
        int i11 = this.f5494o;
        if (i11 != -1) {
            setMaxEms(i11);
        } else {
            setMaxWidth(this.f5498q);
        }
        m();
        setTextInputAccessibilityDelegate(new e(this));
        this.J0.q(this.f5488l.getTypeface());
        g6.e eVar = this.J0;
        float textSize = this.f5488l.getTextSize();
        if (eVar.f7718i != textSize) {
            eVar.f7718i = textSize;
            eVar.k(false);
        }
        g6.e eVar2 = this.J0;
        float letterSpacing = this.f5488l.getLetterSpacing();
        if (eVar2.U != letterSpacing) {
            eVar2.U = letterSpacing;
            eVar2.k(false);
        }
        int gravity = this.f5488l.getGravity();
        this.J0.m((gravity & (-113)) | 48);
        g6.e eVar3 = this.J0;
        if (eVar3.f7716g != gravity) {
            eVar3.f7716g = gravity;
            eVar3.k(false);
        }
        this.f5488l.addTextChangedListener(new a());
        if (this.f5513x0 == null) {
            this.f5513x0 = this.f5488l.getHintTextColors();
        }
        if (this.J) {
            if (TextUtils.isEmpty(this.K)) {
                CharSequence hint = this.f5488l.getHint();
                this.f5490m = hint;
                setHint(hint);
                this.f5488l.setHint((CharSequence) null);
            }
            this.L = true;
        }
        if (this.f5508v != null) {
            t(this.f5488l.getText().length());
        }
        w();
        this.f5500r.b();
        this.f5482i.bringToFront();
        this.f5484j.bringToFront();
        this.f5486k.bringToFront();
        this.f5507u0.bringToFront();
        Iterator<f> it = this.f5483i0.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
        D();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        A(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.K)) {
            return;
        }
        this.K = charSequence;
        g6.e eVar = this.J0;
        if (charSequence == null || !TextUtils.equals(eVar.A, charSequence)) {
            eVar.A = charSequence;
            eVar.B = null;
            Bitmap bitmap = eVar.D;
            if (bitmap != null) {
                bitmap.recycle();
                eVar.D = null;
            }
            eVar.k(false);
        }
        if (this.I0) {
            return;
        }
        n();
    }

    private void setPlaceholderTextEnabled(boolean z10) {
        if (this.f5516z == z10) {
            return;
        }
        if (z10) {
            AppCompatTextView appCompatTextView = this.A;
            if (appCompatTextView != null) {
                this.f5480h.addView(appCompatTextView);
                this.A.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.A;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.A = null;
        }
        this.f5516z = z10;
    }

    public final void A(boolean z10, boolean z11) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f5488l;
        boolean z12 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f5488l;
        boolean z13 = editText2 != null && editText2.hasFocus();
        boolean zE = this.f5500r.e();
        ColorStateList colorStateList2 = this.f5513x0;
        if (colorStateList2 != null) {
            this.J0.l(colorStateList2);
            g6.e eVar = this.J0;
            ColorStateList colorStateList3 = this.f5513x0;
            if (eVar.f7720k != colorStateList3) {
                eVar.f7720k = colorStateList3;
                eVar.k(false);
            }
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList4 = this.f5513x0;
            int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(new int[]{-16842910}, this.H0) : this.H0;
            this.J0.l(ColorStateList.valueOf(colorForState));
            g6.e eVar2 = this.J0;
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(colorForState);
            if (eVar2.f7720k != colorStateListValueOf) {
                eVar2.f7720k = colorStateListValueOf;
                eVar2.k(false);
            }
        } else if (zE) {
            g6.e eVar3 = this.J0;
            AppCompatTextView appCompatTextView2 = this.f5500r.f13669l;
            eVar3.l(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.f5506u && (appCompatTextView = this.f5508v) != null) {
            this.J0.l(appCompatTextView.getTextColors());
        } else if (z13 && (colorStateList = this.f5515y0) != null) {
            this.J0.l(colorStateList);
        }
        if (z12 || !this.K0 || (isEnabled() && z13)) {
            if (z11 || this.I0) {
                ValueAnimator valueAnimator = this.M0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.M0.cancel();
                }
                if (z10 && this.L0) {
                    c(1.0f);
                } else {
                    this.J0.o(1.0f);
                }
                this.I0 = false;
                if (f()) {
                    n();
                }
                EditText editText3 = this.f5488l;
                B(editText3 == null ? 0 : editText3.getText().length());
                p pVar = this.f5482i;
                pVar.f13697o = false;
                pVar.g();
                E();
                return;
            }
            return;
        }
        if (z11 || !this.I0) {
            ValueAnimator valueAnimator2 = this.M0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.M0.cancel();
            }
            if (z10 && this.L0) {
                c(0.0f);
            } else {
                this.J0.o(0.0f);
            }
            if (f() && (!((q6.e) this.M).G.isEmpty()) && f()) {
                ((q6.e) this.M).x(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.I0 = true;
            j();
            p pVar2 = this.f5482i;
            pVar2.f13697o = true;
            pVar2.g();
            E();
        }
    }

    public final void B(int i10) {
        if (i10 != 0 || this.I0) {
            j();
            return;
        }
        if (this.A == null || !this.f5516z || TextUtils.isEmpty(this.f5514y)) {
            return;
        }
        this.A.setText(this.f5514y);
        androidx.transition.h.a(this.f5480h, this.D);
        this.A.setVisibility(0);
        this.A.bringToFront();
        announceForAccessibility(this.f5514y);
    }

    public final void C(boolean z10, boolean z11) {
        int defaultColor = this.C0.getDefaultColor();
        int colorForState = this.C0.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.C0.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z10) {
            this.f5474a0 = colorForState2;
        } else if (z11) {
            this.f5474a0 = colorForState;
        } else {
            this.f5474a0 = defaultColor;
        }
    }

    public final void D() {
        int iE;
        if (this.f5488l == null) {
            return;
        }
        if (k() || l()) {
            iE = 0;
        } else {
            EditText editText = this.f5488l;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            iE = a0.e.e(editText);
        }
        AppCompatTextView appCompatTextView = this.I;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = this.f5488l.getPaddingTop();
        int paddingBottom = this.f5488l.getPaddingBottom();
        WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
        a0.e.k(appCompatTextView, dimensionPixelSize, paddingTop, iE, paddingBottom);
    }

    public final void E() {
        int visibility = this.I.getVisibility();
        int i10 = (this.H == null || this.I0) ? 8 : 0;
        if (visibility != i10) {
            getEndIconDelegate().c(i10 == 0);
        }
        x();
        this.I.setVisibility(i10);
        v();
    }

    public final void F() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.M == null || this.S == 0) {
            return;
        }
        boolean z10 = false;
        boolean z11 = isFocused() || ((editText2 = this.f5488l) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f5488l) != null && editText.isHovered())) {
            z10 = true;
        }
        if (!isEnabled()) {
            this.f5474a0 = this.H0;
        } else if (this.f5500r.e()) {
            if (this.C0 != null) {
                C(z11, z10);
            } else {
                this.f5474a0 = this.f5500r.g();
            }
        } else if (!this.f5506u || (appCompatTextView = this.f5508v) == null) {
            if (z11) {
                this.f5474a0 = this.B0;
            } else if (z10) {
                this.f5474a0 = this.A0;
            } else {
                this.f5474a0 = this.f5517z0;
            }
        } else if (this.C0 != null) {
            C(z11, z10);
        } else {
            this.f5474a0 = appCompatTextView.getCurrentTextColor();
        }
        y();
        j.c(this, this.f5507u0, this.f5509v0);
        p pVar = this.f5482i;
        j.c(pVar.f13690h, pVar.f13693k, pVar.f13694l);
        p();
        q6.i endIconDelegate = getEndIconDelegate();
        Objects.requireNonNull(endIconDelegate);
        if (endIconDelegate instanceof com.google.android.material.textfield.b) {
            if (!this.f5500r.e() || getEndIconDrawable() == null) {
                j.a(this, this.f5489l0, this.f5493n0, this.f5495o0);
            } else {
                Drawable drawableMutate = getEndIconDrawable().mutate();
                b0.a.b.g(drawableMutate, this.f5500r.g());
                this.f5489l0.setImageDrawable(drawableMutate);
            }
        }
        if (this.S == 2) {
            int i10 = this.U;
            if (z11 && isEnabled()) {
                this.U = this.W;
            } else {
                this.U = this.V;
            }
            if (this.U != i10 && f() && !this.I0) {
                if (f()) {
                    ((q6.e) this.M).x(0.0f, 0.0f, 0.0f, 0.0f);
                }
                n();
            }
        }
        if (this.S == 1) {
            if (!isEnabled()) {
                this.f5475b0 = this.E0;
            } else if (z10 && !z11) {
                this.f5475b0 = this.G0;
            } else if (z11) {
                this.f5475b0 = this.F0;
            } else {
                this.f5475b0 = this.D0;
            }
        }
        d();
    }

    public final void a(f fVar) {
        this.f5483i0.add(fVar);
        if (this.f5488l != null) {
            fVar.a(this);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f5480h.addView(view, layoutParams2);
        this.f5480h.setLayoutParams(layoutParams);
        z();
        setEditText((EditText) view);
    }

    public final void b(g gVar) {
        this.f5491m0.add(gVar);
    }

    public final void c(float f10) {
        if (this.J0.f7712c == f10) {
            return;
        }
        if (this.M0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.M0 = valueAnimator;
            valueAnimator.setInterpolator(p5.a.f13253b);
            this.M0.setDuration(167L);
            this.M0.addUpdateListener(new d());
        }
        this.M0.setFloatValues(this.J0.f7712c, f10);
        this.M0.start();
    }

    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    public final void d() {
        boolean z10;
        m6.f fVar = this.M;
        if (fVar == null) {
            return;
        }
        i iVar = fVar.f10495h.f10515a;
        i iVar2 = this.P;
        boolean z11 = false;
        if (iVar != iVar2) {
            fVar.setShapeAppearanceModel(iVar2);
            if (this.f5485j0 == 3 && this.S == 2) {
                com.google.android.material.textfield.b bVar = (com.google.android.material.textfield.b) this.f5487k0.get(3);
                AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) this.f5488l;
                Objects.requireNonNull(bVar);
                if (!(autoCompleteTextView.getKeyListener() != null) && bVar.f13654a.getBoxBackgroundMode() == 2 && (autoCompleteTextView.getBackground() instanceof LayerDrawable)) {
                    bVar.i(autoCompleteTextView);
                }
            }
        }
        if (this.S != 2) {
            z10 = false;
        } else {
            if (this.U > -1 && this.f5474a0 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (z10) {
            this.M.q(this.U, this.f5474a0);
        }
        int iB = this.f5475b0;
        if (this.S == 1) {
            iB = a0.a.b(this.f5475b0, a6.a.a(getContext(), R.attr.colorSurface, 0));
        }
        this.f5475b0 = iB;
        this.M.o(ColorStateList.valueOf(iB));
        if (this.f5485j0 == 3) {
            this.f5488l.getBackground().invalidateSelf();
        }
        m6.f fVar2 = this.N;
        if (fVar2 != null && this.O != null) {
            if (this.U > -1 && this.f5474a0 != 0) {
                z11 = true;
            }
            if (z11) {
                fVar2.o(this.f5488l.isFocused() ? ColorStateList.valueOf(this.f5517z0) : ColorStateList.valueOf(this.f5474a0));
                this.O.o(ColorStateList.valueOf(this.f5474a0));
            }
            invalidate();
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i10) {
        EditText editText = this.f5488l;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.f5490m != null) {
            boolean z10 = this.L;
            this.L = false;
            CharSequence hint = editText.getHint();
            this.f5488l.setHint(this.f5490m);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.f5488l.setHint(hint);
                this.L = z10;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        viewStructure.setChildCount(this.f5480h.getChildCount());
        for (int i11 = 0; i11 < this.f5480h.getChildCount(); i11++) {
            View childAt = this.f5480h.getChildAt(i11);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i10);
            if (childAt == this.f5488l) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.O0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.O0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        m6.f fVar;
        super.draw(canvas);
        if (this.J) {
            g6.e eVar = this.J0;
            Objects.requireNonNull(eVar);
            int iSave = canvas.save();
            if (eVar.B != null && eVar.f7711b) {
                eVar.L.setTextSize(eVar.F);
                float f10 = eVar.f7726q;
                float f11 = eVar.f7727r;
                float f12 = eVar.E;
                if (f12 != 1.0f) {
                    canvas.scale(f12, f12, f10, f11);
                }
                canvas.translate(f10, f11);
                eVar.W.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        if (this.O == null || (fVar = this.N) == null) {
            return;
        }
        fVar.draw(canvas);
        if (this.f5488l.isFocused()) {
            Rect bounds = this.O.getBounds();
            Rect bounds2 = this.N.getBounds();
            float f13 = this.J0.f7712c;
            int iCenterX = bounds2.centerX();
            bounds.left = p5.a.b(iCenterX, bounds2.left, f13);
            bounds.right = p5.a.b(iCenterX, bounds2.right, f13);
            this.O.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z10;
        ColorStateList colorStateList;
        boolean z11;
        if (this.N0) {
            return;
        }
        this.N0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        g6.e eVar = this.J0;
        if (eVar != null) {
            eVar.J = drawableState;
            ColorStateList colorStateList2 = eVar.f7721l;
            if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = eVar.f7720k) != null && colorStateList.isStateful())) {
                eVar.k(false);
                z11 = true;
            } else {
                z11 = false;
            }
            z10 = z11 | false;
        } else {
            z10 = false;
        }
        if (this.f5488l != null) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            A(a0.g.c(this) && isEnabled(), false);
        }
        w();
        F();
        if (z10) {
            invalidate();
        }
        this.N0 = false;
    }

    public final int e() {
        float fE;
        if (!this.J) {
            return 0;
        }
        int i10 = this.S;
        if (i10 == 0) {
            fE = this.J0.e();
        } else {
            if (i10 != 2) {
                return 0;
            }
            fE = this.J0.e() / 2.0f;
        }
        return (int) fE;
    }

    public final boolean f() {
        return this.J && !TextUtils.isEmpty(this.K) && (this.M instanceof q6.e);
    }

    public final int g(int i10, boolean z10) {
        int compoundPaddingLeft = this.f5488l.getCompoundPaddingLeft() + i10;
        return (getPrefixText() == null || z10) ? compoundPaddingLeft : (compoundPaddingLeft - getPrefixTextView().getMeasuredWidth()) + getPrefixTextView().getPaddingLeft();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f5488l;
        if (editText == null) {
            return super.getBaseline();
        }
        return e() + getPaddingTop() + editText.getBaseline();
    }

    public m6.f getBoxBackground() {
        int i10 = this.S;
        if (i10 == 1 || i10 == 2) {
            return this.M;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f5475b0;
    }

    public int getBoxBackgroundMode() {
        return this.S;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.T;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return s.b(this) ? this.P.f10545h.a(this.f5477e0) : this.P.f10544g.a(this.f5477e0);
    }

    public float getBoxCornerRadiusBottomStart() {
        return s.b(this) ? this.P.f10544g.a(this.f5477e0) : this.P.f10545h.a(this.f5477e0);
    }

    public float getBoxCornerRadiusTopEnd() {
        return s.b(this) ? this.P.f10542e.a(this.f5477e0) : this.P.f10543f.a(this.f5477e0);
    }

    public float getBoxCornerRadiusTopStart() {
        return s.b(this) ? this.P.f10543f.a(this.f5477e0) : this.P.f10542e.a(this.f5477e0);
    }

    public int getBoxStrokeColor() {
        return this.B0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.C0;
    }

    public int getBoxStrokeWidth() {
        return this.V;
    }

    public int getBoxStrokeWidthFocused() {
        return this.W;
    }

    public int getCounterMaxLength() {
        return this.f5504t;
    }

    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.f5502s && this.f5506u && (appCompatTextView = this.f5508v) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.F;
    }

    public ColorStateList getCounterTextColor() {
        return this.F;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f5513x0;
    }

    public EditText getEditText() {
        return this.f5488l;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f5489l0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f5489l0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f5485j0;
    }

    public CheckableImageButton getEndIconView() {
        return this.f5489l0;
    }

    public CharSequence getError() {
        k kVar = this.f5500r;
        if (kVar.f13668k) {
            return kVar.f13667j;
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f5500r.f13670m;
    }

    public int getErrorCurrentTextColors() {
        return this.f5500r.g();
    }

    public Drawable getErrorIconDrawable() {
        return this.f5507u0.getDrawable();
    }

    public final int getErrorTextCurrentColor() {
        return this.f5500r.g();
    }

    public CharSequence getHelperText() {
        k kVar = this.f5500r;
        if (kVar.f13674q) {
            return kVar.f13673p;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.f5500r.f13675r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.J) {
            return this.K;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.J0.e();
    }

    public final int getHintCurrentCollapsedTextColor() {
        return this.J0.f();
    }

    public ColorStateList getHintTextColor() {
        return this.f5515y0;
    }

    public int getMaxEms() {
        return this.f5494o;
    }

    public int getMaxWidth() {
        return this.f5498q;
    }

    public int getMinEms() {
        return this.f5492n;
    }

    public int getMinWidth() {
        return this.f5496p;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f5489l0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f5489l0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f5516z) {
            return this.f5514y;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.C;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.B;
    }

    public CharSequence getPrefixText() {
        return this.f5482i.f13692j;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f5482i.f13691i.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f5482i.f13691i;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f5482i.f13693k.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f5482i.f13693k.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.H;
    }

    public ColorStateList getSuffixTextColor() {
        return this.I.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.I;
    }

    public Typeface getTypeface() {
        return this.f5478f0;
    }

    public final int h(int i10, boolean z10) {
        int compoundPaddingRight = i10 - this.f5488l.getCompoundPaddingRight();
        return (getPrefixText() == null || !z10) ? compoundPaddingRight : compoundPaddingRight + (getPrefixTextView().getMeasuredWidth() - getPrefixTextView().getPaddingRight());
    }

    public final boolean i() {
        return this.f5485j0 != 0;
    }

    public final void j() {
        AppCompatTextView appCompatTextView = this.A;
        if (appCompatTextView == null || !this.f5516z) {
            return;
        }
        appCompatTextView.setText((CharSequence) null);
        androidx.transition.h.a(this.f5480h, this.E);
        this.A.setVisibility(4);
    }

    public final boolean k() {
        return this.f5486k.getVisibility() == 0 && this.f5489l0.getVisibility() == 0;
    }

    public final boolean l() {
        return this.f5507u0.getVisibility() == 0;
    }

    public final void m() {
        int i10 = this.S;
        if (i10 == 0) {
            this.M = null;
            this.N = null;
            this.O = null;
        } else if (i10 == 1) {
            this.M = new m6.f(this.P);
            this.N = new m6.f();
            this.O = new m6.f();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(androidx.recyclerview.widget.s.a(new StringBuilder(), this.S, " is illegal; only @BoxBackgroundMode constants are supported."));
            }
            if (!this.J || (this.M instanceof q6.e)) {
                this.M = new m6.f(this.P);
            } else {
                this.M = new q6.e(this.P);
            }
            this.N = null;
            this.O = null;
        }
        EditText editText = this.f5488l;
        if ((editText == null || this.M == null || editText.getBackground() != null || this.S == 0) ? false : true) {
            EditText editText2 = this.f5488l;
            m6.f fVar = this.M;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.q(editText2, fVar);
        }
        F();
        if (this.S == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.T = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (j6.c.d(getContext())) {
                this.T = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f5488l != null && this.S == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText3 = this.f5488l;
                WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
                a0.e.k(editText3, a0.e.f(editText3), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), a0.e.e(this.f5488l), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (j6.c.d(getContext())) {
                EditText editText4 = this.f5488l;
                WeakHashMap<View, g0> weakHashMap3 = a0.f9147a;
                a0.e.k(editText4, a0.e.f(editText4), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), a0.e.e(this.f5488l), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.S != 0) {
            z();
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0085  */
    public final void n() {
        float f10;
        float f11;
        float f12;
        float f13;
        int i10;
        int i11;
        if (f()) {
            RectF rectF = this.f5477e0;
            g6.e eVar = this.J0;
            int width = this.f5488l.getWidth();
            int gravity = this.f5488l.getGravity();
            boolean zB = eVar.b(eVar.A);
            eVar.C = zB;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    Rect rect = eVar.f7714e;
                    if (zB) {
                        i11 = rect.left;
                        f12 = i11;
                    } else {
                        f10 = rect.right;
                        f11 = eVar.X;
                    }
                } else {
                    Rect rect2 = eVar.f7714e;
                    if (zB) {
                        f10 = rect2.right;
                        f11 = eVar.X;
                    } else {
                        i11 = rect2.left;
                        f12 = i11;
                    }
                }
                rectF.left = f12;
                Rect rect3 = eVar.f7714e;
                float f14 = rect3.top;
                rectF.top = f14;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f13 = (width / 2.0f) + (eVar.X / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (zB) {
                        f13 = eVar.X + f12;
                    } else {
                        i10 = rect3.right;
                        f13 = i10;
                    }
                } else if (zB) {
                    i10 = rect3.right;
                    f13 = i10;
                } else {
                    f13 = eVar.X + f12;
                }
                rectF.right = f13;
                rectF.bottom = eVar.e() + f14;
                float f15 = rectF.left;
                float f16 = this.R;
                rectF.left = f15 - f16;
                rectF.right += f16;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.U);
                q6.e eVar2 = (q6.e) this.M;
                Objects.requireNonNull(eVar2);
                eVar2.x(rectF.left, rectF.top, rectF.right, rectF.bottom);
            }
            f10 = width / 2.0f;
            f11 = eVar.X / 2.0f;
            f12 = f10 - f11;
            rectF.left = f12;
            Rect rect4 = eVar.f7714e;
            float f17 = rect4.top;
            rectF.top = f17;
            if (gravity != 17) {
                f13 = (width / 2.0f) + (eVar.X / 2.0f);
            } else {
                f13 = (width / 2.0f) + (eVar.X / 2.0f);
            }
            rectF.right = f13;
            rectF.bottom = eVar.e() + f17;
            float f18 = rectF.left;
            float f19 = this.R;
            rectF.left = f18 - f19;
            rectF.right += f19;
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.U);
            q6.e eVar3 = (q6.e) this.M;
            Objects.requireNonNull(eVar3);
            eVar3.x(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.J0.i(configuration);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        EditText editText = this.f5488l;
        if (editText != null) {
            Rect rect = this.f5476c0;
            g6.f.a(this, editText, rect);
            m6.f fVar = this.N;
            if (fVar != null) {
                int i14 = rect.bottom;
                fVar.setBounds(rect.left, i14 - this.V, rect.right, i14);
            }
            m6.f fVar2 = this.O;
            if (fVar2 != null) {
                int i15 = rect.bottom;
                fVar2.setBounds(rect.left, i15 - this.W, rect.right, i15);
            }
            if (this.J) {
                g6.e eVar = this.J0;
                float textSize = this.f5488l.getTextSize();
                if (eVar.f7718i != textSize) {
                    eVar.f7718i = textSize;
                    eVar.k(false);
                }
                int gravity = this.f5488l.getGravity();
                this.J0.m((gravity & (-113)) | 48);
                g6.e eVar2 = this.J0;
                if (eVar2.f7716g != gravity) {
                    eVar2.f7716g = gravity;
                    eVar2.k(false);
                }
                g6.e eVar3 = this.J0;
                if (this.f5488l == null) {
                    throw new IllegalStateException();
                }
                Rect rect2 = this.d0;
                boolean zB = s.b(this);
                rect2.bottom = rect.bottom;
                int i16 = this.S;
                if (i16 == 1) {
                    rect2.left = g(rect.left, zB);
                    rect2.top = rect.top + this.T;
                    rect2.right = h(rect.right, zB);
                } else if (i16 != 2) {
                    rect2.left = g(rect.left, zB);
                    rect2.top = getPaddingTop();
                    rect2.right = h(rect.right, zB);
                } else {
                    rect2.left = this.f5488l.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - e();
                    rect2.right = rect.right - this.f5488l.getPaddingRight();
                }
                Objects.requireNonNull(eVar3);
                int i17 = rect2.left;
                int i18 = rect2.top;
                int i19 = rect2.right;
                int i20 = rect2.bottom;
                Rect rect3 = eVar3.f7714e;
                if (!(rect3.left == i17 && rect3.top == i18 && rect3.right == i19 && rect3.bottom == i20)) {
                    rect3.set(i17, i18, i19, i20);
                    eVar3.K = true;
                    eVar3.j();
                }
                g6.e eVar4 = this.J0;
                if (this.f5488l == null) {
                    throw new IllegalStateException();
                }
                Rect rect4 = this.d0;
                TextPaint textPaint = eVar4.M;
                textPaint.setTextSize(eVar4.f7718i);
                textPaint.setTypeface(eVar4.f7731v);
                textPaint.setLetterSpacing(eVar4.U);
                float f10 = -eVar4.M.ascent();
                rect4.left = this.f5488l.getCompoundPaddingLeft() + rect.left;
                rect4.top = this.S == 1 && this.f5488l.getMinLines() <= 1 ? (int) (rect.centerY() - (f10 / 2.0f)) : rect.top + this.f5488l.getCompoundPaddingTop();
                rect4.right = rect.right - this.f5488l.getCompoundPaddingRight();
                rect4.bottom = this.S == 1 && this.f5488l.getMinLines() <= 1 ? (int) (rect4.top + f10) : rect.bottom - this.f5488l.getCompoundPaddingBottom();
                Objects.requireNonNull(eVar4);
                int i21 = rect4.left;
                int i22 = rect4.top;
                int i23 = rect4.right;
                int i24 = rect4.bottom;
                Rect rect5 = eVar4.f7713d;
                if (!(rect5.left == i21 && rect5.top == i22 && rect5.right == i23 && rect5.bottom == i24)) {
                    rect5.set(i21, i22, i23, i24);
                    eVar4.K = true;
                    eVar4.j();
                }
                this.J0.k(false);
                if (!f() || this.I0) {
                    return;
                }
                n();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        boolean z10;
        EditText editText;
        int iMax;
        super.onMeasure(i10, i11);
        if (this.f5488l != null && this.f5488l.getMeasuredHeight() < (iMax = Math.max(this.f5484j.getMeasuredHeight(), this.f5482i.getMeasuredHeight()))) {
            this.f5488l.setMinimumHeight(iMax);
            z10 = true;
        } else {
            z10 = false;
        }
        boolean zV = v();
        if (z10 || zV) {
            this.f5488l.post(new c());
        }
        if (this.A != null && (editText = this.f5488l) != null) {
            this.A.setGravity(editText.getGravity());
            this.A.setPadding(this.f5488l.getCompoundPaddingLeft(), this.f5488l.getCompoundPaddingTop(), this.f5488l.getCompoundPaddingRight(), this.f5488l.getCompoundPaddingBottom());
        }
        D();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.f12620h);
        setError(hVar.f5523j);
        if (hVar.f5524k) {
            this.f5489l0.post(new b());
        }
        setHint(hVar.f5525l);
        setHelperText(hVar.f5526m);
        setPlaceholderText(hVar.f5527n);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        boolean z10 = false;
        boolean z11 = i10 == 1;
        boolean z12 = this.Q;
        if (z11 != z12) {
            if (z11 && !z12) {
                z10 = true;
            }
            float fA = this.P.f10542e.a(this.f5477e0);
            float fA2 = this.P.f10543f.a(this.f5477e0);
            float fA3 = this.P.f10545h.a(this.f5477e0);
            float fA4 = this.P.f10544g.a(this.f5477e0);
            float f10 = z10 ? fA : fA2;
            if (z10) {
                fA = fA2;
            }
            float f11 = z10 ? fA3 : fA4;
            if (z10) {
                fA3 = fA4;
            }
            boolean zB = s.b(this);
            this.Q = zB;
            float f12 = zB ? fA : f10;
            if (!zB) {
                f10 = fA;
            }
            float f13 = zB ? fA3 : f11;
            if (!zB) {
                f11 = fA3;
            }
            m6.f fVar = this.M;
            if (fVar != null && fVar.k() == f12) {
                m6.f fVar2 = this.M;
                if (fVar2.f10495h.f10515a.f10543f.a(fVar2.h()) == f10) {
                    m6.f fVar3 = this.M;
                    if (fVar3.f10495h.f10515a.f10545h.a(fVar3.h()) == f13) {
                        m6.f fVar4 = this.M;
                        if (fVar4.f10495h.f10515a.f10544g.a(fVar4.h()) == f11) {
                            return;
                        }
                    }
                }
            }
            i iVar = this.P;
            Objects.requireNonNull(iVar);
            i.a aVar = new i.a(iVar);
            aVar.e(f12);
            aVar.f(f10);
            aVar.c(f13);
            aVar.d(f11);
            this.P = aVar.a();
            d();
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        h hVar = new h(super.onSaveInstanceState());
        if (this.f5500r.e()) {
            hVar.f5523j = getError();
        }
        hVar.f5524k = i() && this.f5489l0.isChecked();
        hVar.f5525l = getHint();
        hVar.f5526m = getHelperText();
        hVar.f5527n = getPlaceholderText();
        return hVar;
    }

    public final void p() {
        j.c(this, this.f5489l0, this.f5493n0);
    }

    public final void r(TextView textView, int i10) {
        boolean z10 = true;
        try {
            textView.setTextAppearance(i10);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                z10 = false;
            }
        } catch (Exception unused) {
        }
        if (z10) {
            textView.setTextAppearance(R.style.TextAppearance_AppCompat_Caption);
            Context context = getContext();
            int i11 = R.color.design_error;
            Object obj = y.a.f18143a;
            textView.setTextColor(y.a.c.a(context, i11));
        }
    }

    public final void s() {
        if (this.f5508v != null) {
            EditText editText = this.f5488l;
            t(editText == null ? 0 : editText.getText().length());
        }
    }

    public void setBoxBackgroundColor(int i10) {
        if (this.f5475b0 != i10) {
            this.f5475b0 = i10;
            this.D0 = i10;
            this.F0 = i10;
            this.G0 = i10;
            d();
        }
    }

    public void setBoxBackgroundColorResource(int i10) {
        Context context = getContext();
        Object obj = y.a.f18143a;
        setBoxBackgroundColor(y.a.c.a(context, i10));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.D0 = defaultColor;
        this.f5475b0 = defaultColor;
        this.E0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.F0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.G0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        d();
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.S) {
            return;
        }
        this.S = i10;
        if (this.f5488l != null) {
            m();
        }
    }

    public void setBoxCollapsedPaddingTop(int i10) {
        this.T = i10;
    }

    public void setBoxStrokeColor(int i10) {
        if (this.B0 != i10) {
            this.B0 = i10;
            F();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f5517z0 = colorStateList.getDefaultColor();
            this.H0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.A0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.B0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.B0 != colorStateList.getDefaultColor()) {
            this.B0 = colorStateList.getDefaultColor();
        }
        F();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.C0 != colorStateList) {
            this.C0 = colorStateList;
            F();
        }
    }

    public void setBoxStrokeWidth(int i10) {
        this.V = i10;
        F();
    }

    public void setBoxStrokeWidthFocused(int i10) {
        this.W = i10;
        F();
    }

    public void setBoxStrokeWidthFocusedResource(int i10) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(int i10) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setCounterEnabled(boolean z10) {
        if (this.f5502s != z10) {
            if (z10) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.f5508v = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.f5478f0;
                if (typeface != null) {
                    this.f5508v.setTypeface(typeface);
                }
                this.f5508v.setMaxLines(1);
                this.f5500r.a(this.f5508v, 2);
                j0.h.h((ViewGroup.MarginLayoutParams) this.f5508v.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                u();
                s();
            } else {
                this.f5500r.j(this.f5508v, 2);
                this.f5508v = null;
            }
            this.f5502s = z10;
        }
    }

    public void setCounterMaxLength(int i10) {
        if (this.f5504t != i10) {
            if (i10 > 0) {
                this.f5504t = i10;
            } else {
                this.f5504t = -1;
            }
            if (this.f5502s) {
                s();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.f5510w != i10) {
            this.f5510w = i10;
            u();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.G != colorStateList) {
            this.G = colorStateList;
            u();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.f5512x != i10) {
            this.f5512x = i10;
            u();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            u();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f5513x0 = colorStateList;
        this.f5515y0 = colorStateList;
        if (this.f5488l != null) {
            A(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        o(this, z10);
        super.setEnabled(z10);
    }

    public void setEndIconActivated(boolean z10) {
        this.f5489l0.setActivated(z10);
    }

    public void setEndIconCheckable(boolean z10) {
        this.f5489l0.setCheckable(z10);
    }

    public void setEndIconContentDescription(int i10) {
        setEndIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setEndIconDrawable(int i10) {
        setEndIconDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    public void setEndIconMode(int i10) {
        int i11 = this.f5485j0;
        if (i11 == i10) {
            return;
        }
        this.f5485j0 = i10;
        Iterator<g> it = this.f5491m0.iterator();
        while (it.hasNext()) {
            it.next().a(this, i11);
        }
        setEndIconVisible(i10 != 0);
        if (getEndIconDelegate().b(this.S)) {
            getEndIconDelegate().a();
            j.a(this, this.f5489l0, this.f5493n0, this.f5495o0);
        } else {
            StringBuilder sbC = a0.b.c("The current box background mode ");
            sbC.append(this.S);
            sbC.append(" is not supported by the end icon mode ");
            sbC.append(i10);
            throw new IllegalStateException(sbC.toString());
        }
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f5489l0;
        View.OnLongClickListener onLongClickListener = this.f5503s0;
        checkableImageButton.setOnClickListener(onClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f5503s0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f5489l0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f5493n0 != colorStateList) {
            this.f5493n0 = colorStateList;
            j.a(this, this.f5489l0, colorStateList, this.f5495o0);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f5495o0 != mode) {
            this.f5495o0 = mode;
            j.a(this, this.f5489l0, this.f5493n0, mode);
        }
    }

    public void setEndIconVisible(boolean z10) {
        if (k() != z10) {
            this.f5489l0.setVisibility(z10 ? 0 : 8);
            x();
            D();
            v();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.f5500r.f13668k) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f5500r.i();
            return;
        }
        k kVar = this.f5500r;
        kVar.c();
        kVar.f13667j = charSequence;
        kVar.f13669l.setText(charSequence);
        int i10 = kVar.f13665h;
        if (i10 != 1) {
            kVar.f13666i = 1;
        }
        kVar.l(i10, kVar.f13666i, kVar.k(kVar.f13669l, charSequence));
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        k kVar = this.f5500r;
        kVar.f13670m = charSequence;
        AppCompatTextView appCompatTextView = kVar.f13669l;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z10) {
        k kVar = this.f5500r;
        if (kVar.f13668k == z10) {
            return;
        }
        kVar.c();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(kVar.f13658a, null);
            kVar.f13669l = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            kVar.f13669l.setTextAlignment(5);
            Typeface typeface = kVar.f13678u;
            if (typeface != null) {
                kVar.f13669l.setTypeface(typeface);
            }
            int i10 = kVar.f13671n;
            kVar.f13671n = i10;
            AppCompatTextView appCompatTextView2 = kVar.f13669l;
            if (appCompatTextView2 != null) {
                kVar.f13659b.r(appCompatTextView2, i10);
            }
            ColorStateList colorStateList = kVar.f13672o;
            kVar.f13672o = colorStateList;
            AppCompatTextView appCompatTextView3 = kVar.f13669l;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = kVar.f13670m;
            kVar.f13670m = charSequence;
            AppCompatTextView appCompatTextView4 = kVar.f13669l;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            kVar.f13669l.setVisibility(4);
            AppCompatTextView appCompatTextView5 = kVar.f13669l;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.g.f(appCompatTextView5, 1);
            kVar.a(kVar.f13669l, 0);
        } else {
            kVar.i();
            kVar.j(kVar.f13669l, 0);
            kVar.f13669l = null;
            kVar.f13659b.w();
            kVar.f13659b.F();
        }
        kVar.f13668k = z10;
    }

    public void setErrorIconDrawable(int i10) {
        setErrorIconDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
        j.c(this, this.f5507u0, this.f5509v0);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f5507u0;
        View.OnLongClickListener onLongClickListener = this.f5505t0;
        checkableImageButton.setOnClickListener(onClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f5505t0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f5507u0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        if (this.f5509v0 != colorStateList) {
            this.f5509v0 = colorStateList;
            j.a(this, this.f5507u0, colorStateList, this.f5511w0);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        if (this.f5511w0 != mode) {
            this.f5511w0 = mode;
            j.a(this, this.f5507u0, this.f5509v0, mode);
        }
    }

    public void setErrorTextAppearance(int i10) {
        k kVar = this.f5500r;
        kVar.f13671n = i10;
        AppCompatTextView appCompatTextView = kVar.f13669l;
        if (appCompatTextView != null) {
            kVar.f13659b.r(appCompatTextView, i10);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        k kVar = this.f5500r;
        kVar.f13672o = colorStateList;
        AppCompatTextView appCompatTextView = kVar.f13669l;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z10) {
        if (this.K0 != z10) {
            this.K0 = z10;
            A(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (this.f5500r.f13674q) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!this.f5500r.f13674q) {
            setHelperTextEnabled(true);
        }
        k kVar = this.f5500r;
        kVar.c();
        kVar.f13673p = charSequence;
        kVar.f13675r.setText(charSequence);
        int i10 = kVar.f13665h;
        if (i10 != 2) {
            kVar.f13666i = 2;
        }
        kVar.l(i10, kVar.f13666i, kVar.k(kVar.f13675r, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        k kVar = this.f5500r;
        kVar.f13677t = colorStateList;
        AppCompatTextView appCompatTextView = kVar.f13675r;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z10) {
        k kVar = this.f5500r;
        if (kVar.f13674q == z10) {
            return;
        }
        kVar.c();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(kVar.f13658a, null);
            kVar.f13675r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            kVar.f13675r.setTextAlignment(5);
            Typeface typeface = kVar.f13678u;
            if (typeface != null) {
                kVar.f13675r.setTypeface(typeface);
            }
            kVar.f13675r.setVisibility(4);
            AppCompatTextView appCompatTextView2 = kVar.f13675r;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.g.f(appCompatTextView2, 1);
            int i10 = kVar.f13676s;
            kVar.f13676s = i10;
            AppCompatTextView appCompatTextView3 = kVar.f13675r;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTextAppearance(i10);
            }
            ColorStateList colorStateList = kVar.f13677t;
            kVar.f13677t = colorStateList;
            AppCompatTextView appCompatTextView4 = kVar.f13675r;
            if (appCompatTextView4 != null && colorStateList != null) {
                appCompatTextView4.setTextColor(colorStateList);
            }
            kVar.a(kVar.f13675r, 1);
            kVar.f13675r.setAccessibilityDelegate(new l(kVar));
        } else {
            kVar.c();
            int i11 = kVar.f13665h;
            if (i11 == 2) {
                kVar.f13666i = 0;
            }
            kVar.l(i11, kVar.f13666i, kVar.k(kVar.f13675r, ""));
            kVar.j(kVar.f13675r, 1);
            kVar.f13675r = null;
            kVar.f13659b.w();
            kVar.f13659b.F();
        }
        kVar.f13674q = z10;
    }

    public void setHelperTextTextAppearance(int i10) {
        k kVar = this.f5500r;
        kVar.f13676s = i10;
        AppCompatTextView appCompatTextView = kVar.f13675r;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i10);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.J) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z10) {
        this.L0 = z10;
    }

    public void setHintEnabled(boolean z10) {
        if (z10 != this.J) {
            this.J = z10;
            if (z10) {
                CharSequence hint = this.f5488l.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.K)) {
                        setHint(hint);
                    }
                    this.f5488l.setHint((CharSequence) null);
                }
                this.L = true;
            } else {
                this.L = false;
                if (!TextUtils.isEmpty(this.K) && TextUtils.isEmpty(this.f5488l.getHint())) {
                    this.f5488l.setHint(this.K);
                }
                setHintInternal(null);
            }
            if (this.f5488l != null) {
                z();
            }
        }
    }

    public void setHintTextAppearance(int i10) {
        g6.e eVar = this.J0;
        j6.d dVar = new j6.d(eVar.f7710a.getContext(), i10);
        ColorStateList colorStateList = dVar.f9454j;
        if (colorStateList != null) {
            eVar.f7721l = colorStateList;
        }
        float f10 = dVar.f9455k;
        if (f10 != 0.0f) {
            eVar.f7719j = f10;
        }
        ColorStateList colorStateList2 = dVar.f9445a;
        if (colorStateList2 != null) {
            eVar.S = colorStateList2;
        }
        eVar.Q = dVar.f9449e;
        eVar.R = dVar.f9450f;
        eVar.P = dVar.f9451g;
        eVar.T = dVar.f9453i;
        j6.a aVar = eVar.f7735z;
        if (aVar != null) {
            aVar.f9444c = true;
        }
        g6.d dVar2 = new g6.d(eVar);
        dVar.a();
        eVar.f7735z = new j6.a(dVar2, dVar.f9458n);
        dVar.c(eVar.f7710a.getContext(), eVar.f7735z);
        eVar.k(false);
        this.f5515y0 = this.J0.f7721l;
        if (this.f5488l != null) {
            A(false, false);
            z();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f5515y0 != colorStateList) {
            if (this.f5513x0 == null) {
                this.J0.l(colorStateList);
            }
            this.f5515y0 = colorStateList;
            if (this.f5488l != null) {
                A(false, false);
            }
        }
    }

    public void setMaxEms(int i10) {
        this.f5494o = i10;
        EditText editText = this.f5488l;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxEms(i10);
    }

    public void setMaxWidth(int i10) {
        this.f5498q = i10;
        EditText editText = this.f5488l;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxWidth(i10);
    }

    public void setMaxWidthResource(int i10) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    public void setMinEms(int i10) {
        this.f5492n = i10;
        EditText editText = this.f5488l;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinEms(i10);
    }

    public void setMinWidth(int i10) {
        this.f5496p = i10;
        EditText editText = this.f5488l;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinWidth(i10);
    }

    public void setMinWidthResource(int i10) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i10) {
        setPasswordVisibilityToggleContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i10) {
        setPasswordVisibilityToggleDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z10) {
        if (z10 && this.f5485j0 != 1) {
            setEndIconMode(1);
        } else {
            if (z10) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f5493n0 = colorStateList;
        j.a(this, this.f5489l0, colorStateList, this.f5495o0);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f5495o0 = mode;
        j.a(this, this.f5489l0, this.f5493n0, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.A == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.A = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            AppCompatTextView appCompatTextView2 = this.A;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.s(appCompatTextView2, 2);
            androidx.transition.b bVar = new androidx.transition.b();
            bVar.f2920j = 87L;
            LinearInterpolator linearInterpolator = p5.a.f13252a;
            bVar.f2921k = linearInterpolator;
            this.D = bVar;
            bVar.f2919i = 67L;
            androidx.transition.b bVar2 = new androidx.transition.b();
            bVar2.f2920j = 87L;
            bVar2.f2921k = linearInterpolator;
            this.E = bVar2;
            setPlaceholderTextAppearance(this.C);
            setPlaceholderTextColor(this.B);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f5516z) {
                setPlaceholderTextEnabled(true);
            }
            this.f5514y = charSequence;
        }
        EditText editText = this.f5488l;
        B(editText != null ? editText.getText().length() : 0);
    }

    public void setPlaceholderTextAppearance(int i10) {
        this.C = i10;
        AppCompatTextView appCompatTextView = this.A;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i10);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            AppCompatTextView appCompatTextView = this.A;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        p pVar = this.f5482i;
        Objects.requireNonNull(pVar);
        pVar.f13692j = TextUtils.isEmpty(charSequence) ? null : charSequence;
        pVar.f13691i.setText(charSequence);
        pVar.g();
    }

    public void setPrefixTextAppearance(int i10) {
        this.f5482i.f13691i.setTextAppearance(i10);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f5482i.f13691i.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z10) {
        this.f5482i.f13693k.setCheckable(z10);
    }

    public void setStartIconContentDescription(int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconDrawable(int i10) {
        setStartIconDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        this.f5482i.c(onClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f5482i.d(onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        p pVar = this.f5482i;
        if (pVar.f13694l != colorStateList) {
            pVar.f13694l = colorStateList;
            j.a(pVar.f13690h, pVar.f13693k, colorStateList, pVar.f13695m);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        p pVar = this.f5482i;
        if (pVar.f13695m != mode) {
            pVar.f13695m = mode;
            j.a(pVar.f13690h, pVar.f13693k, pVar.f13694l, mode);
        }
    }

    public void setStartIconVisible(boolean z10) {
        this.f5482i.e(z10);
    }

    public void setSuffixText(CharSequence charSequence) {
        this.H = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.I.setText(charSequence);
        E();
    }

    public void setSuffixTextAppearance(int i10) {
        this.I.setTextAppearance(i10);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.I.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(e eVar) {
        EditText editText = this.f5488l;
        if (editText != null) {
            a0.p(editText, eVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f5478f0) {
            this.f5478f0 = typeface;
            this.J0.q(typeface);
            k kVar = this.f5500r;
            if (typeface != kVar.f13678u) {
                kVar.f13678u = typeface;
                AppCompatTextView appCompatTextView = kVar.f13669l;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = kVar.f13675r;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.f5508v;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    public final void t(int i10) {
        boolean z10 = this.f5506u;
        int i11 = this.f5504t;
        if (i11 == -1) {
            this.f5508v.setText(String.valueOf(i10));
            this.f5508v.setContentDescription(null);
            this.f5506u = false;
        } else {
            this.f5506u = i10 > i11;
            Context context = getContext();
            this.f5508v.setContentDescription(context.getString(this.f5506u ? R.string.character_counter_overflowed_content_description : R.string.character_counter_content_description, Integer.valueOf(i10), Integer.valueOf(this.f5504t)));
            if (z10 != this.f5506u) {
                u();
            }
            h0.a aVarC = h0.a.c();
            AppCompatTextView appCompatTextView = this.f5508v;
            String string = getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i10), Integer.valueOf(this.f5504t));
            appCompatTextView.setText(string != null ? ((SpannableStringBuilder) aVarC.d(string, aVarC.f8089c)).toString() : null);
        }
        if (this.f5488l == null || z10 == this.f5506u) {
            return;
        }
        A(false, false);
        F();
        w();
    }

    public final void u() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.f5508v;
        if (appCompatTextView != null) {
            r(appCompatTextView, this.f5506u ? this.f5510w : this.f5512x);
            if (!this.f5506u && (colorStateList2 = this.F) != null) {
                this.f5508v.setTextColor(colorStateList2);
            }
            if (!this.f5506u || (colorStateList = this.G) == null) {
                return;
            }
            this.f5508v.setTextColor(colorStateList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007f  */
    public final boolean v() {
        boolean z10;
        if (this.f5488l == null) {
            return false;
        }
        boolean z11 = true;
        if ((getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.f5482i.getMeasuredWidth() > 0) {
            int measuredWidth = this.f5482i.getMeasuredWidth() - this.f5488l.getPaddingLeft();
            if (this.f5479g0 == null || this.f5481h0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f5479g0 = colorDrawable;
                this.f5481h0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] drawableArrA = n0.k.b.a(this.f5488l);
            Drawable drawable = drawableArrA[0];
            ColorDrawable colorDrawable2 = this.f5479g0;
            if (drawable != colorDrawable2) {
                n0.k.b.e(this.f5488l, colorDrawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                z10 = true;
            } else {
                z10 = false;
            }
        } else if (this.f5479g0 != null) {
            Drawable[] drawableArrA2 = n0.k.b.a(this.f5488l);
            n0.k.b.e(this.f5488l, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
            this.f5479g0 = null;
            z10 = true;
        } else {
            z10 = false;
        }
        if ((this.f5507u0.getVisibility() == 0 || ((i() && k()) || this.H != null)) && this.f5484j.getMeasuredWidth() > 0) {
            int measuredWidth2 = this.I.getMeasuredWidth() - this.f5488l.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = j0.h.c((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams()) + endIconToUpdateDummyDrawable.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] drawableArrA3 = n0.k.b.a(this.f5488l);
            ColorDrawable colorDrawable3 = this.f5497p0;
            if (colorDrawable3 == null || this.f5499q0 == measuredWidth2) {
                if (colorDrawable3 == null) {
                    ColorDrawable colorDrawable4 = new ColorDrawable();
                    this.f5497p0 = colorDrawable4;
                    this.f5499q0 = measuredWidth2;
                    colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable2 = drawableArrA3[2];
                ColorDrawable colorDrawable5 = this.f5497p0;
                if (drawable2 != colorDrawable5) {
                    this.f5501r0 = drawableArrA3[2];
                    n0.k.b.e(this.f5488l, drawableArrA3[0], drawableArrA3[1], colorDrawable5, drawableArrA3[3]);
                } else {
                    z11 = z10;
                }
            } else {
                this.f5499q0 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                n0.k.b.e(this.f5488l, drawableArrA3[0], drawableArrA3[1], this.f5497p0, drawableArrA3[3]);
            }
        } else {
            if (this.f5497p0 == null) {
                return z10;
            }
            Drawable[] drawableArrA4 = n0.k.b.a(this.f5488l);
            if (drawableArrA4[2] == this.f5497p0) {
                n0.k.b.e(this.f5488l, drawableArrA4[0], drawableArrA4[1], this.f5501r0, drawableArrA4[3]);
            } else {
                z11 = z10;
            }
            this.f5497p0 = null;
        }
        return z11;
    }

    public final void w() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.f5488l;
        if (editText == null || this.S != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = l0.f1334a;
        Drawable drawableMutate = background.mutate();
        if (this.f5500r.e()) {
            drawableMutate.setColorFilter(androidx.appcompat.widget.k.c(this.f5500r.g(), PorterDuff.Mode.SRC_IN));
        } else if (this.f5506u && (appCompatTextView = this.f5508v) != null) {
            drawableMutate.setColorFilter(androidx.appcompat.widget.k.c(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            drawableMutate.clearColorFilter();
            this.f5488l.refreshDrawableState();
        }
    }

    public final void x() {
        this.f5486k.setVisibility((this.f5489l0.getVisibility() != 0 || l()) ? 8 : 0);
        this.f5484j.setVisibility(k() || l() || ((this.H == null || this.I0) ? '\b' : (char) 0) == 0 ? 0 : 8);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    public final void y() {
        boolean z10;
        if (getErrorIconDrawable() != null) {
            k kVar = this.f5500r;
            if (kVar.f13668k && kVar.e()) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f5507u0.setVisibility(z10 ? 0 : 8);
        x();
        D();
        if (i()) {
            return;
        }
        v();
    }

    public final void z() {
        if (this.S != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f5480h.getLayoutParams();
            int iE = e();
            if (iE != layoutParams.topMargin) {
                layoutParams.topMargin = iE;
                this.f5480h.requestLayout();
            }
        }
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f5489l0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f5489l0.setImageDrawable(drawable);
        if (drawable != null) {
            j.a(this, this.f5489l0, this.f5493n0, this.f5495o0);
            p();
        }
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        this.f5482i.a(charSequence);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f5482i.b(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f5507u0.setImageDrawable(drawable);
        y();
        j.a(this, this.f5507u0, this.f5509v0, this.f5511w0);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f5489l0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f5489l0.setImageDrawable(drawable);
    }

    public void setHint(int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }
}
