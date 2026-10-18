package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.R;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public x0 f967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f969k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f970l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f971m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f972n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f973o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f974p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f975q;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b bVar = new b(this);
        WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
        j0.a0.d.q(this, bVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.f970l = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_background);
        this.f971m = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundStacked);
        this.f975q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
        boolean z10 = true;
        if (getId() == R.id.split_action_bar) {
            this.f973o = true;
            this.f972n = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f973o ? this.f970l != null || this.f971m != null : this.f972n != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
    }

    public final int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    public final boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f970l;
        if (drawable != null && drawable.isStateful()) {
            this.f970l.setState(getDrawableState());
        }
        Drawable drawable2 = this.f971m;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f971m.setState(getDrawableState());
        }
        Drawable drawable3 = this.f972n;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f972n.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f967i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f970l;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f971m;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f972n;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f968j = findViewById(R.id.action_bar);
        this.f969k = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f966h || super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0048 A[PHI: r0
      0x0048: PHI (r0v8 boolean) = (r0v1 boolean), (r0v1 boolean), (r0v0 boolean) binds: [B:31:0x00a5, B:33:0x00a9, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        Drawable drawable;
        super.onLayout(z10, i10, i11, i12, i13);
        x0 x0Var = this.f967i;
        boolean z11 = true;
        boolean z12 = false;
        boolean z13 = (x0Var == null || x0Var.getVisibility() == 8) ? false : true;
        if (x0Var != null && x0Var.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) x0Var.getLayoutParams();
            int measuredHeight2 = measuredHeight - x0Var.getMeasuredHeight();
            int i14 = layoutParams.bottomMargin;
            x0Var.layout(i10, measuredHeight2 - i14, i12, measuredHeight - i14);
        }
        if (this.f973o) {
            Drawable drawable2 = this.f972n;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z11 = z12;
            }
        } else {
            if (this.f970l != null) {
                if (this.f968j.getVisibility() == 0) {
                    this.f970l.setBounds(this.f968j.getLeft(), this.f968j.getTop(), this.f968j.getRight(), this.f968j.getBottom());
                } else {
                    View view = this.f969k;
                    if (view == null || view.getVisibility() != 0) {
                        this.f970l.setBounds(0, 0, 0, 0);
                    } else {
                        this.f970l.setBounds(this.f969k.getLeft(), this.f969k.getTop(), this.f969k.getRight(), this.f969k.getBottom());
                    }
                }
                z12 = true;
            }
            this.f974p = z13;
            if (!z13 || (drawable = this.f971m) == null) {
                z11 = z12;
            } else {
                drawable.setBounds(x0Var.getLeft(), x0Var.getTop(), x0Var.getRight(), x0Var.getBottom());
            }
        }
        if (z11) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        int iA;
        int i12;
        if (this.f968j == null && View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE && (i12 = this.f975q) >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i12, View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f968j == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        x0 x0Var = this.f967i;
        if (x0Var == null || x0Var.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        if (b(this.f968j)) {
            iA = !b(this.f969k) ? a(this.f969k) : 0;
        } else {
            iA = a(this.f968j);
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(a(this.f967i) + iA, mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i11) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f970l;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f970l);
        }
        this.f970l = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f968j;
            if (view != null) {
                this.f970l.setBounds(view.getLeft(), this.f968j.getTop(), this.f968j.getRight(), this.f968j.getBottom());
            }
        }
        boolean z10 = true;
        if (!this.f973o ? this.f970l != null || this.f971m != null : this.f972n != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f972n;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f972n);
        }
        this.f972n = drawable;
        boolean z10 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f973o && (drawable2 = this.f972n) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f973o ? !(this.f970l != null || this.f971m != null) : this.f972n == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f971m;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f971m);
        }
        this.f971m = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f974p && (drawable2 = this.f971m) != null) {
                drawable2.setBounds(this.f967i.getLeft(), this.f967i.getTop(), this.f967i.getRight(), this.f967i.getBottom());
            }
        }
        boolean z10 = true;
        if (!this.f973o ? this.f970l != null || this.f971m != null : this.f972n != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(x0 x0Var) {
        x0 x0Var2 = this.f967i;
        if (x0Var2 != null) {
            removeView(x0Var2);
        }
        this.f967i = x0Var;
        if (x0Var != null) {
            addView(x0Var);
            ViewGroup.LayoutParams layoutParams = x0Var.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            x0Var.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z10) {
        this.f966h = z10;
        setDescendantFocusability(z10 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f970l;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
        Drawable drawable2 = this.f971m;
        if (drawable2 != null) {
            drawable2.setVisible(z10, false);
        }
        Drawable drawable3 = this.f972n;
        if (drawable3 != null) {
            drawable3.setVisible(z10, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10) {
        if (i10 != 0) {
            return super.startActionModeForChild(view, callback, i10);
        }
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f970l && !this.f973o) || (drawable == this.f971m && this.f974p) || ((drawable == this.f972n && this.f973o) || super.verifyDrawable(drawable));
    }
}
