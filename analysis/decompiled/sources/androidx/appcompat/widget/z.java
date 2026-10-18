package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AppCompatSeekBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class z extends SeekBar {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a0 f1483h;

    /* JADX WARN: Illegal instructions before constructor call */
    public z(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.seekBarStyle;
        super(context, attributeSet, i10);
        a1.a(this, getContext());
        a0 a0Var = new a0(this);
        this.f1483h = a0Var;
        a0Var.a(attributeSet, i10);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        a0 a0Var = this.f1483h;
        Drawable drawable = a0Var.f1160e;
        if (drawable != null && drawable.isStateful() && drawable.setState(a0Var.f1159d.getDrawableState())) {
            a0Var.f1159d.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1483h.f1160e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f1483h.d(canvas);
    }
}
