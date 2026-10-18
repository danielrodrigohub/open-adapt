package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.R;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatCheckBox.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends CheckBox {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f1255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f1256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f0 f1257j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public n f1258k;

    public g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    private n getEmojiTextViewHelper() {
        if (this.f1258k == null) {
            this.f1258k = new n(this);
        }
        return this.f1258k;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1256i;
        if (eVar != null) {
            eVar.a();
        }
        f0 f0Var = this.f1257j;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        j jVar = this.f1255h;
        if (jVar != null) {
            Objects.requireNonNull(jVar);
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1256i;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1256i;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        j jVar = this.f1255h;
        if (jVar != null) {
            return jVar.f1313b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        j jVar = this.f1255h;
        if (jVar != null) {
            return jVar.f1314c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1257j.e();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1257j.f();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().c(z10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1256i;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1256i;
        if (eVar != null) {
            eVar.f(i10);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        j jVar = this.f1255h;
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
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1257j;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1257j;
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
        e eVar = this.f1256i;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1256i;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        j jVar = this.f1255h;
        if (jVar != null) {
            jVar.f1313b = colorStateList;
            jVar.f1315d = true;
            jVar.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        j jVar = this.f1255h;
        if (jVar != null) {
            jVar.f1314c = mode;
            jVar.f1316e = true;
            jVar.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1257j.o(colorStateList);
        this.f1257j.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1257j.p(mode);
        this.f1257j.b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c1.a(context);
        a1.a(this, getContext());
        j jVar = new j(this);
        this.f1255h = jVar;
        jVar.b(attributeSet, i10);
        e eVar = new e(this);
        this.f1256i = eVar;
        eVar.d(attributeSet, i10);
        f0 f0Var = new f0(this);
        this.f1257j = f0Var;
        f0Var.h(attributeSet, i10);
        getEmojiTextViewHelper().b(attributeSet, i10);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i10) {
        setButtonDrawable(g.a.b(getContext(), i10));
    }
}
