package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;

/* JADX INFO: compiled from: Placeholder.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends View {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f1719i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1720j;

    public View getContent() {
        return this.f1719i;
    }

    public int getEmptyVisibility() {
        return this.f1720j;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((rect.height() / 2.0f) + (iHeight / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i10) {
        View viewFindViewById;
        if (this.f1718h == i10) {
            return;
        }
        View view = this.f1719i;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.a) this.f1719i.getLayoutParams()).f1541f0 = false;
            this.f1719i = null;
        }
        this.f1718h = i10;
        if (i10 == -1 || (viewFindViewById = ((View) getParent()).findViewById(i10)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i10) {
        this.f1720j = i10;
    }
}
