package i6;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.w;
import com.google.android.material.R;
import g6.n;
import n0.c;

/* JADX INFO: compiled from: MaterialRadioButton.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends w {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f8817n = R.style.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[][] f8818o = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f8819l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f8820m;

    /* JADX WARN: Illegal instructions before constructor call */
    public a(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.radioButtonStyle;
        int i11 = f8817n;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayD = n.d(context2, attributeSet, R.styleable.MaterialRadioButton, i10, i11, new int[0]);
        int i12 = R.styleable.MaterialRadioButton_buttonTint;
        if (typedArrayD.hasValue(i12)) {
            c.c(this, j6.c.a(context2, typedArrayD, i12));
        }
        this.f8820m = typedArrayD.getBoolean(R.styleable.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayD.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f8819l == null) {
            int iB = a6.a.b(this, R.attr.colorControlActivated);
            int iB2 = a6.a.b(this, R.attr.colorOnSurface);
            int iB3 = a6.a.b(this, R.attr.colorSurface);
            this.f8819l = new ColorStateList(f8818o, new int[]{a6.a.d(iB3, iB, 1.0f), a6.a.d(iB3, iB2, 0.54f), a6.a.d(iB3, iB2, 0.38f), a6.a.d(iB3, iB2, 0.38f)});
        }
        return this.f8819l;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f8820m && c.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f8820m = z10;
        if (z10) {
            c.c(this, getMaterialThemeColorsTintList());
        } else {
            c.c(this, null);
        }
    }
}
