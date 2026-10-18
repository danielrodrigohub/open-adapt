package q6;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;

/* JADX INFO: compiled from: CutoutDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends m6.f {
    public final RectF G;

    public e() {
        this(null);
    }

    @Override // m6.f
    public final void g(Canvas canvas) {
        if (this.G.isEmpty()) {
            super.g(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.G);
        } else {
            canvas.clipRect(this.G, Region.Op.DIFFERENCE);
        }
        super.g(canvas);
        canvas.restore();
    }

    public final void x(float f10, float f11, float f12, float f13) {
        RectF rectF = this.G;
        if (f10 == rectF.left && f11 == rectF.top && f12 == rectF.right && f13 == rectF.bottom) {
            return;
        }
        rectF.set(f10, f11, f12, f13);
        invalidateSelf();
    }

    public e(m6.i iVar) {
        super(iVar == null ? new m6.i() : iVar);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.G = new RectF();
    }
}
