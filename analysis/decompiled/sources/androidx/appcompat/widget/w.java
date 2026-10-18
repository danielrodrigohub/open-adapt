package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatRadioButton.java */
/* JADX INFO: loaded from: classes.dex */
public class w extends RadioButton {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f1468h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f1469i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f0 f1470j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public n f1471k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c1.a(context);
        a1.a(this, getContext());
        j jVar = new j(this);
        this.f1468h = jVar;
        jVar.b(attributeSet, i10);
        e eVar = new e(this);
        this.f1469i = eVar;
        eVar.d(attributeSet, i10);
        f0 f0Var = new f0(this);
        this.f1470j = f0Var;
        f0Var.h(attributeSet, i10);
        getEmojiTextViewHelper().b(attributeSet, i10);
    }

    private n getEmojiTextViewHelper() {
        if (this.f1471k == null) {
            this.f1471k = new n(this);
        }
        return this.f1471k;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1469i;
        if (eVar != null) {
            eVar.a();
        }
        f0 f0Var = this.f1470j;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        j jVar = this.f1468h;
        if (jVar != null) {
            Objects.requireNonNull(jVar);
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1469i;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1469i;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        j jVar = this.f1468h;
        if (jVar != null) {
            return jVar.f1313b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        j jVar = this.f1468h;
        if (jVar != null) {
            return jVar.f1314c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1470j.e();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1470j.f();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().c(z10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1469i;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1469i;
        if (eVar != null) {
            eVar.f(i10);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        j jVar = this.f1468h;
        if (jVar != null) {
            if (jVar.f1317f) {
                jVar.f1317f = false;
            } else {
                jVar.f1317f = true;
                jVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1470j;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1470j;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1469i;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1469i;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        j jVar = this.f1468h;
        if (jVar != null) {
            jVar.f1313b = colorStateList;
            jVar.f1315d = true;
            jVar.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        j jVar = this.f1468h;
        if (jVar != null) {
            jVar.f1314c = mode;
            jVar.f1316e = true;
            jVar.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1470j.o(colorStateList);
        this.f1470j.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1470j.p(mode);
        this.f1470j.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i10) {
        setButtonDrawable(g.a.b(getContext(), i10));
    }
}
