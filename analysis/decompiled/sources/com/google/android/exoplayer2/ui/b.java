package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import m5.g0;
import y0.x;

/* JADX INFO: compiled from: DefaultTimeBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends View implements f {
    public static final /* synthetic */ int U = 0;
    public final int A;
    public final StringBuilder B;
    public final Formatter C;
    public final x D;
    public final CopyOnWriteArraySet<f.a> E;
    public final Point F;
    public final float G;
    public int H;
    public long I;
    public int J;
    public Rect K;
    public float L;
    public boolean M;
    public long N;
    public long O;
    public long P;
    public long Q;
    public int R;
    public long[] S;
    public boolean[] T;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f4877h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rect f4878i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Rect f4879j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Rect f4880k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Paint f4881l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Paint f4882m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Paint f4883n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Paint f4884o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Paint f4885p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Paint f4886q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Drawable f4887r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f4888s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f4889t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f4890u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f4891v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f4892w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f4893x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f4894y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f4895z;

    public b(Context context, AttributeSet attributeSet) {
        Paint paint;
        super(context, null, 0);
        this.f4877h = new Rect();
        this.f4878i = new Rect();
        this.f4879j = new Rect();
        this.f4880k = new Rect();
        Paint paint2 = new Paint();
        this.f4881l = paint2;
        Paint paint3 = new Paint();
        this.f4882m = paint3;
        Paint paint4 = new Paint();
        this.f4883n = paint4;
        Paint paint5 = new Paint();
        this.f4884o = paint5;
        Paint paint6 = new Paint();
        this.f4885p = paint6;
        Paint paint7 = new Paint();
        this.f4886q = paint7;
        paint7.setAntiAlias(true);
        this.E = new CopyOnWriteArraySet<>();
        this.F = new Point();
        float f10 = context.getResources().getDisplayMetrics().density;
        this.G = f10;
        this.A = c(f10, -50);
        int iC = c(f10, 4);
        int iC2 = c(f10, 26);
        int iC3 = c(f10, 4);
        int iC4 = c(f10, 12);
        int iC5 = c(f10, 0);
        int iC6 = c(f10, 16);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.DefaultTimeBar, 0, 0);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.DefaultTimeBar_scrubber_drawable);
                this.f4887r = drawable;
                if (drawable != null) {
                    int i10 = g0.f10384a;
                    if (i10 >= 23) {
                        paint = paint5;
                        int layoutDirection = getLayoutDirection();
                        if (i10 >= 23) {
                            drawable.setLayoutDirection(layoutDirection);
                        }
                    } else {
                        paint = paint5;
                    }
                    iC2 = Math.max(drawable.getMinimumHeight(), iC2);
                } else {
                    paint = paint5;
                }
                this.f4888s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_bar_height, iC);
                this.f4889t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_touch_target_height, iC2);
                this.f4890u = typedArrayObtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_bar_gravity, 0);
                this.f4891v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_ad_marker_width, iC3);
                this.f4892w = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_scrubber_enabled_size, iC4);
                this.f4893x = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_scrubber_disabled_size, iC5);
                this.f4894y = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_scrubber_dragged_size, iC6);
                int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_played_color, -1);
                int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_scrubber_color, -1);
                int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_buffered_color, -855638017);
                int i14 = typedArrayObtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_unplayed_color, 872415231);
                int i15 = typedArrayObtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_ad_marker_color, -1291845888);
                int i16 = typedArrayObtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_played_ad_marker_color, 872414976);
                paint2.setColor(i11);
                paint7.setColor(i12);
                paint3.setColor(i13);
                paint4.setColor(i14);
                paint.setColor(i15);
                paint6.setColor(i16);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.f4888s = iC;
            this.f4889t = iC2;
            this.f4890u = 0;
            this.f4891v = iC3;
            this.f4892w = iC4;
            this.f4893x = iC5;
            this.f4894y = iC6;
            paint2.setColor(-1);
            paint7.setColor(-1);
            paint3.setColor(-855638017);
            paint4.setColor(872415231);
            paint5.setColor(-1291845888);
            paint6.setColor(872414976);
            this.f4887r = null;
        }
        StringBuilder sb2 = new StringBuilder();
        this.B = sb2;
        this.C = new Formatter(sb2, Locale.getDefault());
        this.D = new x(this, 3);
        Drawable drawable2 = this.f4887r;
        if (drawable2 != null) {
            this.f4895z = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f4895z = (Math.max(this.f4893x, Math.max(this.f4892w, this.f4894y)) + 1) / 2;
        }
        this.L = 1.0f;
        new ValueAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: k5.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                com.google.android.exoplayer2.ui.b bVar = this.f9698a;
                Objects.requireNonNull(bVar);
                bVar.L = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                bVar.invalidate(bVar.f4877h);
            }
        });
        this.O = -9223372036854775807L;
        this.I = -9223372036854775807L;
        this.H = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static int c(float f10, int i10) {
        return (int) ((i10 * f10) + 0.5f);
    }

    private long getPositionIncrement() {
        long j10 = this.I;
        if (j10 != -9223372036854775807L) {
            return j10;
        }
        long j11 = this.O;
        if (j11 == -9223372036854775807L) {
            return 0L;
        }
        return j11 / ((long) this.H);
    }

    private String getProgressText() {
        return g0.C(this.B, this.C, this.P);
    }

    private long getScrubberPosition() {
        if (this.f4878i.width() <= 0 || this.O == -9223372036854775807L) {
            return 0L;
        }
        return (((long) this.f4880k.width()) * this.O) / ((long) this.f4878i.width());
    }

    @Override // com.google.android.exoplayer2.ui.f
    public final void a(long[] jArr, boolean[] zArr, int i10) {
        m5.a.a(i10 == 0 || !(jArr == null || zArr == null));
        this.R = i10;
        this.S = jArr;
        this.T = zArr;
        h();
    }

    @Override // com.google.android.exoplayer2.ui.f
    public final void b(f.a aVar) {
        this.E.add(aVar);
    }

    public final void d(float f10) {
        Rect rect = this.f4880k;
        Rect rect2 = this.f4878i;
        rect.right = g0.i((int) f10, rect2.left, rect2.right);
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        i();
    }

    public final boolean e(long j10) {
        long j11 = this.O;
        if (j11 <= 0) {
            return false;
        }
        long j12 = this.M ? this.N : this.P;
        long j13 = g0.j(j12 + j10, 0L, j11);
        if (j13 == j12) {
            return false;
        }
        if (this.M) {
            j(j13);
        } else {
            f(j13);
        }
        h();
        return true;
    }

    public final void f(long j10) {
        this.N = j10;
        this.M = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<f.a> it = this.E.iterator();
        while (it.hasNext()) {
            it.next().E(j10);
        }
    }

    public final void g(boolean z10) {
        removeCallbacks(this.D);
        this.M = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<f.a> it = this.E.iterator();
        while (it.hasNext()) {
            it.next().H(this.N, z10);
        }
    }

    @Override // com.google.android.exoplayer2.ui.f
    public long getPreferredUpdateDelay() {
        int iWidth = (int) (this.f4878i.width() / this.G);
        if (iWidth != 0) {
            long j10 = this.O;
            if (j10 != 0 && j10 != -9223372036854775807L) {
                return j10 / ((long) iWidth);
            }
        }
        return Long.MAX_VALUE;
    }

    public final void h() {
        this.f4879j.set(this.f4878i);
        this.f4880k.set(this.f4878i);
        long j10 = this.M ? this.N : this.P;
        if (this.O > 0) {
            int iWidth = (int) ((((long) this.f4878i.width()) * this.Q) / this.O);
            Rect rect = this.f4879j;
            Rect rect2 = this.f4878i;
            rect.right = Math.min(rect2.left + iWidth, rect2.right);
            int iWidth2 = (int) ((((long) this.f4878i.width()) * j10) / this.O);
            Rect rect3 = this.f4880k;
            Rect rect4 = this.f4878i;
            rect3.right = Math.min(rect4.left + iWidth2, rect4.right);
        } else {
            Rect rect5 = this.f4879j;
            int i10 = this.f4878i.left;
            rect5.right = i10;
            this.f4880k.right = i10;
        }
        invalidate(this.f4877h);
    }

    public final void i() {
        Drawable drawable = this.f4887r;
        if (drawable != null && drawable.isStateful() && this.f4887r.setState(getDrawableState())) {
            invalidate();
        }
    }

    public final void j(long j10) {
        if (this.N == j10) {
            return;
        }
        this.N = j10;
        Iterator<f.a> it = this.E.iterator();
        while (it.hasNext()) {
            it.next().J(j10);
        }
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f4887r;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.save();
        int iHeight = this.f4878i.height();
        int iCenterY = this.f4878i.centerY() - (iHeight / 2);
        int i10 = iHeight + iCenterY;
        if (this.O <= 0) {
            Rect rect = this.f4878i;
            canvas.drawRect(rect.left, iCenterY, rect.right, i10, this.f4883n);
        } else {
            Rect rect2 = this.f4879j;
            int i11 = rect2.left;
            int i12 = rect2.right;
            int iMax = Math.max(Math.max(this.f4878i.left, i12), this.f4880k.right);
            int i13 = this.f4878i.right;
            if (iMax < i13) {
                canvas.drawRect(iMax, iCenterY, i13, i10, this.f4883n);
            }
            int iMax2 = Math.max(i11, this.f4880k.right);
            if (i12 > iMax2) {
                canvas.drawRect(iMax2, iCenterY, i12, i10, this.f4882m);
            }
            if (this.f4880k.width() > 0) {
                Rect rect3 = this.f4880k;
                canvas.drawRect(rect3.left, iCenterY, rect3.right, i10, this.f4881l);
            }
            if (this.R != 0) {
                long[] jArr = this.S;
                Objects.requireNonNull(jArr);
                boolean[] zArr = this.T;
                Objects.requireNonNull(zArr);
                int i14 = this.f4891v / 2;
                for (int i15 = 0; i15 < this.R; i15++) {
                    int iWidth = ((int) ((((long) this.f4878i.width()) * g0.j(jArr[i15], 0L, this.O)) / this.O)) - i14;
                    Rect rect4 = this.f4878i;
                    int iMin = Math.min(rect4.width() - this.f4891v, Math.max(0, iWidth)) + rect4.left;
                    canvas.drawRect(iMin, iCenterY, iMin + this.f4891v, i10, zArr[i15] ? this.f4885p : this.f4884o);
                }
            }
        }
        if (this.O > 0) {
            Rect rect5 = this.f4880k;
            int i16 = g0.i(rect5.right, rect5.left, this.f4878i.right);
            int iCenterY2 = this.f4880k.centerY();
            Drawable drawable = this.f4887r;
            if (drawable == null) {
                canvas.drawCircle(i16, iCenterY2, (int) ((((this.M || isFocused()) ? this.f4894y : isEnabled() ? this.f4892w : this.f4893x) * this.L) / 2.0f), this.f4886q);
            } else {
                int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.L)) / 2;
                int intrinsicHeight = ((int) (this.f4887r.getIntrinsicHeight() * this.L)) / 2;
                this.f4887r.setBounds(i16 - intrinsicWidth, iCenterY2 - intrinsicHeight, i16 + intrinsicWidth, iCenterY2 + intrinsicHeight);
                this.f4887r.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (!this.M || z10) {
            return;
        }
        g(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.O <= 0) {
            return;
        }
        if (g0.f10384a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else {
            accessibilityNodeInfo.addAction(AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i10 != 66) {
                switch (i10) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (e(positionIncrement)) {
                            removeCallbacks(this.D);
                            postDelayed(this.D, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (e(positionIncrement)) {
                            removeCallbacks(this.D);
                            postDelayed(this.D, 1000L);
                            return true;
                        }
                        break;
                    case 23:
                        if (this.M) {
                            g(false);
                            return true;
                        }
                        break;
                }
            } else if (this.M) {
                g(false);
                return true;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int paddingBottom;
        int iMax;
        Rect rect;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i14 - getPaddingRight();
        int i16 = this.f4895z;
        if (this.f4890u == 1) {
            paddingBottom = (i15 - getPaddingBottom()) - this.f4889t;
            int paddingBottom2 = i15 - getPaddingBottom();
            int i17 = this.f4888s;
            iMax = (paddingBottom2 - i17) - Math.max(i16 - (i17 / 2), 0);
        } else {
            paddingBottom = (i15 - this.f4889t) / 2;
            iMax = (i15 - this.f4888s) / 2;
        }
        this.f4877h.set(paddingLeft, paddingBottom, paddingRight, this.f4889t + paddingBottom);
        Rect rect2 = this.f4878i;
        Rect rect3 = this.f4877h;
        rect2.set(rect3.left + i16, iMax, rect3.right - i16, this.f4888s + iMax);
        if (g0.f10384a >= 29 && ((rect = this.K) == null || rect.width() != i14 || this.K.height() != i15)) {
            Rect rect4 = new Rect(0, 0, i14, i15);
            this.K = rect4;
            setSystemGestureExclusionRects(Collections.singletonList(rect4));
        }
        h();
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == 0) {
            size = this.f4889t;
        } else if (mode != 1073741824) {
            size = Math.min(this.f4889t, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i10), size);
        i();
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        Drawable drawable = this.f4887r;
        if (drawable != null) {
            if (g0.f10384a >= 23 && drawable.setLayoutDirection(i10)) {
                invalidate();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0060  */
    /* JADX WARN: Code duplicated, block: B:27:0x0066  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.O > 0) {
            this.F.set((int) motionEvent.getX(), (int) motionEvent.getY());
            Point point = this.F;
            int i10 = point.x;
            int i11 = point.y;
            int action = motionEvent.getAction();
            if (action == 0) {
                float f10 = i10;
                if (this.f4877h.contains((int) f10, i11)) {
                    d(f10);
                    f(getScrubberPosition());
                    h();
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                if (this.M) {
                    g(motionEvent.getAction() == 3);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.M) {
                        g(motionEvent.getAction() == 3);
                        return true;
                    }
                }
            } else if (this.M) {
                if (i11 < this.A) {
                    int i12 = this.J;
                    d(((i10 - i12) / 3) + i12);
                } else {
                    this.J = i10;
                    d(i10);
                }
                j(getScrubberPosition());
                h();
                invalidate();
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i10, Bundle bundle) {
        if (super.performAccessibilityAction(i10, bundle)) {
            return true;
        }
        if (this.O <= 0) {
            return false;
        }
        if (i10 == 8192) {
            if (e(-getPositionIncrement())) {
                g(false);
            }
        } else {
            if (i10 != 4096) {
                return false;
            }
            if (e(getPositionIncrement())) {
                g(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i10) {
        this.f4884o.setColor(i10);
        invalidate(this.f4877h);
    }

    public void setBufferedColor(int i10) {
        this.f4882m.setColor(i10);
        invalidate(this.f4877h);
    }

    @Override // com.google.android.exoplayer2.ui.f
    public void setBufferedPosition(long j10) {
        if (this.Q == j10) {
            return;
        }
        this.Q = j10;
        h();
    }

    @Override // com.google.android.exoplayer2.ui.f
    public void setDuration(long j10) {
        if (this.O == j10) {
            return;
        }
        this.O = j10;
        if (this.M && j10 == -9223372036854775807L) {
            g(true);
        }
        h();
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.f
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (!this.M || z10) {
            return;
        }
        g(true);
    }

    public void setKeyCountIncrement(int i10) {
        m5.a.a(i10 > 0);
        this.H = i10;
        this.I = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j10) {
        m5.a.a(j10 > 0);
        this.H = -1;
        this.I = j10;
    }

    public void setPlayedAdMarkerColor(int i10) {
        this.f4885p.setColor(i10);
        invalidate(this.f4877h);
    }

    public void setPlayedColor(int i10) {
        this.f4881l.setColor(i10);
        invalidate(this.f4877h);
    }

    @Override // com.google.android.exoplayer2.ui.f
    public void setPosition(long j10) {
        if (this.P == j10) {
            return;
        }
        this.P = j10;
        setContentDescription(getProgressText());
        h();
    }

    public void setScrubberColor(int i10) {
        this.f4886q.setColor(i10);
        invalidate(this.f4877h);
    }

    public void setUnplayedColor(int i10) {
        this.f4883n.setColor(i10);
        invalidate(this.f4877h);
    }
}
