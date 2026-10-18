package g2;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import b2.r;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: SolidLayer.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends b {
    public final RectF D;
    public final z1.a E;
    public final float[] F;
    public final Path G;
    public final f H;
    public b2.a<ColorFilter, ColorFilter> I;

    public i(e0 e0Var, f fVar) {
        super(e0Var, fVar);
        this.D = new RectF();
        z1.a aVar = new z1.a();
        this.E = aVar;
        this.F = new float[8];
        this.G = new Path();
        this.H = fVar;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(fVar.f7599l);
    }

    @Override // g2.b, a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        RectF rectF2 = this.D;
        f fVar = this.H;
        rectF2.set(0.0f, 0.0f, fVar.f7597j, fVar.f7598k);
        this.f7576o.mapRect(this.D);
        rectF.set(this.D);
    }

    @Override // g2.b, d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        super.g(t10, cVar);
        if (t10 == i0.K) {
            if (cVar == null) {
                this.I = null;
            } else {
                this.I = new r(cVar, null);
            }
        }
    }

    @Override // g2.b
    public final void l(Canvas canvas, Matrix matrix, int i10) {
        int iAlpha = Color.alpha(this.H.f7599l);
        if (iAlpha == 0) {
            return;
        }
        b2.a<Integer, Integer> aVar = this.f7585x.f3222j;
        int iIntValue = (int) ((((iAlpha / 255.0f) * (aVar == null ? 100 : aVar.f().intValue())) / 100.0f) * (i10 / 255.0f) * 255.0f);
        this.E.setAlpha(iIntValue);
        b2.a<ColorFilter, ColorFilter> aVar2 = this.I;
        if (aVar2 != null) {
            this.E.setColorFilter(aVar2.f());
        }
        if (iIntValue > 0) {
            float[] fArr = this.F;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            f fVar = this.H;
            float f10 = fVar.f7597j;
            fArr[2] = f10;
            fArr[3] = 0.0f;
            fArr[4] = f10;
            float f11 = fVar.f7598k;
            fArr[5] = f11;
            fArr[6] = 0.0f;
            fArr[7] = f11;
            matrix.mapPoints(fArr);
            this.G.reset();
            Path path = this.G;
            float[] fArr2 = this.F;
            path.moveTo(fArr2[0], fArr2[1]);
            Path path2 = this.G;
            float[] fArr3 = this.F;
            path2.lineTo(fArr3[2], fArr3[3]);
            Path path3 = this.G;
            float[] fArr4 = this.F;
            path3.lineTo(fArr4[4], fArr4[5]);
            Path path4 = this.G;
            float[] fArr5 = this.F;
            path4.lineTo(fArr5[6], fArr5[7]);
            Path path5 = this.G;
            float[] fArr6 = this.F;
            path5.lineTo(fArr6[0], fArr6[1]);
            this.G.close();
            canvas.drawPath(this.G, this.E);
        }
    }
}
