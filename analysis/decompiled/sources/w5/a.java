package w5;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.g;
import com.google.android.material.R;
import g6.n;
import g6.s;
import n0.c;
import n0.d;

/* JADX INFO: compiled from: MaterialCheckBox.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f17225o = R.style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[][] f17226p = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f17227l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f17228m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f17229n;

    /* JADX WARN: Illegal instructions before constructor call */
    public a(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.checkboxStyle;
        int i11 = f17225o;
        super(r6.a.a(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayD = n.d(context2, attributeSet, R.styleable.MaterialCheckBox, i10, i11, new int[0]);
        int i12 = R.styleable.MaterialCheckBox_buttonTint;
        if (typedArrayD.hasValue(i12)) {
            c.c(this, j6.c.a(context2, typedArrayD, i12));
        }
        this.f17228m = typedArrayD.getBoolean(R.styleable.MaterialCheckBox_useMaterialThemeColors, false);
        this.f17229n = typedArrayD.getBoolean(R.styleable.MaterialCheckBox_centerIfNoTextEnabled, true);
        typedArrayD.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f17227l == null) {
            int[][] iArr = f17226p;
            int iB = a6.a.b(this, R.attr.colorControlActivated);
            int iB2 = a6.a.b(this, R.attr.colorSurface);
            int iB3 = a6.a.b(this, R.attr.colorOnSurface);
            this.f17227l = new ColorStateList(iArr, new int[]{a6.a.d(iB2, iB, 1.0f), a6.a.d(iB2, iB3, 0.54f), a6.a.d(iB2, iB3, 0.38f), a6.a.d(iB2, iB3, 0.38f)});
        }
        return this.f17227l;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f17228m && c.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable drawableA;
        if (!this.f17229n || !TextUtils.isEmpty(getText()) || (drawableA = d.a(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - drawableA.getIntrinsicWidth()) / 2) * (s.b(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = drawableA.getBounds();
            b0.a.b.f(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    public void setCenterIfNoTextEnabled(boolean z10) {
        this.f17229n = z10;
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f17228m = z10;
        if (z10) {
            c.c(this, getMaterialThemeColorsTintList());
        } else {
            c.c(this, null);
        }
    }
}
