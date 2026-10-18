package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.Editable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import g6.m;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends q6.i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f5542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c f5543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final d f5544g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f5545h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @SuppressLint({"ClickableViewAccessibility"})
    public final f f5546i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final g f5547j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final h f5548k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f5549l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5550m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f5551n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public StateListDrawable f5552o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public m6.f f5553p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public AccessibilityManager f5554q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ValueAnimator f5555r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ValueAnimator f5556s;

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class a extends m {

        /* JADX INFO: renamed from: com.google.android.material.textfield.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
        public class RunnableC0093a implements Runnable {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ AutoCompleteTextView f5558h;

            public RunnableC0093a(AutoCompleteTextView autoCompleteTextView) {
                this.f5558h = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public final void run() {
                boolean zIsPopupShowing = this.f5558h.isPopupShowing();
                b.f(b.this, zIsPopupShowing);
                b.this.f5549l = zIsPopupShowing;
            }
        }

        public a() {
        }

        @Override // g6.m, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewD = b.d(b.this.f13654a.getEditText());
            if (b.this.f5554q.isTouchExplorationEnabled() && b.e(autoCompleteTextViewD) && !b.this.f13656c.hasFocus()) {
                autoCompleteTextViewD.dismissDropDown();
            }
            autoCompleteTextViewD.post(new RunnableC0093a(autoCompleteTextViewD));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class C0094b implements ValueAnimator.AnimatorUpdateListener {
        public C0094b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            b.this.f13656c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class c implements View.OnFocusChangeListener {
        public c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z10) {
            b.this.f13654a.setEndIconActivated(z10);
            if (z10) {
                return;
            }
            b.f(b.this, false);
            b.this.f5549l = false;
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class d extends TextInputLayout.e {
        public d(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e, j0.a
        public final void d(View view, k0.f fVar) {
            super.d(view, fVar);
            if (!b.e(b.this.f13654a.getEditText())) {
                fVar.n(Spinner.class.getName());
            }
            if (fVar.j()) {
                fVar.t(null);
            }
        }

        @Override // j0.a
        public final void e(View view, AccessibilityEvent accessibilityEvent) {
            super.e(view, accessibilityEvent);
            AutoCompleteTextView autoCompleteTextViewD = b.d(b.this.f13654a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && b.this.f5554q.isEnabled() && !b.e(b.this.f13654a.getEditText())) {
                b.g(b.this, autoCompleteTextViewD);
                b.h(b.this);
            }
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class e implements TextInputLayout.f {
        public e() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public final void a(TextInputLayout textInputLayout) {
            AutoCompleteTextView autoCompleteTextViewD = b.d(textInputLayout.getEditText());
            b bVar = b.this;
            int boxBackgroundMode = bVar.f13654a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextViewD.setDropDownBackgroundDrawable(bVar.f5553p);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextViewD.setDropDownBackgroundDrawable(bVar.f5552o);
            }
            b.this.i(autoCompleteTextViewD);
            b bVar2 = b.this;
            Objects.requireNonNull(bVar2);
            autoCompleteTextViewD.setOnTouchListener(new q6.h(bVar2, autoCompleteTextViewD));
            autoCompleteTextViewD.setOnFocusChangeListener(bVar2.f5543f);
            autoCompleteTextViewD.setOnDismissListener(new q6.f(bVar2));
            autoCompleteTextViewD.setThreshold(0);
            autoCompleteTextViewD.removeTextChangedListener(b.this.f5542e);
            autoCompleteTextViewD.addTextChangedListener(b.this.f5542e);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!(autoCompleteTextViewD.getKeyListener() != null) && b.this.f5554q.isTouchExplorationEnabled()) {
                CheckableImageButton checkableImageButton = b.this.f13656c;
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.s(checkableImageButton, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(b.this.f5544g);
            textInputLayout.setEndIconVisible(true);
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class f implements TextInputLayout.g {

        /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
        public class a implements Runnable {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ AutoCompleteTextView f5565h;

            public a(AutoCompleteTextView autoCompleteTextView) {
                this.f5565h = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5565h.removeTextChangedListener(b.this.f5542e);
            }
        }

        public f() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public final void a(TextInputLayout textInputLayout, int i10) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView != null && i10 == 3) {
                autoCompleteTextView.post(new a(autoCompleteTextView));
                if (autoCompleteTextView.getOnFocusChangeListener() == b.this.f5543f) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                autoCompleteTextView.setOnDismissListener(null);
            }
            if (i10 == 3) {
                textInputLayout.removeOnAttachStateChangeListener(b.this.f5547j);
                b bVar = b.this;
                AccessibilityManager accessibilityManager = bVar.f5554q;
                if (accessibilityManager != null) {
                    k0.c.b(accessibilityManager, bVar.f5548k);
                }
            }
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class g implements View.OnAttachStateChangeListener {
        public g() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            b.this.j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            b bVar = b.this;
            AccessibilityManager accessibilityManager = bVar.f5554q;
            if (accessibilityManager != null) {
                k0.c.b(accessibilityManager, bVar.f5548k);
            }
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class h implements k0.d {
        public h() {
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    public class i implements View.OnClickListener {
        public i() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b.g(b.this, (AutoCompleteTextView) b.this.f13654a.getEditText());
        }
    }

    public b(TextInputLayout textInputLayout, int i10) {
        super(textInputLayout, i10);
        this.f5542e = new a();
        this.f5543f = new c();
        this.f5544g = new d(this.f13654a);
        this.f5545h = new e();
        this.f5546i = new f();
        this.f5547j = new g();
        this.f5548k = new h();
        this.f5549l = false;
        this.f5550m = false;
        this.f5551n = Long.MAX_VALUE;
    }

    public static AutoCompleteTextView d(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    public static boolean e(EditText editText) {
        return editText.getKeyListener() != null;
    }

    public static void f(b bVar, boolean z10) {
        if (bVar.f5550m != z10) {
            bVar.f5550m = z10;
            bVar.f5556s.cancel();
            bVar.f5555r.start();
        }
    }

    public static void g(b bVar, AutoCompleteTextView autoCompleteTextView) {
        Objects.requireNonNull(bVar);
        if (autoCompleteTextView == null) {
            return;
        }
        if (bVar.m()) {
            bVar.f5549l = false;
        }
        if (bVar.f5549l) {
            bVar.f5549l = false;
            return;
        }
        boolean z10 = bVar.f5550m;
        boolean z11 = !z10;
        if (z10 != z11) {
            bVar.f5550m = z11;
            bVar.f5556s.cancel();
            bVar.f5555r.start();
        }
        if (!bVar.f5550m) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    public static void h(b bVar) {
        bVar.f5549l = true;
        bVar.f5551n = System.currentTimeMillis();
    }

    @Override // q6.i
    public final void a() {
        float dimensionPixelOffset = this.f13655b.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f13655b.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f13655b.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        m6.f fVarL = l(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        m6.f fVarL2 = l(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f5553p = fVarL;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f5552o = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, fVarL);
        this.f5552o.addState(new int[0], fVarL2);
        int i10 = this.f13657d;
        if (i10 == 0) {
            i10 = R.drawable.mtrl_dropdown_arrow;
        }
        this.f13654a.setEndIconDrawable(i10);
        TextInputLayout textInputLayout = this.f13654a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        this.f13654a.setEndIconOnClickListener(new i());
        this.f13654a.a(this.f5545h);
        this.f13654a.b(this.f5546i);
        this.f5556s = k(67, 0.0f, 1.0f);
        ValueAnimator valueAnimatorK = k(50, 1.0f, 0.0f);
        this.f5555r = valueAnimatorK;
        valueAnimatorK.addListener(new q6.g(this));
        this.f5554q = (AccessibilityManager) this.f13655b.getSystemService("accessibility");
        this.f13654a.addOnAttachStateChangeListener(this.f5547j);
        j();
    }

    @Override // q6.i
    public final boolean b(int i10) {
        return i10 != 0;
    }

    public final void i(AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView.getKeyListener() != null) {
            return;
        }
        int boxBackgroundMode = this.f13654a.getBoxBackgroundMode();
        m6.f boxBackground = this.f13654a.getBoxBackground();
        int iB = a6.a.b(autoCompleteTextView, R.attr.colorControlHighlight);
        int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode != 2) {
            if (boxBackgroundMode == 1) {
                int boxBackgroundColor = this.f13654a.getBoxBackgroundColor();
                RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(iArr, new int[]{a6.a.d(iB, boxBackgroundColor, 0.1f), boxBackgroundColor}), boxBackground, boxBackground);
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.d.q(autoCompleteTextView, rippleDrawable);
                return;
            }
            return;
        }
        int iB2 = a6.a.b(autoCompleteTextView, R.attr.colorSurface);
        m6.f fVar = new m6.f(boxBackground.f10495h.f10515a);
        int iD = a6.a.d(iB, iB2, 0.1f);
        fVar.o(new ColorStateList(iArr, new int[]{iD, 0}));
        fVar.setTint(iB2);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iD, iB2});
        m6.f fVar2 = new m6.f(boxBackground.f10495h.f10515a);
        fVar2.setTint(-1);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, fVar, fVar2), boxBackground});
        WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
        a0.d.q(autoCompleteTextView, layerDrawable);
    }

    public final void j() {
        TextInputLayout textInputLayout;
        if (this.f5554q == null || (textInputLayout = this.f13654a) == null) {
            return;
        }
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (a0.g.b(textInputLayout)) {
            k0.c.a(this.f5554q, this.f5548k);
        }
    }

    public final ValueAnimator k(int i10, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(p5.a.f13252a);
        valueAnimatorOfFloat.setDuration(i10);
        valueAnimatorOfFloat.addUpdateListener(new C0094b());
        return valueAnimatorOfFloat;
    }

    public final m6.f l(float f10, float f11, float f12, int i10) {
        m6.i.a aVar = new m6.i.a();
        aVar.e(f10);
        aVar.f(f10);
        aVar.c(f11);
        aVar.d(f11);
        m6.i iVarA = aVar.a();
        Context context = this.f13655b;
        String str = m6.f.E;
        int iB = j6.b.b(context, R.attr.colorSurface, m6.f.class.getSimpleName());
        m6.f fVar = new m6.f();
        fVar.m(context);
        fVar.o(ColorStateList.valueOf(iB));
        fVar.n(f12);
        fVar.setShapeAppearanceModel(iVarA);
        m6.f.b bVar = fVar.f10495h;
        if (bVar.f10522h == null) {
            bVar.f10522h = new Rect();
        }
        fVar.f10495h.f10522h.set(0, i10, 0, i10);
        fVar.invalidateSelf();
        return fVar;
    }

    public final boolean m() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f5551n;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }
}
