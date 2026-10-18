package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AppCompatCheckedTextView.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends CheckedTextView {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i f1264h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f1265i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f0 f1266j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public n f1267k;

    /* JADX WARN: Illegal instructions before constructor call */
    public h(Context context, AttributeSet attributeSet) {
        boolean z10;
        int iL;
        int iL2;
        int i10 = R.attr.checkedTextViewStyle;
        c1.a(context);
        super(context, attributeSet, i10);
        a1.a(this, getContext());
        f0 f0Var = new f0(this);
        this.f1266j = f0Var;
        f0Var.h(attributeSet, i10);
        f0Var.b();
        e eVar = new e(this);
        this.f1265i = eVar;
        eVar.d(attributeSet, i10);
        i iVar = new i(this);
        this.f1264h = iVar;
        Context context2 = getContext();
        int[] iArr = R.styleable.CheckedTextView;
        f1 f1VarQ = f1.q(context2, attributeSet, iArr, i10);
        j0.a0.o(this, getContext(), iArr, attributeSet, f1VarQ.f1253b, i10);
        try {
            int i11 = R.styleable.CheckedTextView_checkMarkCompat;
            if (!f1VarQ.o(i11) || (iL2 = f1VarQ.l(i11, 0)) == 0) {
                z10 = false;
            } else {
                try {
                    setCheckMarkDrawable(g.a.b(getContext(), iL2));
                    z10 = true;
                } catch (Resources.NotFoundException unused) {
                    z10 = false;
                }
            }
            if (!z10) {
                int i12 = R.styleable.CheckedTextView_android_checkMark;
                if (f1VarQ.o(i12) && (iL = f1VarQ.l(i12, 0)) != 0) {
                    CheckedTextView checkedTextView = iVar.f1284a;
                    checkedTextView.setCheckMarkDrawable(g.a.b(checkedTextView.getContext(), iL));
                }
            }
            int i13 = R.styleable.CheckedTextView_checkMarkTint;
            if (f1VarQ.o(i13)) {
                iVar.f1284a.setCheckMarkTintList(f1VarQ.c(i13));
            }
            int i14 = R.styleable.CheckedTextView_checkMarkTintMode;
            if (f1VarQ.o(i14)) {
                iVar.f1284a.setCheckMarkTintMode(l0.d(f1VarQ.j(i14, -1), null));
            }
            f1VarQ.r();
            getEmojiTextViewHelper().b(attributeSet, i10);
        } catch (Throwable th) {
            f1VarQ.r();
            throw th;
        }
    }

    private n getEmojiTextViewHelper() {
        if (this.f1267k == null) {
            this.f1267k = new n(this);
        }
        return this.f1267k;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        f0 f0Var = this.f1266j;
        if (f0Var != null) {
            f0Var.b();
        }
        e eVar = this.f1265i;
        if (eVar != null) {
            eVar.a();
        }
        i iVar = this.f1264h;
        if (iVar != null) {
            iVar.a();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n0.k.f(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1265i;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1265i;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        i iVar = this.f1264h;
        if (iVar != null) {
            return iVar.f1285b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        i iVar = this.f1264h;
        if (iVar != null) {
            return iVar.f1286c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1266j.e();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1266j.f();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        p.j(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().c(z10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1265i;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1265i;
        if (eVar != null) {
            eVar.f(i10);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        i iVar = this.f1264h;
        if (iVar != null) {
            if (iVar.f1289f) {
                iVar.f1289f = false;
            } else {
                iVar.f1289f = true;
                iVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1266j;
        if (f0Var != null) {
            f0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        f0 f0Var = this.f1266j;
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

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1265i;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1265i;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        i iVar = this.f1264h;
        if (iVar != null) {
            iVar.f1285b = colorStateList;
            iVar.f1287d = true;
            iVar.a();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        i iVar = this.f1264h;
        if (iVar != null) {
            iVar.f1286c = mode;
            iVar.f1288e = true;
            iVar.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f1266j.o(colorStateList);
        this.f1266j.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f1266j.p(mode);
        this.f1266j.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        f0 f0Var = this.f1266j;
        if (f0Var != null) {
            f0Var.i(context, i10);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i10) {
        setCheckMarkDrawable(g.a.b(getContext(), i10));
    }
}
