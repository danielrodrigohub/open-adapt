package g2;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import b2.q;
import e2.k;
import f.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import y1.e0;
import y1.l0;

/* JADX INFO: compiled from: BaseLayer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements a2.d, b2.a.InterfaceC0052a, d2.f {
    public z1.a A;
    public float B;
    public BlurMaskFilter C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f7562a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Matrix f7563b = new Matrix();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f7564c = new Matrix();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final z1.a f7565d = new z1.a(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final z1.a f7566e = new z1.a(1, PorterDuff.Mode.DST_IN);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final z1.a f7567f = new z1.a(1, PorterDuff.Mode.DST_OUT);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final z1.a f7568g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final z1.a f7569h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RectF f7570i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RectF f7571j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RectF f7572k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final RectF f7573l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final RectF f7574m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f7575n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Matrix f7576o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final e0 f7577p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final f f7578q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public b2.h f7579r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public b2.d f7580s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public b f7581t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public b f7582u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public List<b> f7583v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final List<b2.a<?, ?>> f7584w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final q f7585x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f7586y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f7587z;

    public b(e0 e0Var, f fVar) {
        z1.a aVar = new z1.a(1);
        this.f7568g = aVar;
        this.f7569h = new z1.a(PorterDuff.Mode.CLEAR);
        this.f7570i = new RectF();
        this.f7571j = new RectF();
        this.f7572k = new RectF();
        this.f7573l = new RectF();
        this.f7574m = new RectF();
        this.f7576o = new Matrix();
        this.f7584w = new ArrayList();
        this.f7586y = true;
        this.B = 0.0f;
        this.f7577p = e0Var;
        this.f7578q = fVar;
        this.f7575n = a1.f.d(new StringBuilder(), fVar.f7590c, "#draw");
        if (fVar.f7608u == 3) {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        k kVar = fVar.f7596i;
        Objects.requireNonNull(kVar);
        q qVar = new q(kVar);
        this.f7585x = qVar;
        qVar.b(this);
        List<f2.f> list = fVar.f7595h;
        if (list != null && !list.isEmpty()) {
            b2.h hVar = new b2.h(fVar.f7595h);
            this.f7579r = hVar;
            Iterator it = hVar.f3190a.iterator();
            while (it.hasNext()) {
                ((b2.a) it.next()).a(this);
            }
            for (b2.a<?, ?> aVar2 : (List) this.f7579r.f3191b) {
                f(aVar2);
                aVar2.a(this);
            }
        }
        if (this.f7578q.f7607t.isEmpty()) {
            w(true);
            return;
        }
        b2.d dVar = new b2.d(this.f7578q.f7607t);
        this.f7580s = dVar;
        dVar.f3168b = true;
        dVar.a(new b2.a.InterfaceC0052a() { // from class: g2.a
            @Override // b2.a.InterfaceC0052a
            public final void d() {
                b bVar = this.f7561a;
                bVar.w(bVar.f7580s.l() == 1.0f);
            }
        });
        w(this.f7580s.f().floatValue() == 1.0f);
        f(this.f7580s);
    }

    @Override // a2.d
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f7570i.set(0.0f, 0.0f, 0.0f, 0.0f);
        j();
        this.f7576o.set(matrix);
        if (z10) {
            List<b> list = this.f7583v;
            if (list != null) {
                int size = list.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    } else {
                        this.f7576o.preConcat(this.f7583v.get(size).f7585x.e());
                    }
                }
            } else {
                b bVar = this.f7582u;
                if (bVar != null) {
                    this.f7576o.preConcat(bVar.f7585x.e());
                }
            }
        }
        this.f7576o.preConcat(this.f7585x.e());
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f7577p.invalidateSelf();
    }

    @Override // a2.b
    public final void e(List<a2.b> list, List<a2.b> list2) {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<b2.a<?, ?>>] */
    public final void f(b2.a<?, ?> aVar) {
        if (aVar == null) {
            return;
        }
        this.f7584w.add(aVar);
    }

    @Override // d2.f
    public <T> void g(T t10, l2.c<T> cVar) {
        this.f7585x.c(t10, cVar);
    }

    @Override // a2.b
    public final String getName() {
        return this.f7578q.f7590c;
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0176 A[EDGE_INSN: B:127:0x0176->B:54:0x0176 BREAK  A[LOOP:1: B:33:0x00e1->B:50:0x0164], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x011b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0129  */
    /* JADX WARN: Code duplicated, block: B:49:0x0131  */
    @Override // a2.d
    public final void h(Canvas canvas, Matrix matrix, int i10) {
        z1.a aVar;
        boolean z10;
        if (!this.f7586y || this.f7578q.f7609v) {
            p4.h.p();
            return;
        }
        j();
        this.f7563b.reset();
        this.f7563b.set(matrix);
        for (int size = this.f7583v.size() - 1; size >= 0; size--) {
            this.f7563b.preConcat(this.f7583v.get(size).f7585x.e());
        }
        p4.h.p();
        b2.a<Integer, Integer> aVar2 = this.f7585x.f3222j;
        int iIntValue = (int) ((((i10 / 255.0f) * (aVar2 == null ? 100 : aVar2.f().intValue())) / 100.0f) * 255.0f);
        if (!q() && !p()) {
            this.f7563b.preConcat(this.f7585x.e());
            l(canvas, this.f7563b, iIntValue);
            p4.h.p();
            p4.h.p();
            r();
            return;
        }
        boolean z11 = false;
        b(this.f7570i, this.f7563b, false);
        RectF rectF = this.f7570i;
        int i11 = 3;
        if (q() && this.f7578q.f7608u != 3) {
            this.f7573l.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f7581t.b(this.f7573l, matrix, true);
            if (!rectF.intersect(this.f7573l)) {
                rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
        }
        this.f7563b.preConcat(this.f7585x.e());
        RectF rectF2 = this.f7570i;
        Matrix matrix2 = this.f7563b;
        this.f7572k.set(0.0f, 0.0f, 0.0f, 0.0f);
        int i12 = 2;
        if (p()) {
            int size2 = ((List) this.f7579r.f3192c).size();
            int i13 = 0;
            while (true) {
                if (i13 >= size2) {
                    if (!rectF2.intersect(this.f7572k)) {
                        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
                        break;
                    }
                    break;
                }
                f2.f fVar = (f2.f) ((List) this.f7579r.f3192c).get(i13);
                Path path = (Path) ((b2.a) this.f7579r.f3190a.get(i13)).f();
                if (path != null) {
                    this.f7562a.set(path);
                    this.f7562a.transform(matrix2);
                    int iA = q.g.a(fVar.f6990a);
                    if (iA == 0) {
                        if (fVar.f6993d) {
                            break;
                        }
                        this.f7562a.computeBounds(this.f7574m, z11);
                        if (i13 == 0) {
                            this.f7572k.set(this.f7574m);
                        } else {
                            RectF rectF3 = this.f7572k;
                            rectF3.set(Math.min(rectF3.left, this.f7574m.left), Math.min(this.f7572k.top, this.f7574m.top), Math.max(this.f7572k.right, this.f7574m.right), Math.max(this.f7572k.bottom, this.f7574m.bottom));
                        }
                    } else {
                        if (iA == 1) {
                            break;
                        }
                        if (iA != i12) {
                            if (iA == i11) {
                                break;
                            }
                            this.f7562a.computeBounds(this.f7574m, z11);
                            if (i13 == 0) {
                                this.f7572k.set(this.f7574m);
                            } else {
                                RectF rectF4 = this.f7572k;
                                rectF4.set(Math.min(rectF4.left, this.f7574m.left), Math.min(this.f7572k.top, this.f7574m.top), Math.max(this.f7572k.right, this.f7574m.right), Math.max(this.f7572k.bottom, this.f7574m.bottom));
                            }
                        } else {
                            if (fVar.f6993d) {
                                break;
                                break;
                            }
                            this.f7562a.computeBounds(this.f7574m, z11);
                            if (i13 == 0) {
                                this.f7572k.set(this.f7574m);
                            } else {
                                RectF rectF5 = this.f7572k;
                                rectF5.set(Math.min(rectF5.left, this.f7574m.left), Math.min(this.f7572k.top, this.f7574m.top), Math.max(this.f7572k.right, this.f7574m.right), Math.max(this.f7572k.bottom, this.f7574m.bottom));
                            }
                        }
                    }
                }
                i13++;
                z11 = false;
                i11 = 3;
                i12 = 2;
            }
        }
        this.f7571j.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.f7564c);
        if (!this.f7564c.isIdentity()) {
            Matrix matrix3 = this.f7564c;
            matrix3.invert(matrix3);
            this.f7564c.mapRect(this.f7571j);
        }
        if (!this.f7570i.intersect(this.f7571j)) {
            this.f7570i.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        p4.h.p();
        if (this.f7570i.width() >= 1.0f && this.f7570i.height() >= 1.0f) {
            this.f7565d.setAlpha(255);
            RectF rectF6 = this.f7570i;
            z1.a aVar3 = this.f7565d;
            ThreadLocal<PathMeasure> threadLocal = k2.g.f9638a;
            canvas.saveLayer(rectF6, aVar3);
            p4.h.p();
            p4.h.p();
            k(canvas);
            l(canvas, this.f7563b, iIntValue);
            p4.h.p();
            if (p()) {
                Matrix matrix4 = this.f7563b;
                canvas.saveLayer(this.f7570i, this.f7566e);
                p4.h.p();
                if (Build.VERSION.SDK_INT < 28) {
                    k(canvas);
                }
                p4.h.p();
                for (int i14 = 0; i14 < ((List) this.f7579r.f3192c).size(); i14++) {
                    f2.f fVar2 = (f2.f) ((List) this.f7579r.f3192c).get(i14);
                    b2.a aVar4 = (b2.a) this.f7579r.f3190a.get(i14);
                    b2.a aVar5 = (b2.a) ((List) this.f7579r.f3191b).get(i14);
                    int iA2 = q.g.a(fVar2.f6990a);
                    if (iA2 != 0) {
                        if (iA2 == 1) {
                            if (i14 == 0) {
                                this.f7565d.setColor(-16777216);
                                this.f7565d.setAlpha(255);
                                canvas.drawRect(this.f7570i, this.f7565d);
                            }
                            if (fVar2.f6993d) {
                                RectF rectF7 = this.f7570i;
                                z1.a aVar6 = this.f7567f;
                                ThreadLocal<PathMeasure> threadLocal2 = k2.g.f9638a;
                                canvas.saveLayer(rectF7, aVar6);
                                p4.h.p();
                                canvas.drawRect(this.f7570i, this.f7565d);
                                this.f7567f.setAlpha((int) (((Integer) aVar5.f()).intValue() * 2.55f));
                                this.f7562a.set((Path) aVar4.f());
                                this.f7562a.transform(matrix4);
                                canvas.drawPath(this.f7562a, this.f7567f);
                                canvas.restore();
                            } else {
                                this.f7562a.set((Path) aVar4.f());
                                this.f7562a.transform(matrix4);
                                canvas.drawPath(this.f7562a, this.f7567f);
                            }
                        } else if (iA2 != 2) {
                            if (iA2 == 3) {
                                if (this.f7579r.f3190a.isEmpty()) {
                                    z10 = false;
                                    break;
                                }
                                int i15 = 0;
                                while (true) {
                                    if (i15 >= ((List) this.f7579r.f3192c).size()) {
                                        z10 = true;
                                        break;
                                    } else {
                                        if (((f2.f) ((List) this.f7579r.f3192c).get(i15)).f6990a != 4) {
                                            z10 = false;
                                            break;
                                        }
                                        i15++;
                                    }
                                }
                                if (z10) {
                                    this.f7565d.setAlpha(255);
                                    canvas.drawRect(this.f7570i, this.f7565d);
                                }
                            }
                        } else if (fVar2.f6993d) {
                            RectF rectF8 = this.f7570i;
                            z1.a aVar7 = this.f7566e;
                            ThreadLocal<PathMeasure> threadLocal3 = k2.g.f9638a;
                            canvas.saveLayer(rectF8, aVar7);
                            p4.h.p();
                            canvas.drawRect(this.f7570i, this.f7565d);
                            this.f7567f.setAlpha((int) (((Integer) aVar5.f()).intValue() * 2.55f));
                            this.f7562a.set((Path) aVar4.f());
                            this.f7562a.transform(matrix4);
                            canvas.drawPath(this.f7562a, this.f7567f);
                            canvas.restore();
                        } else {
                            RectF rectF9 = this.f7570i;
                            z1.a aVar8 = this.f7566e;
                            ThreadLocal<PathMeasure> threadLocal4 = k2.g.f9638a;
                            canvas.saveLayer(rectF9, aVar8);
                            p4.h.p();
                            this.f7562a.set((Path) aVar4.f());
                            this.f7562a.transform(matrix4);
                            this.f7565d.setAlpha((int) (((Integer) aVar5.f()).intValue() * 2.55f));
                            canvas.drawPath(this.f7562a, this.f7565d);
                            canvas.restore();
                        }
                    } else if (fVar2.f6993d) {
                        RectF rectF10 = this.f7570i;
                        z1.a aVar9 = this.f7565d;
                        ThreadLocal<PathMeasure> threadLocal5 = k2.g.f9638a;
                        canvas.saveLayer(rectF10, aVar9);
                        p4.h.p();
                        canvas.drawRect(this.f7570i, this.f7565d);
                        this.f7562a.set((Path) aVar4.f());
                        this.f7562a.transform(matrix4);
                        this.f7565d.setAlpha((int) (((Integer) aVar5.f()).intValue() * 2.55f));
                        canvas.drawPath(this.f7562a, this.f7567f);
                        canvas.restore();
                    } else {
                        this.f7562a.set((Path) aVar4.f());
                        this.f7562a.transform(matrix4);
                        this.f7565d.setAlpha((int) (((Integer) aVar5.f()).intValue() * 2.55f));
                        canvas.drawPath(this.f7562a, this.f7565d);
                    }
                }
                canvas.restore();
                p4.h.p();
            }
            if (q()) {
                canvas.saveLayer(this.f7570i, this.f7568g);
                p4.h.p();
                p4.h.p();
                k(canvas);
                this.f7581t.h(canvas, matrix, iIntValue);
                canvas.restore();
                p4.h.p();
                p4.h.p();
            }
            canvas.restore();
            p4.h.p();
        }
        if (this.f7587z && (aVar = this.A) != null) {
            aVar.setStyle(Paint.Style.STROKE);
            this.A.setColor(-251901);
            this.A.setStrokeWidth(4.0f);
            canvas.drawRect(this.f7570i, this.A);
            this.A.setStyle(Paint.Style.FILL);
            this.A.setColor(1357638635);
            canvas.drawRect(this.f7570i, this.A);
        }
        p4.h.p();
        r();
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        b bVar = this.f7581t;
        if (bVar != null) {
            d2.e eVarA = eVar2.a(bVar.f7578q.f7590c);
            if (eVar.c(this.f7581t.f7578q.f7590c, i10)) {
                list.add(eVarA.g(this.f7581t));
            }
            if (eVar.f(this.f7578q.f7590c, i10)) {
                this.f7581t.t(eVar, eVar.d(this.f7581t.f7578q.f7590c, i10) + i10, list, eVarA);
            }
        }
        if (eVar.e(this.f7578q.f7590c, i10)) {
            if (!"__container".equals(this.f7578q.f7590c)) {
                eVar2 = eVar2.a(this.f7578q.f7590c);
                if (eVar.c(this.f7578q.f7590c, i10)) {
                    list.add(eVar2.g(this));
                }
            }
            if (eVar.f(this.f7578q.f7590c, i10)) {
                t(eVar, eVar.d(this.f7578q.f7590c, i10) + i10, list, eVar2);
            }
        }
    }

    public final void j() {
        if (this.f7583v != null) {
            return;
        }
        if (this.f7582u == null) {
            this.f7583v = Collections.emptyList();
            return;
        }
        this.f7583v = new ArrayList();
        for (b bVar = this.f7582u; bVar != null; bVar = bVar.f7582u) {
            this.f7583v.add(bVar);
        }
    }

    public final void k(Canvas canvas) {
        RectF rectF = this.f7570i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f7569h);
        p4.h.p();
    }

    public abstract void l(Canvas canvas, Matrix matrix, int i10);

    public p m() {
        return this.f7578q.f7610w;
    }

    public final BlurMaskFilter n(float f10) {
        if (this.B == f10) {
            return this.C;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.C = blurMaskFilter;
        this.B = f10;
        return blurMaskFilter;
    }

    public i2.j o() {
        return this.f7578q.f7611x;
    }

    public final boolean p() {
        b2.h hVar = this.f7579r;
        return (hVar == null || hVar.f3190a.isEmpty()) ? false : true;
    }

    public final boolean q() {
        return this.f7581t != null;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Set<y1.l0$a>, p.c] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.String, k2.e>] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.HashMap, java.util.Map<java.lang.String, k2.e>] */
    public final void r() {
        l0 l0Var = this.f7577p.f18305h.f18332a;
        String str = this.f7578q.f7590c;
        if (!l0Var.f18389a) {
            return;
        }
        k2.e eVar = (k2.e) l0Var.f18391c.get(str);
        if (eVar == null) {
            eVar = new k2.e();
            l0Var.f18391c.put(str, eVar);
        }
        int i10 = eVar.f9636a + 1;
        eVar.f9636a = i10;
        if (i10 == Integer.MAX_VALUE) {
            eVar.f9636a = i10 / 2;
        }
        if (!str.equals("__container")) {
            return;
        }
        Iterator it = l0Var.f18390b.iterator();
        while (true) {
            p.f.a aVar = (p.f.a) it;
            if (!aVar.hasNext()) {
                return;
            } else {
                ((l0.a) aVar.next()).a();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<b2.a<?, ?>>] */
    public final void s(b2.a<?, ?> aVar) {
        this.f7584w.remove(aVar);
    }

    public void t(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
    }

    public void u(boolean z10) {
        if (z10 && this.A == null) {
            this.A = new z1.a();
        }
        this.f7587z = z10;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList, java.util.List<b2.a<?, ?>>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<b2.a<?, ?>>] */
    public void v(float f10) {
        q qVar = this.f7585x;
        b2.a<Integer, Integer> aVar = qVar.f3222j;
        if (aVar != null) {
            aVar.j(f10);
        }
        b2.a<?, Float> aVar2 = qVar.f3225m;
        if (aVar2 != null) {
            aVar2.j(f10);
        }
        b2.a<?, Float> aVar3 = qVar.f3226n;
        if (aVar3 != null) {
            aVar3.j(f10);
        }
        b2.a<PointF, PointF> aVar4 = qVar.f3218f;
        if (aVar4 != null) {
            aVar4.j(f10);
        }
        b2.a<?, PointF> aVar5 = qVar.f3219g;
        if (aVar5 != null) {
            aVar5.j(f10);
        }
        b2.a<l2.d, l2.d> aVar6 = qVar.f3220h;
        if (aVar6 != null) {
            aVar6.j(f10);
        }
        b2.a<Float, Float> aVar7 = qVar.f3221i;
        if (aVar7 != null) {
            aVar7.j(f10);
        }
        b2.d dVar = qVar.f3223k;
        if (dVar != null) {
            dVar.j(f10);
        }
        b2.d dVar2 = qVar.f3224l;
        if (dVar2 != null) {
            dVar2.j(f10);
        }
        if (this.f7579r != null) {
            for (int i10 = 0; i10 < this.f7579r.f3190a.size(); i10++) {
                ((b2.a) this.f7579r.f3190a.get(i10)).j(f10);
            }
        }
        b2.d dVar3 = this.f7580s;
        if (dVar3 != null) {
            dVar3.j(f10);
        }
        b bVar = this.f7581t;
        if (bVar != null) {
            bVar.v(f10);
        }
        for (int i11 = 0; i11 < this.f7584w.size(); i11++) {
            ((b2.a) this.f7584w.get(i11)).j(f10);
        }
    }

    public final void w(boolean z10) {
        if (z10 != this.f7586y) {
            this.f7586y = z10;
            this.f7577p.invalidateSelf();
        }
    }
}
