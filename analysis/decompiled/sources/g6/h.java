package g6;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.p0;
import com.google.android.material.R;

/* JADX INFO: compiled from: ForegroundLinearLayout.java */
/* JADX INFO: loaded from: classes.dex */
public class h extends p0 {
    public boolean A;
    public boolean B;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Drawable f7742w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Rect f7743x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Rect f7744y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f7745z;

    public h(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f7742w;
        if (drawable != null) {
            if (this.B) {
                this.B = false;
                Rect rect = this.f7743x;
                Rect rect2 = this.f7744y;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.A) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f7745z, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public final void drawableHotspotChanged(float f10, float f11) {
        super.drawableHotspotChanged(f10, f11);
        Drawable drawable = this.f7742w;
        if (drawable != null) {
            drawable.setHotspot(f10, f11);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f7742w;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f7742w.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f7742w;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f7745z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f7742w;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.p0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.B = z10 | this.B;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.B = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f7742w;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f7742w);
            }
            this.f7742w = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f7745z == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i10) {
        if (this.f7745z != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= 8388611;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.f7745z = i10;
            if (i10 == 119 && this.f7742w != null) {
                this.f7742w.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7742w;
    }

    public h(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, 0);
        this.f7743x = new Rect();
        this.f7744y = new Rect();
        this.f7745z = 119;
        this.A = true;
        this.B = false;
        TypedArray typedArrayD = n.d(context, attributeSet, R.styleable.ForegroundLinearLayout, 0, 0, new int[0]);
        this.f7745z = typedArrayD.getInt(R.styleable.ForegroundLinearLayout_android_foregroundGravity, this.f7745z);
        Drawable drawable = typedArrayD.getDrawable(R.styleable.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.A = typedArrayD.getBoolean(R.styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
        typedArrayD.recycle();
    }
}
