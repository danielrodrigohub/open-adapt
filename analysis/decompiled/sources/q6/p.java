package q6;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.f1;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import g6.s;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: StartCompoundLayout.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public final class p extends LinearLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextInputLayout f13690h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f13691i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f13692j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CheckableImageButton f13693k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f13694l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f13695m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View.OnLongClickListener f13696n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f13697o;

    public p(TextInputLayout textInputLayout, f1 f1Var) {
        super(textInputLayout.getContext());
        this.f13690h = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f13693k = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.f13691i = appCompatTextView;
        if (j6.c.d(getContext())) {
            j0.h.g((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        c(null);
        d(null);
        int i10 = R.styleable.TextInputLayout_startIconTint;
        if (f1Var.o(i10)) {
            this.f13694l = j6.c.b(getContext(), f1Var, i10);
        }
        int i11 = R.styleable.TextInputLayout_startIconTintMode;
        if (f1Var.o(i11)) {
            this.f13695m = s.c(f1Var.j(i11, -1), null);
        }
        int i12 = R.styleable.TextInputLayout_startIconDrawable;
        if (f1Var.o(i12)) {
            b(f1Var.g(i12));
            int i13 = R.styleable.TextInputLayout_startIconContentDescription;
            if (f1Var.o(i13)) {
                a(f1Var.n(i13));
            }
            checkableImageButton.setCheckable(f1Var.a(R.styleable.TextInputLayout_startIconCheckable, true));
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.g.f(appCompatTextView, 1);
        appCompatTextView.setTextAppearance(f1Var.l(R.styleable.TextInputLayout_prefixTextAppearance, 0));
        int i14 = R.styleable.TextInputLayout_prefixTextColor;
        if (f1Var.o(i14)) {
            appCompatTextView.setTextColor(f1Var.c(i14));
        }
        CharSequence charSequenceN = f1Var.n(R.styleable.TextInputLayout_prefixText);
        this.f13692j = TextUtils.isEmpty(charSequenceN) ? null : charSequenceN;
        appCompatTextView.setText(charSequenceN);
        g();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    public final void a(CharSequence charSequence) {
        if (this.f13693k.getContentDescription() != charSequence) {
            this.f13693k.setContentDescription(charSequence);
        }
    }

    public final void b(Drawable drawable) {
        this.f13693k.setImageDrawable(drawable);
        if (drawable != null) {
            j.a(this.f13690h, this.f13693k, this.f13694l, this.f13695m);
            e(true);
            j.c(this.f13690h, this.f13693k, this.f13694l);
        } else {
            e(false);
            c(null);
            d(null);
            a(null);
        }
    }

    public final void c(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.f13693k;
        View.OnLongClickListener onLongClickListener = this.f13696n;
        checkableImageButton.setOnClickListener(onClickListener);
        j.d(checkableImageButton, onLongClickListener);
    }

    public final void d(View.OnLongClickListener onLongClickListener) {
        this.f13696n = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f13693k;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        j.d(checkableImageButton, onLongClickListener);
    }

    public final void e(boolean z10) {
        if ((this.f13693k.getVisibility() == 0) != z10) {
            this.f13693k.setVisibility(z10 ? 0 : 8);
            f();
            g();
        }
    }

    public final void f() {
        EditText editText = this.f13690h.f5488l;
        if (editText == null) {
            return;
        }
        int iF = 0;
        if (!(this.f13693k.getVisibility() == 0)) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            iF = a0.e.f(editText);
        }
        AppCompatTextView appCompatTextView = this.f13691i;
        int compoundPaddingTop = editText.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = editText.getCompoundPaddingBottom();
        WeakHashMap<View, g0> weakHashMap2 = a0.f9147a;
        a0.e.k(appCompatTextView, iF, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    public final void g() {
        int i10 = (this.f13692j == null || this.f13697o) ? 8 : 0;
        setVisibility(this.f13693k.getVisibility() == 0 || i10 == 0 ? 0 : 8);
        this.f13691i.setVisibility(i10);
        this.f13690h.v();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        f();
    }
}
