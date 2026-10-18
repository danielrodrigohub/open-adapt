package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import de.n0;
import o.b;

/* JADX INFO: loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f1499o = {R.attr.colorBackground};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final n0 f1500p = new n0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1501h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1502i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1503j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1504k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Rect f1505l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Rect f1506m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final a f1507n;

    public class a implements o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Drawable f1508a;

        public a() {
        }

        public final boolean a() {
            return CardView.this.getPreventCornerOverlap();
        }

        public final void b(int i10, int i11, int i12, int i13) {
            CardView.this.f1506m.set(i10, i11, i12, i13);
            CardView cardView = CardView.this;
            Rect rect = cardView.f1505l;
            CardView.super.setPadding(i10 + rect.left, i11 + rect.top, i12 + rect.right, i13 + rect.bottom);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CardView(Context context, AttributeSet attributeSet) {
        ColorStateList colorStateListValueOf;
        int i10 = androidx.cardview.R.attr.cardViewStyle;
        super(context, attributeSet, i10);
        Rect rect = new Rect();
        this.f1505l = rect;
        this.f1506m = new Rect();
        a aVar = new a();
        this.f1507n = aVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.cardview.R.styleable.CardView, i10, androidx.cardview.R.style.CardView);
        int i11 = androidx.cardview.R.styleable.CardView_cardBackgroundColor;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(i11);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f1499o);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(androidx.cardview.R.color.cardview_light_background) : getResources().getColor(androidx.cardview.R.color.cardview_dark_background));
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardElevation, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardMaxElevation, 0.0f);
        this.f1501h = typedArrayObtainStyledAttributes.getBoolean(androidx.cardview.R.styleable.CardView_cardUseCompatPadding, false);
        this.f1502i = typedArrayObtainStyledAttributes.getBoolean(androidx.cardview.R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPadding, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1503j = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_android_minWidth, 0);
        this.f1504k = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_android_minHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
        n0 n0Var = f1500p;
        b bVar = new b(colorStateListValueOf, dimension);
        aVar.f1508a = bVar;
        setBackgroundDrawable(bVar);
        setClipToOutline(true);
        setElevation(dimension2);
        n0Var.m(aVar, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return f1500p.f(this.f1507n).f12045h;
    }

    public float getCardElevation() {
        return CardView.this.getElevation();
    }

    public int getContentPaddingBottom() {
        return this.f1505l.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1505l.left;
    }

    public int getContentPaddingRight() {
        return this.f1505l.right;
    }

    public int getContentPaddingTop() {
        return this.f1505l.top;
    }

    public float getMaxCardElevation() {
        return f1500p.g(this.f1507n);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1502i;
    }

    public float getRadius() {
        return f1500p.h(this.f1507n);
    }

    public boolean getUseCompatPadding() {
        return this.f1501h;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    public void setCardBackgroundColor(int i10) {
        n0 n0Var = f1500p;
        a aVar = this.f1507n;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i10);
        b bVarF = n0Var.f(aVar);
        bVarF.b(colorStateListValueOf);
        bVarF.invalidateSelf();
    }

    public void setCardElevation(float f10) {
        CardView.this.setElevation(f10);
    }

    public void setMaxCardElevation(float f10) {
        f1500p.m(this.f1507n, f10);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i10) {
        this.f1504k = i10;
        super.setMinimumHeight(i10);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i10) {
        this.f1503j = i10;
        super.setMinimumWidth(i10);
    }

    @Override // android.view.View
    public final void setPadding(int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i10, int i11, int i12, int i13) {
    }

    public void setPreventCornerOverlap(boolean z10) {
        if (z10 != this.f1502i) {
            this.f1502i = z10;
            n0 n0Var = f1500p;
            a aVar = this.f1507n;
            n0Var.m(aVar, n0Var.g(aVar));
        }
    }

    public void setRadius(float f10) {
        b bVarF = f1500p.f(this.f1507n);
        if (f10 == bVarF.f12038a) {
            return;
        }
        bVarF.f12038a = f10;
        bVarF.c(null);
        bVarF.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f1501h != z10) {
            this.f1501h = z10;
            n0 n0Var = f1500p;
            a aVar = this.f1507n;
            n0Var.m(aVar, n0Var.g(aVar));
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        b bVarF = f1500p.f(this.f1507n);
        bVarF.b(colorStateList);
        bVarF.invalidateSelf();
    }
}
