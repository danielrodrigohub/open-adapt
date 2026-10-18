package f6;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import m6.i;
import m6.j;

/* JADX INFO: compiled from: BorderDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Drawable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f7069b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f7075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7076i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7077j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7078k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f7079l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7080m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public i f7082o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ColorStateList f7083p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f7068a = j.a.f10574a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f7070c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f7071d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectF f7072e = new RectF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f7073f = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0126a f7074g = new C0126a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f7081n = true;

    /* JADX INFO: renamed from: f6.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BorderDrawable.java */
    public class C0126a extends Drawable.ConstantState {
        public C0126a() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return a.this;
        }
    }

    public a(i iVar) {
        this.f7082o = iVar;
        Paint paint = new Paint(1);
        this.f7069b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    public final RectF a() {
        this.f7073f.set(getBounds());
        return this.f7073f;
    }

    public final void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f7080m = colorStateList.getColorForState(getState(), this.f7080m);
        }
        this.f7083p = colorStateList;
        this.f7081n = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f7081n) {
            Paint paint = this.f7069b;
            Rect rect = this.f7071d;
            copyBounds(rect);
            float fHeight = this.f7075h / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{a0.a.b(this.f7076i, this.f7080m), a0.a.b(this.f7077j, this.f7080m), a0.a.b(a0.a.e(this.f7077j, 0), this.f7080m), a0.a.b(a0.a.e(this.f7079l, 0), this.f7080m), a0.a.b(this.f7079l, this.f7080m), a0.a.b(this.f7078k, this.f7080m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP));
            this.f7081n = false;
        }
        float strokeWidth = this.f7069b.getStrokeWidth() / 2.0f;
        copyBounds(this.f7071d);
        this.f7072e.set(this.f7071d);
        float fMin = Math.min(this.f7082o.f10542e.a(a()), this.f7072e.width() / 2.0f);
        if (this.f7082o.e(a())) {
            this.f7072e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f7072e, fMin, fMin, this.f7069b);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f7074g;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f7075h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public final void getOutline(Outline outline) {
        if (this.f7082o.e(a())) {
            outline.setRoundRect(getBounds(), this.f7082o.f10542e.a(a()));
            return;
        }
        copyBounds(this.f7071d);
        this.f7072e.set(this.f7071d);
        this.f7068a.a(this.f7082o, 1.0f, this.f7072e, null, this.f7070c);
        if (this.f7070c.isConvex()) {
            outline.setConvexPath(this.f7070c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        if (!this.f7082o.e(a())) {
            return true;
        }
        int iRound = Math.round(this.f7075h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f7083p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f7081n = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f7083p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f7080m)) != this.f7080m) {
            this.f7081n = true;
            this.f7080m = colorForState;
        }
        if (this.f7081n) {
            invalidateSelf();
        }
        return this.f7081n;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        this.f7069b.setAlpha(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f7069b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
