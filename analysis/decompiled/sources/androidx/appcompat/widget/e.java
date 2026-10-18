package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AppCompatBackgroundHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f1226a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public d1 f1229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d1 f1230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d1 f1231f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1228c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f1227b = k.a();

    public e(View view) {
        this.f1226a = view;
    }

    public final void a() {
        Drawable background = this.f1226a.getBackground();
        if (background != null) {
            boolean z10 = true;
            if (this.f1229d != null) {
                if (this.f1231f == null) {
                    this.f1231f = new d1();
                }
                d1 d1Var = this.f1231f;
                d1Var.f1222a = null;
                d1Var.f1225d = false;
                d1Var.f1223b = null;
                d1Var.f1224c = false;
                View view = this.f1226a;
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                ColorStateList colorStateListG = j0.a0.i.g(view);
                if (colorStateListG != null) {
                    d1Var.f1225d = true;
                    d1Var.f1222a = colorStateListG;
                }
                PorterDuff.Mode modeH = j0.a0.i.h(this.f1226a);
                if (modeH != null) {
                    d1Var.f1224c = true;
                    d1Var.f1223b = modeH;
                }
                if (d1Var.f1225d || d1Var.f1224c) {
                    k.f(background, d1Var, this.f1226a.getDrawableState());
                } else {
                    z10 = false;
                }
                if (z10) {
                    return;
                }
            }
            d1 d1Var2 = this.f1230e;
            if (d1Var2 != null) {
                k.f(background, d1Var2, this.f1226a.getDrawableState());
                return;
            }
            d1 d1Var3 = this.f1229d;
            if (d1Var3 != null) {
                k.f(background, d1Var3, this.f1226a.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        d1 d1Var = this.f1230e;
        if (d1Var != null) {
            return d1Var.f1222a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        d1 d1Var = this.f1230e;
        if (d1Var != null) {
            return d1Var.f1223b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i10) {
        Context context = this.f1226a.getContext();
        int[] iArr = R.styleable.ViewBackgroundHelper;
        f1 f1VarQ = f1.q(context, attributeSet, iArr, i10);
        View view = this.f1226a;
        j0.a0.o(view, view.getContext(), iArr, attributeSet, f1VarQ.f1253b, i10);
        try {
            int i11 = R.styleable.ViewBackgroundHelper_android_background;
            if (f1VarQ.o(i11)) {
                this.f1228c = f1VarQ.l(i11, -1);
                ColorStateList colorStateListD = this.f1227b.d(this.f1226a.getContext(), this.f1228c);
                if (colorStateListD != null) {
                    g(colorStateListD);
                }
            }
            int i12 = R.styleable.ViewBackgroundHelper_backgroundTint;
            if (f1VarQ.o(i12)) {
                j0.a0.i.q(this.f1226a, f1VarQ.c(i12));
            }
            int i13 = R.styleable.ViewBackgroundHelper_backgroundTintMode;
            if (f1VarQ.o(i13)) {
                j0.a0.i.r(this.f1226a, l0.d(f1VarQ.j(i13, -1), null));
            }
        } finally {
            f1VarQ.r();
        }
    }

    public final void e() {
        this.f1228c = -1;
        g(null);
        a();
    }

    public final void f(int i10) {
        this.f1228c = i10;
        k kVar = this.f1227b;
        g(kVar != null ? kVar.d(this.f1226a.getContext(), i10) : null);
        a();
    }

    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1229d == null) {
                this.f1229d = new d1();
            }
            d1 d1Var = this.f1229d;
            d1Var.f1222a = colorStateList;
            d1Var.f1225d = true;
        } else {
            this.f1229d = null;
        }
        a();
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f1230e == null) {
            this.f1230e = new d1();
        }
        d1 d1Var = this.f1230e;
        d1Var.f1222a = colorStateList;
        d1Var.f1225d = true;
        a();
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.f1230e == null) {
            this.f1230e = new d1();
        }
        d1 d1Var = this.f1230e;
        d1Var.f1223b = mode;
        d1Var.f1224c = true;
        a();
    }
}
