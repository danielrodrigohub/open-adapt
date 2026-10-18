package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.R;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatButton.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends Button implements n0.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f1232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f0 f1233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public n f1234j;

    public f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    private n getEmojiTextViewHelper() {
        if (this.f1234j == null) {
            this.f1234j = new n(this);
        }
        return this.f1234j;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1232h;
        if (eVar != null) {
            eVar.a();
        }
        f0 f0Var = this.f1233i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (n0.b.f11163f) {
            return super.getAutoSizeMaxTextSize();
        }
        f0 f0Var = this.f1233i;
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
        f0 f0Var = this.f1233i;
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
        f0 f0Var = this.f1233i;
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
        f0 f0Var = this.f1233i;
        return f0Var != null ? f0Var.f1243i.f1276f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (n0.b.f11163f) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        f0 f0Var = this.f1233i;
        if (f0Var != null) {
            return f0Var.f1243i.f1271a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n0.k.f(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1232h;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1232h;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1233i.e();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1233i.f();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        f0 f0Var = this.f1233i;
        if (f0Var != null) {
            Objects.requireNonNull(f0Var);
            if (n0.b.f11163f) {
                return;
            }
            f0Var.c();
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        f0 f0Var = this.f1233i;
        if (f0Var == null || n0.b.f11163f || !f0Var.g()) {
            return;
        }
        this.f1233i.c();
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
        f0 f0Var = this.f1233i;
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
        f0 f0Var = this.f1233i;
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
        f0 f0Var = this.f1233i;
        if (f0Var != null) {
            f0Var.n(i10);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1232h;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1232h;
        if (eVar != null) {
            eVar.f(i10);
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

    public void setSupportAllCaps(boolean z10) {
        f0 f0Var = this.f1233i;
        if (f0Var != null) {
            f0Var.k(z10);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1232h;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1232h;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1233i.o(colorStateList);
        this.f1233i.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1233i.p(mode);
        this.f1233i.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        f0 f0Var = this.f1233i;
        if (f0Var != null) {
            f0Var.i(context, i10);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i10, float f10) {
        boolean z10 = n0.b.f11163f;
        if (z10) {
            super.setTextSize(i10, f10);
            return;
        }
        f0 f0Var = this.f1233i;
        if (f0Var != null) {
            Objects.requireNonNull(f0Var);
            if (z10 || f0Var.g()) {
                return;
            }
            f0Var.f1243i.f(i10, f10);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c1.a(context);
        a1.a(this, getContext());
        e eVar = new e(this);
        this.f1232h = eVar;
        eVar.d(attributeSet, i10);
        f0 f0Var = new f0(this);
        this.f1233i = f0Var;
        f0Var.h(attributeSet, i10);
        f0Var.b();
        getEmojiTextViewHelper().b(attributeSet, i10);
    }
}
