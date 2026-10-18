package o;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: RoundRectDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f12038a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RectF f12040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f12041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f12042e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f12045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuffColorFilter f12046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f12047j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f12043f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f12044g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f12048k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f12039b = new Paint(5);

    public b(ColorStateList colorStateList, float f10) {
        this.f12038a = f10;
        b(colorStateList);
        this.f12040c = new RectF();
        this.f12041d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f12045h = colorStateList;
        this.f12039b.setColor(colorStateList.getColorForState(getState(), this.f12045h.getDefaultColor()));
    }

    public final void c(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f12040c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f12041d.set(rect);
        if (this.f12043f) {
            this.f12041d.inset((int) Math.ceil(c.a(this.f12042e, this.f12038a, this.f12044g)), (int) Math.ceil(c.b(this.f12042e, this.f12038a, this.f12044g)));
            this.f12040c.set(this.f12041d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z10;
        Paint paint = this.f12039b;
        if (this.f12046i == null || paint.getColorFilter() != null) {
            z10 = false;
        } else {
            paint.setColorFilter(this.f12046i);
            z10 = true;
        }
        RectF rectF = this.f12040c;
        float f10 = this.f12038a;
        canvas.drawRoundRect(rectF, f10, f10, paint);
        if (z10) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f12041d, this.f12038a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f12047j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f12045h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        c(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f12045h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z10 = colorForState != this.f12039b.getColor();
        if (z10) {
            this.f12039b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f12047j;
        if (colorStateList2 == null || (mode = this.f12048k) == null) {
            return z10;
        }
        this.f12046i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        this.f12039b.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f12039b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f12047j = colorStateList;
        this.f12046i = a(colorStateList, this.f12048k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f12048k = mode;
        this.f12046i = a(this.f12047j, mode);
        invalidateSelf();
    }
}
