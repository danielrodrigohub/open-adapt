package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;

/* JADX INFO: compiled from: AppCompatMultiAutoCompleteTextView.java */
/* JADX INFO: loaded from: classes.dex */
public final class t extends MultiAutoCompleteTextView {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f1447k = {R.attr.popupBackground};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f1448h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f0 f1449i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final m f1450j;

    /* JADX WARN: Illegal instructions before constructor call */
    public t(Context context, AttributeSet attributeSet) {
        int i10 = androidx.appcompat.R.attr.autoCompleteTextViewStyle;
        c1.a(context);
        super(context, attributeSet, i10);
        a1.a(this, getContext());
        f1 f1VarQ = f1.q(getContext(), attributeSet, f1447k, i10);
        if (f1VarQ.o(0)) {
            setDropDownBackgroundDrawable(f1VarQ.g(0));
        }
        f1VarQ.r();
        e eVar = new e(this);
        this.f1448h = eVar;
        eVar.d(attributeSet, i10);
        f0 f0Var = new f0(this);
        this.f1449i = f0Var;
        f0Var.h(attributeSet, i10);
        f0Var.b();
        m mVar = new m(this);
        this.f1450j = mVar;
        mVar.b(attributeSet, i10);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean zIsFocusable = isFocusable();
            boolean zIsClickable = isClickable();
            boolean zIsLongClickable = isLongClickable();
            int inputType = getInputType();
            KeyListener keyListenerA = mVar.a(keyListener);
            if (keyListenerA == keyListener) {
                return;
            }
            super.setKeyListener(keyListenerA);
            setRawInputType(inputType);
            setFocusable(zIsFocusable);
            setClickable(zIsClickable);
            setLongClickable(zIsLongClickable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1448h;
        if (eVar != null) {
            eVar.a();
        }
        f0 f0Var = this.f1449i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1448h;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1448h;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1449i.e();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1449i.f();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        p.j(inputConnectionOnCreateInputConnection, editorInfo, this);
        return this.f1450j.c(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1448h;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1448h;
        if (eVar != null) {
            eVar.f(i10);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1449i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1449i;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i10) {
        setDropDownBackgroundDrawable(g.a.b(getContext(), i10));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        this.f1450j.d(z10);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f1450j.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1448h;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1448h;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1449i.o(colorStateList);
        this.f1449i.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1449i.p(mode);
        this.f1449i.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        f0 f0Var = this.f1449i;
        if (f0Var != null) {
            f0Var.i(context, i10);
        }
    }
}
