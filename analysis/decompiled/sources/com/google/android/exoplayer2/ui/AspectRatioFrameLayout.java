package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f4815h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f4816i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f4817j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4818k;

    public interface a {
        void a();
    }

    public final class b implements Runnable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f4819h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f4820i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f4821j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f4822k;

        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4822k = false;
            a aVar = AspectRatioFrameLayout.this.f4816i;
            if (aVar == null) {
                return;
            }
            aVar.a();
        }
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4818k = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.f4818k = typedArrayObtainStyledAttributes.getInt(R.styleable.AspectRatioFrameLayout_resize_mode, 0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.f4815h = new b();
    }

    public int getResizeMode() {
        return this.f4818k;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        float f10;
        float f11;
        super.onMeasure(i10, i11);
        if (this.f4817j <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f12 = measuredWidth;
        float f13 = measuredHeight;
        float f14 = f12 / f13;
        float f15 = (this.f4817j / f14) - 1.0f;
        if (Math.abs(f15) <= 0.01f) {
            b bVar = this.f4815h;
            bVar.f4819h = this.f4817j;
            bVar.f4820i = f14;
            bVar.f4821j = false;
            if (bVar.f4822k) {
                return;
            }
            bVar.f4822k = true;
            AspectRatioFrameLayout.this.post(bVar);
            return;
        }
        int i12 = this.f4818k;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    f10 = this.f4817j;
                } else if (i12 == 4) {
                    if (f15 > 0.0f) {
                        f10 = this.f4817j;
                    } else {
                        f11 = this.f4817j;
                    }
                }
                measuredWidth = (int) (f13 * f10);
            } else {
                f11 = this.f4817j;
            }
            measuredHeight = (int) (f12 / f11);
        } else if (f15 > 0.0f) {
            f11 = this.f4817j;
            measuredHeight = (int) (f12 / f11);
        } else {
            f10 = this.f4817j;
            measuredWidth = (int) (f13 * f10);
        }
        b bVar2 = this.f4815h;
        bVar2.f4819h = this.f4817j;
        bVar2.f4820i = f14;
        bVar2.f4821j = true;
        if (!bVar2.f4822k) {
            bVar2.f4822k = true;
            AspectRatioFrameLayout.this.post(bVar2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f10) {
        if (this.f4817j != f10) {
            this.f4817j = f10;
            requestLayout();
        }
    }

    public void setAspectRatioListener(a aVar) {
        this.f4816i = aVar;
    }

    public void setResizeMode(int i10) {
        if (this.f4818k != i10) {
            this.f4818k = i10;
            requestLayout();
        }
    }
}
