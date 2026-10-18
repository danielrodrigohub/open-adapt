package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AppCompatRatingBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class x extends RatingBar {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v f1480h;

    /* JADX WARN: Illegal instructions before constructor call */
    public x(Context context, AttributeSet attributeSet) {
        int i10 = R.attr.ratingBarStyle;
        super(context, attributeSet, i10);
        a1.a(this, getContext());
        v vVar = new v(this);
        this.f1480h = vVar;
        vVar.a(attributeSet, i10);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        Bitmap bitmap = this.f1480h.f1467b;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i10, 0), getMeasuredHeight());
        }
    }
}
