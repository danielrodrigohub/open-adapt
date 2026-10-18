package m6;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: ShapePath.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    public float f10575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public float f10576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public float f10577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public float f10578d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    public float f10579e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    public float f10580f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<f> f10581g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<g> f10582h = new ArrayList();

    /* JADX INFO: compiled from: ShapePath.java */
    public class a extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ List f10583b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Matrix f10584c;

        public a(List list, Matrix matrix) {
            this.f10583b = list;
            this.f10584c = matrix;
        }

        @Override // m6.k.g
        public final void a(Matrix matrix, l6.a aVar, int i10, Canvas canvas) {
            Iterator it = this.f10583b.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(this.f10584c, aVar, i10, canvas);
            }
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static class b extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d f10585b;

        public b(d dVar) {
            this.f10585b = dVar;
        }

        @Override // m6.k.g
        public final void a(Matrix matrix, l6.a aVar, int i10, Canvas canvas) {
            d dVar = this.f10585b;
            float f10 = dVar.f10594f;
            float f11 = dVar.f10595g;
            d dVar2 = this.f10585b;
            RectF rectF = new RectF(dVar2.f10590b, dVar2.f10591c, dVar2.f10592d, dVar2.f10593e);
            boolean z10 = f11 < 0.0f;
            Path path = aVar.f10165g;
            if (z10) {
                int[] iArr = l6.a.f10157k;
                iArr[0] = 0;
                iArr[1] = aVar.f10164f;
                iArr[2] = aVar.f10163e;
                iArr[3] = aVar.f10162d;
            } else {
                path.rewind();
                path.moveTo(rectF.centerX(), rectF.centerY());
                path.arcTo(rectF, f10, f11);
                path.close();
                float f12 = -i10;
                rectF.inset(f12, f12);
                int[] iArr2 = l6.a.f10157k;
                iArr2[0] = 0;
                iArr2[1] = aVar.f10162d;
                iArr2[2] = aVar.f10163e;
                iArr2[3] = aVar.f10164f;
            }
            float fWidth = rectF.width() / 2.0f;
            if (fWidth <= 0.0f) {
                return;
            }
            float f13 = 1.0f - (i10 / fWidth);
            float[] fArr = l6.a.f10158l;
            fArr[1] = f13;
            fArr[2] = ((1.0f - f13) / 2.0f) + f13;
            aVar.f10160b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, l6.a.f10157k, fArr, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix);
            canvas.scale(1.0f, rectF.height() / rectF.width());
            if (!z10) {
                canvas.clipPath(path, Region.Op.DIFFERENCE);
                canvas.drawPath(path, aVar.f10166h);
            }
            canvas.drawArc(rectF, f10, f11, true, aVar.f10160b);
            canvas.restore();
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static class c extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e f10586b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f10587c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float f10588d;

        public c(e eVar, float f10, float f11) {
            this.f10586b = eVar;
            this.f10587c = f10;
            this.f10588d = f11;
        }

        @Override // m6.k.g
        public final void a(Matrix matrix, l6.a aVar, int i10, Canvas canvas) {
            e eVar = this.f10586b;
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(eVar.f10597c - this.f10588d, eVar.f10596b - this.f10587c), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f10587c, this.f10588d);
            matrix2.preRotate(b());
            Objects.requireNonNull(aVar);
            rectF.bottom += i10;
            rectF.offset(0.0f, -i10);
            int[] iArr = l6.a.f10155i;
            iArr[0] = aVar.f10164f;
            iArr[1] = aVar.f10163e;
            iArr[2] = aVar.f10162d;
            Paint paint = aVar.f10161c;
            float f10 = rectF.left;
            paint.setShader(new LinearGradient(f10, rectF.top, f10, rectF.bottom, iArr, l6.a.f10156j, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix2);
            canvas.drawRect(rectF, aVar.f10161c);
            canvas.restore();
        }

        public final float b() {
            e eVar = this.f10586b;
            return (float) Math.toDegrees(Math.atan((eVar.f10597c - this.f10588d) / (eVar.f10596b - this.f10587c)));
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static class d extends f {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final RectF f10589h = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Deprecated
        public float f10590b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Deprecated
        public float f10591c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Deprecated
        public float f10592d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Deprecated
        public float f10593e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Deprecated
        public float f10594f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Deprecated
        public float f10595g;

        public d(float f10, float f11, float f12, float f13) {
            this.f10590b = f10;
            this.f10591c = f11;
            this.f10592d = f12;
            this.f10593e = f13;
        }

        @Override // m6.k.f
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f10598a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f10589h;
            rectF.set(this.f10590b, this.f10591c, this.f10592d, this.f10593e);
            path.arcTo(rectF, this.f10594f, this.f10595g, false);
            path.transform(matrix);
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static class e extends f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f10596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f10597c;

        @Override // m6.k.f
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f10598a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f10596b, this.f10597c);
            path.transform(matrix);
        }
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static abstract class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Matrix f10598a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    /* JADX INFO: compiled from: ShapePath.java */
    public static abstract class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Matrix f10599a = new Matrix();

        public abstract void a(Matrix matrix, l6.a aVar, int i10, Canvas canvas);
    }

    public k() {
        f(0.0f, 270.0f, 0.0f);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void a(float f10, float f11, float f12, float f13, float f14, float f15) {
        d dVar = new d(f10, f11, f12, f13);
        dVar.f10594f = f14;
        dVar.f10595g = f15;
        this.f10581g.add(dVar);
        b bVar = new b(dVar);
        float f16 = f14 + f15;
        boolean z10 = f15 < 0.0f;
        if (z10) {
            f14 = (f14 + 180.0f) % 360.0f;
        }
        float f17 = z10 ? (180.0f + f16) % 360.0f : f16;
        b(f14);
        this.f10582h.add(bVar);
        this.f10579e = f17;
        double d10 = f16;
        this.f10577c = (((f12 - f10) / 2.0f) * ((float) Math.cos(Math.toRadians(d10)))) + ((f10 + f12) * 0.5f);
        this.f10578d = (((f13 - f11) / 2.0f) * ((float) Math.sin(Math.toRadians(d10)))) + ((f11 + f13) * 0.5f);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void b(float f10) {
        float f11 = this.f10579e;
        if (f11 == f10) {
            return;
        }
        float f12 = ((f10 - f11) + 360.0f) % 360.0f;
        if (f12 > 180.0f) {
            return;
        }
        float f13 = this.f10577c;
        float f14 = this.f10578d;
        d dVar = new d(f13, f14, f13, f14);
        dVar.f10594f = this.f10579e;
        dVar.f10595g = f12;
        this.f10582h.add(new b(dVar));
        this.f10579e = f10;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<m6.k$f>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<m6.k$f>] */
    public final void c(Matrix matrix, Path path) {
        int size = this.f10581g.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((f) this.f10581g.get(i10)).a(matrix, path);
        }
    }

    public final g d(Matrix matrix) {
        b(this.f10580f);
        return new a(new ArrayList(this.f10582h), new Matrix(matrix));
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void e(float f10, float f11) {
        e eVar = new e();
        eVar.f10596b = f10;
        eVar.f10597c = f11;
        this.f10581g.add(eVar);
        c cVar = new c(eVar, this.f10577c, this.f10578d);
        float fB = cVar.b() + 270.0f;
        float fB2 = cVar.b() + 270.0f;
        b(fB);
        this.f10582h.add(cVar);
        this.f10579e = fB2;
        this.f10577c = f10;
        this.f10578d = f11;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList, java.util.List<m6.k$f>] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList, java.util.List<m6.k$g>] */
    public final void f(float f10, float f11, float f12) {
        this.f10575a = 0.0f;
        this.f10576b = f10;
        this.f10577c = 0.0f;
        this.f10578d = f10;
        this.f10579e = f11;
        this.f10580f = (f11 + f12) % 360.0f;
        this.f10581g.clear();
        this.f10582h.clear();
    }
}
