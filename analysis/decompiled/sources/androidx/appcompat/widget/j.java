package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AppCompatCompoundButtonHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompoundButton f1312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ColorStateList f1313b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f1314c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1315d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1316e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1317f;

    public j(CompoundButton compoundButton) {
        this.f1312a = compoundButton;
    }

    public final void a() {
        Drawable drawableA = n0.d.a(this.f1312a);
        if (drawableA != null) {
            if (this.f1315d || this.f1316e) {
                Drawable drawableMutate = drawableA.mutate();
                if (this.f1315d) {
                    b0.a.b.h(drawableMutate, this.f1313b);
                }
                if (this.f1316e) {
                    b0.a.b.i(drawableMutate, this.f1314c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1312a.getDrawableState());
                }
                this.f1312a.setButtonDrawable(drawableMutate);
            }
        }
    }

    public final void b(AttributeSet attributeSet, int i10) {
        boolean z10;
        int iL;
        int iL2;
        Context context = this.f1312a.getContext();
        int[] iArr = R.styleable.CompoundButton;
        f1 f1VarQ = f1.q(context, attributeSet, iArr, i10);
        CompoundButton compoundButton = this.f1312a;
        j0.a0.o(compoundButton, compoundButton.getContext(), iArr, attributeSet, f1VarQ.f1253b, i10);
        try {
            int i11 = R.styleable.CompoundButton_buttonCompat;
            if (!f1VarQ.o(i11) || (iL2 = f1VarQ.l(i11, 0)) == 0) {
                z10 = false;
            } else {
                try {
                    CompoundButton compoundButton2 = this.f1312a;
                    compoundButton2.setButtonDrawable(g.a.b(compoundButton2.getContext(), iL2));
                    z10 = true;
                } catch (Resources.NotFoundException unused) {
                    z10 = false;
                }
            }
            if (!z10) {
                int i12 = R.styleable.CompoundButton_android_button;
                if (f1VarQ.o(i12) && (iL = f1VarQ.l(i12, 0)) != 0) {
                    CompoundButton compoundButton3 = this.f1312a;
                    compoundButton3.setButtonDrawable(g.a.b(compoundButton3.getContext(), iL));
                }
            }
            int i13 = R.styleable.CompoundButton_buttonTint;
            if (f1VarQ.o(i13)) {
                n0.c.c(this.f1312a, f1VarQ.c(i13));
            }
            int i14 = R.styleable.CompoundButton_buttonTintMode;
            if (f1VarQ.o(i14)) {
                n0.c.d(this.f1312a, l0.d(f1VarQ.j(i14, -1), null));
            }
        } finally {
            f1VarQ.r();
        }
    }
}
