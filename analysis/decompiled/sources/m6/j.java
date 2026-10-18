package m6;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.lifecycle.k0;
import java.util.BitSet;
import java.util.Objects;

/* JADX INFO: compiled from: ShapeAppearancePathProvider.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k[] f10562a = new k[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Matrix[] f10563b = new Matrix[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix[] f10564c = new Matrix[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final PointF f10565d = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Path f10566e = new Path();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Path f10567f = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final k f10568g = new k();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f10569h = new float[2];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f10570i = new float[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Path f10571j = new Path();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Path f10572k = new Path();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f10573l = true;

    /* JADX INFO: compiled from: ShapeAppearancePathProvider.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final j f10574a = new j();
    }

    /* JADX INFO: compiled from: ShapeAppearancePathProvider.java */
    public interface b {
    }

    public j() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.f10562a[i10] = new k();
            this.f10563b[i10] = new Matrix();
            this.f10564c[i10] = new Matrix();
        }
    }

    public final void a(i iVar, float f10, RectF rectF, b bVar, Path path) {
        int i10;
        e eVar;
        c cVar;
        k0 k0Var;
        path.rewind();
        this.f10566e.rewind();
        this.f10567f.rewind();
        this.f10567f.addRect(rectF, Path.Direction.CW);
        int i11 = 0;
        while (true) {
            if (i11 >= 4) {
                break;
            }
            if (i11 == 1) {
                cVar = iVar.f10544g;
            } else if (i11 != 2) {
                cVar = i11 != 3 ? iVar.f10543f : iVar.f10542e;
            } else {
                cVar = iVar.f10545h;
            }
            if (i11 == 1) {
                k0Var = iVar.f10540c;
            } else if (i11 != 2) {
                k0Var = i11 != 3 ? iVar.f10539b : iVar.f10538a;
            } else {
                k0Var = iVar.f10541d;
            }
            k kVar = this.f10562a[i11];
            Objects.requireNonNull(k0Var);
            k0Var.h(kVar, f10, cVar.a(rectF));
            int i12 = i11 + 1;
            float f11 = i12 * 90;
            this.f10563b[i11].reset();
            PointF pointF = this.f10565d;
            if (i11 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i11 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i11 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            Matrix matrix = this.f10563b[i11];
            PointF pointF2 = this.f10565d;
            matrix.setTranslate(pointF2.x, pointF2.y);
            this.f10563b[i11].preRotate(f11);
            float[] fArr = this.f10569h;
            k[] kVarArr = this.f10562a;
            fArr[0] = kVarArr[i11].f10577c;
            fArr[1] = kVarArr[i11].f10578d;
            this.f10563b[i11].mapPoints(fArr);
            this.f10564c[i11].reset();
            Matrix matrix2 = this.f10564c[i11];
            float[] fArr2 = this.f10569h;
            matrix2.setTranslate(fArr2[0], fArr2[1]);
            this.f10564c[i11].preRotate(f11);
            i11 = i12;
        }
        int i13 = 0;
        for (i10 = 4; i13 < i10; i10 = 4) {
            float[] fArr3 = this.f10569h;
            k[] kVarArr2 = this.f10562a;
            fArr3[0] = kVarArr2[i13].f10575a;
            fArr3[1] = kVarArr2[i13].f10576b;
            this.f10563b[i13].mapPoints(fArr3);
            if (i13 == 0) {
                float[] fArr4 = this.f10569h;
                path.moveTo(fArr4[0], fArr4[1]);
            } else {
                float[] fArr5 = this.f10569h;
                path.lineTo(fArr5[0], fArr5[1]);
            }
            this.f10562a[i13].c(this.f10563b[i13], path);
            if (bVar != null) {
                k kVar2 = this.f10562a[i13];
                Matrix matrix3 = this.f10563b[i13];
                f.a aVar = (f.a) bVar;
                BitSet bitSet = f.this.f10498k;
                Objects.requireNonNull(kVar2);
                bitSet.set(i13, false);
                f.this.f10496i[i13] = kVar2.d(matrix3);
            }
            int i14 = i13 + 1;
            int i15 = i14 % 4;
            float[] fArr6 = this.f10569h;
            k[] kVarArr3 = this.f10562a;
            fArr6[0] = kVarArr3[i13].f10577c;
            fArr6[1] = kVarArr3[i13].f10578d;
            this.f10563b[i13].mapPoints(fArr6);
            float[] fArr7 = this.f10570i;
            k[] kVarArr4 = this.f10562a;
            fArr7[0] = kVarArr4[i15].f10575a;
            fArr7[1] = kVarArr4[i15].f10576b;
            this.f10563b[i15].mapPoints(fArr7);
            float[] fArr8 = this.f10569h;
            float f12 = fArr8[0];
            float[] fArr9 = this.f10570i;
            float fMax = Math.max(((float) Math.hypot(f12 - fArr9[0], fArr8[1] - fArr9[1])) - 0.001f, 0.0f);
            float[] fArr10 = this.f10569h;
            k[] kVarArr5 = this.f10562a;
            fArr10[0] = kVarArr5[i13].f10577c;
            fArr10[1] = kVarArr5[i13].f10578d;
            this.f10563b[i13].mapPoints(fArr10);
            float fAbs = (i13 == 1 || i13 == 3) ? Math.abs(rectF.centerX() - this.f10569h[0]) : Math.abs(rectF.centerY() - this.f10569h[1]);
            this.f10568g.f(0.0f, 270.0f, 0.0f);
            if (i13 == 1) {
                eVar = iVar.f10548k;
            } else if (i13 != 2) {
                eVar = i13 != 3 ? iVar.f10547j : iVar.f10546i;
            } else {
                eVar = iVar.f10549l;
            }
            eVar.b(fMax, fAbs, f10, this.f10568g);
            this.f10571j.reset();
            this.f10568g.c(this.f10564c[i13], this.f10571j);
            if (this.f10573l && (b(this.f10571j, i13) || b(this.f10571j, i15))) {
                Path path2 = this.f10571j;
                path2.op(path2, this.f10567f, Path.Op.DIFFERENCE);
                float[] fArr11 = this.f10569h;
                k kVar3 = this.f10568g;
                fArr11[0] = kVar3.f10575a;
                fArr11[1] = kVar3.f10576b;
                this.f10564c[i13].mapPoints(fArr11);
                Path path3 = this.f10566e;
                float[] fArr12 = this.f10569h;
                path3.moveTo(fArr12[0], fArr12[1]);
                this.f10568g.c(this.f10564c[i13], this.f10566e);
            } else {
                this.f10568g.c(this.f10564c[i13], path);
            }
            if (bVar != null) {
                k kVar4 = this.f10568g;
                Matrix matrix4 = this.f10564c[i13];
                f.a aVar2 = (f.a) bVar;
                Objects.requireNonNull(kVar4);
                f.this.f10498k.set(i13 + 4, false);
                f.this.f10497j[i13] = kVar4.d(matrix4);
            }
            i13 = i14;
        }
        path.close();
        this.f10566e.close();
        if (this.f10566e.isEmpty()) {
            return;
        }
        path.op(this.f10566e, Path.Op.UNION);
    }

    public final boolean b(Path path, int i10) {
        this.f10572k.reset();
        this.f10562a[i10].c(this.f10563b[i10], this.f10572k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f10572k.computeBounds(rectF, true);
        path.op(this.f10572k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }
}
