package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.SeekBar;
import androidx.appcompat.R;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AppCompatSeekBarHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends v {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SeekBar f1159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f1160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f1161f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f1162g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1163h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1164i;

    public a0(SeekBar seekBar) {
        super(seekBar);
        this.f1161f = null;
        this.f1162g = null;
        this.f1163h = false;
        this.f1164i = false;
        this.f1159d = seekBar;
    }

    @Override // androidx.appcompat.widget.v
    public final void a(AttributeSet attributeSet, int i10) {
        super.a(attributeSet, i10);
        Context context = this.f1159d.getContext();
        int[] iArr = R.styleable.AppCompatSeekBar;
        f1 f1VarQ = f1.q(context, attributeSet, iArr, i10);
        SeekBar seekBar = this.f1159d;
        j0.a0.o(seekBar, seekBar.getContext(), iArr, attributeSet, f1VarQ.f1253b, i10);
        Drawable drawableH = f1VarQ.h(R.styleable.AppCompatSeekBar_android_thumb);
        if (drawableH != null) {
            this.f1159d.setThumb(drawableH);
        }
        Drawable drawableG = f1VarQ.g(R.styleable.AppCompatSeekBar_tickMark);
        Drawable drawable = this.f1160e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f1160e = drawableG;
        if (drawableG != null) {
            drawableG.setCallback(this.f1159d);
            SeekBar seekBar2 = this.f1159d;
            WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
            b0.a.c.b(drawableG, j0.a0.e.d(seekBar2));
            if (drawableG.isStateful()) {
                drawableG.setState(this.f1159d.getDrawableState());
            }
            c();
        }
        this.f1159d.invalidate();
        int i11 = R.styleable.AppCompatSeekBar_tickMarkTintMode;
        if (f1VarQ.o(i11)) {
            this.f1162g = l0.d(f1VarQ.j(i11, -1), this.f1162g);
            this.f1164i = true;
        }
        int i12 = R.styleable.AppCompatSeekBar_tickMarkTint;
        if (f1VarQ.o(i12)) {
            this.f1161f = f1VarQ.c(i12);
            this.f1163h = true;
        }
        f1VarQ.r();
        c();
    }

    public final void c() {
        Drawable drawable = this.f1160e;
        if (drawable != null) {
            if (this.f1163h || this.f1164i) {
                Drawable drawableMutate = drawable.mutate();
                this.f1160e = drawableMutate;
                if (this.f1163h) {
                    b0.a.b.h(drawableMutate, this.f1161f);
                }
                if (this.f1164i) {
                    b0.a.b.i(this.f1160e, this.f1162g);
                }
                if (this.f1160e.isStateful()) {
                    this.f1160e.setState(this.f1159d.getDrawableState());
                }
            }
        }
    }

    public final void d(Canvas canvas) {
        if (this.f1160e != null) {
            int max = this.f1159d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1160e.getIntrinsicWidth();
                int intrinsicHeight = this.f1160e.getIntrinsicHeight();
                int i10 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i11 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1160e.setBounds(-i10, -i11, i10, i11);
                float width = ((this.f1159d.getWidth() - this.f1159d.getPaddingLeft()) - this.f1159d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f1159d.getPaddingLeft(), this.f1159d.getHeight() / 2);
                for (int i12 = 0; i12 <= max; i12++) {
                    this.f1160e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
