package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatTextView extends TextView implements n0.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f1022h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f0 f1023i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d0 f1024j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public n f1025k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1026l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Future<h0.b> f1027m;

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private n getEmojiTextViewHelper() {
        if (this.f1025k == null) {
            this.f1025k = new n(this);
        }
        return this.f1025k;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1022h;
        if (eVar != null) {
            eVar.a();
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (n0.b.f11163f) {
            return super.getAutoSizeMaxTextSize();
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            return Math.round(f0Var.f1243i.f1275e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (n0.b.f11163f) {
            return super.getAutoSizeMinTextSize();
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            return Math.round(f0Var.f1243i.f1274d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (n0.b.f11163f) {
            return super.getAutoSizeStepGranularity();
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            return Math.round(f0Var.f1243i.f1273c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (n0.b.f11163f) {
            return super.getAutoSizeTextAvailableSizes();
        }
        f0 f0Var = this.f1023i;
        return f0Var != null ? f0Var.f1243i.f1276f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (n0.b.f11163f) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            return f0Var.f1243i.f1271a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n0.k.f(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1022h;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1022h;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1023i.e();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1023i.f();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future<h0.b> future = this.f1027m;
        if (future != null) {
            try {
                this.f1027m = null;
                n0.k.e(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        d0 d0Var;
        if (Build.VERSION.SDK_INT >= 28 || (d0Var = this.f1024j) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = d0Var.f1221b;
        return textClassifier == null ? d0.a.a(d0Var.f1220a) : textClassifier;
    }

    public h0.b.a getTextMetricsParamsCompat() {
        return n0.k.a(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f1023i.j(this, inputConnectionOnCreateInputConnection, editorInfo);
        p.j(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            Objects.requireNonNull(f0Var);
            if (n0.b.f11163f) {
                return;
            }
            f0Var.c();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        Future<h0.b> future = this.f1027m;
        if (future != null) {
            try {
                this.f1027m = null;
                n0.k.e(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        f0 f0Var = this.f1023i;
        if (f0Var == null || n0.b.f11163f || !f0Var.g()) {
            return;
        }
        this.f1023i.c();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().c(z10);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        if (n0.b.f11163f) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
            return;
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.l(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i10) throws IllegalArgumentException {
        if (n0.b.f11163f) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
            return;
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.m(iArr, i10);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        if (n0.b.f11163f) {
            super.setAutoSizeTextTypeWithDefaults(i10);
            return;
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.n(i10);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1022h;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1022h;
        if (eVar != null) {
            eVar.f(i10);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(n0.k.g(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i10);
        } else {
            n0.k.b(this, i10);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i10);
        } else {
            n0.k.c(this, i10);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i10) {
        n0.k.d(this, i10);
    }

    public void setPrecomputedText(h0.b bVar) {
        n0.k.e(this, bVar);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1022h;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1022h;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1023i.o(colorStateList);
        this.f1023i.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1023i.p(mode);
        this.f1023i.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.i(context, i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        d0 d0Var;
        if (Build.VERSION.SDK_INT >= 28 || (d0Var = this.f1024j) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            d0Var.f1221b = textClassifier;
        }
    }

    public void setTextFuture(Future<h0.b> future) {
        this.f1027m = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(h0.b.a aVar) {
        TextDirectionHeuristic textDirectionHeuristic = aVar.f8096b;
        int i10 = 1;
        if (textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_RTL && textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
                i10 = 2;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
                i10 = 3;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                i10 = 4;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
                i10 = 5;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                i10 = 6;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                i10 = 7;
            }
        }
        n0.k.b.h(this, i10);
        getPaint().set(aVar.f8095a);
        n0.k.c.e(this, aVar.f8097c);
        n0.k.c.h(this, aVar.f8098d);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i10, float f10) {
        boolean z10 = n0.b.f11163f;
        if (z10) {
            super.setTextSize(i10, f10);
            return;
        }
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            Objects.requireNonNull(f0Var);
            if (z10 || f0Var.g()) {
                return;
            }
            f0Var.f1243i.f(i10, f10);
        }
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i10) {
        if (this.f1026l) {
            return;
        }
        Typeface typefaceCreate = null;
        if (typeface != null && i10 > 0) {
            Context context = getContext();
            a0.l lVar = a0.f.f11a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typefaceCreate = Typeface.create(typeface, i10);
        }
        this.f1026l = true;
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        try {
            super.setTypeface(typeface, i10);
        } finally {
            this.f1026l = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c1.a(context);
        this.f1026l = false;
        a1.a(this, getContext());
        e eVar = new e(this);
        this.f1022h = eVar;
        eVar.d(attributeSet, i10);
        f0 f0Var = new f0(this);
        this.f1023i = f0Var;
        f0Var.h(attributeSet, i10);
        f0Var.b();
        this.f1024j = new d0(this);
        getEmojiTextViewHelper().b(attributeSet, i10);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i10 != 0 ? g.a.b(context, i10) : null, i11 != 0 ? g.a.b(context, i11) : null, i12 != 0 ? g.a.b(context, i12) : null, i13 != 0 ? g.a.b(context, i13) : null);
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i10 != 0 ? g.a.b(context, i10) : null, i11 != 0 ? g.a.b(context, i11) : null, i12 != 0 ? g.a.b(context, i12) : null, i13 != 0 ? g.a.b(context, i13) : null);
        f0 f0Var = this.f1023i;
        if (f0Var != null) {
            f0Var.b();
        }
    }
}
