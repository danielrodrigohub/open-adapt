package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AppCompatImageHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageView f1417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d1 f1418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1419c = 0;

    public r(ImageView imageView) {
        this.f1417a = imageView;
    }

    public final void a() {
        d1 d1Var;
        Drawable drawable = this.f1417a.getDrawable();
        if (drawable != null) {
            l0.a(drawable);
        }
        if (drawable == null || (d1Var = this.f1418b) == null) {
            return;
        }
        k.f(drawable, d1Var, this.f1417a.getDrawableState());
    }

    public final void b(AttributeSet attributeSet, int i10) {
        int iL;
        Context context = this.f1417a.getContext();
        int[] iArr = R.styleable.AppCompatImageView;
        f1 f1VarQ = f1.q(context, attributeSet, iArr, i10);
        ImageView imageView = this.f1417a;
        j0.a0.o(imageView, imageView.getContext(), iArr, attributeSet, f1VarQ.f1253b, i10);
        try {
            Drawable drawable = this.f1417a.getDrawable();
            if (drawable == null && (iL = f1VarQ.l(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = g.a.b(this.f1417a.getContext(), iL)) != null) {
                this.f1417a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                l0.a(drawable);
            }
            int i11 = R.styleable.AppCompatImageView_tint;
            if (f1VarQ.o(i11)) {
                n0.f.c(this.f1417a, f1VarQ.c(i11));
            }
            int i12 = R.styleable.AppCompatImageView_tintMode;
            if (f1VarQ.o(i12)) {
                n0.f.d(this.f1417a, l0.d(f1VarQ.j(i12, -1), null));
            }
        } finally {
            f1VarQ.r();
        }
    }

    public final void c(int i10) {
        if (i10 != 0) {
            Drawable drawableB = g.a.b(this.f1417a.getContext(), i10);
            if (drawableB != null) {
                l0.a(drawableB);
            }
            this.f1417a.setImageDrawable(drawableB);
        } else {
            this.f1417a.setImageDrawable(null);
        }
        a();
    }

    public final void d(ColorStateList colorStateList) {
        if (this.f1418b == null) {
            this.f1418b = new d1();
        }
        d1 d1Var = this.f1418b;
        d1Var.f1222a = colorStateList;
        d1Var.f1225d = true;
        a();
    }

    public final void e(PorterDuff.Mode mode) {
        if (this.f1418b == null) {
            this.f1418b = new d1();
        }
        d1 d1Var = this.f1418b;
        d1Var.f1223b = mode;
        d1Var.f1224c = true;
        a();
    }
}
