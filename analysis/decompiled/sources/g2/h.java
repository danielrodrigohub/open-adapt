package g2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import f.p;
import f2.n;
import java.util.Collections;
import java.util.List;
import y1.e0;

/* JADX INFO: compiled from: ShapeLayer.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends b {
    public final a2.c D;
    public final c E;

    public h(e0 e0Var, f fVar, c cVar) {
        super(e0Var, fVar);
        this.E = cVar;
        a2.c cVar2 = new a2.c(e0Var, this, new n("__container", fVar.f7588a, false));
        this.D = cVar2;
        cVar2.e(Collections.emptyList(), Collections.emptyList());
    }

    @Override // g2.b, a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        this.D.b(rectF, this.f7576o, z10);
    }

    @Override // g2.b
    public final void l(Canvas canvas, Matrix matrix, int i10) {
        this.D.h(canvas, matrix, i10);
    }

    @Override // g2.b
    public final p m() {
        p pVar = this.f7578q.f7610w;
        return pVar != null ? pVar : this.E.f7578q.f7610w;
    }

    @Override // g2.b
    public final i2.j o() {
        i2.j jVar = this.f7578q.f7611x;
        return jVar != null ? jVar : this.E.f7578q.f7611x;
    }

    @Override // g2.b
    public final void t(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        this.D.i(eVar, i10, list, eVar2);
    }
}
