package a2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import y1.e0;

/* JADX INFO: compiled from: ContentGroup.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements d, l, b2.a.InterfaceC0052a, d2.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z1.a f80a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RectF f81b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f82c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Path f83d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectF f84e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f85f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f86g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<b> f87h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e0 f88i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List<l> f89j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public b2.q f90k;

    public c(e0 e0Var, g2.b bVar, f2.n nVar) {
        e2.k kVar;
        String str = nVar.f7029a;
        boolean z10 = nVar.f7031c;
        List<f2.b> list = nVar.f7030b;
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            b bVarA = list.get(i10).a(e0Var, bVar);
            if (bVarA != null) {
                arrayList.add(bVarA);
            }
        }
        List<f2.b> list2 = nVar.f7030b;
        for (int i11 = 0; i11 < list2.size(); i11++) {
            f2.b bVar2 = list2.get(i11);
            if (bVar2 instanceof e2.k) {
                kVar = (e2.k) bVar2;
                this(e0Var, bVar, str, z10, arrayList, kVar);
            }
        }
        kVar = null;
        this(e0Var, bVar, str, z10, arrayList, kVar);
    }

    @Override // a2.l
    public final Path a() {
        this.f82c.reset();
        b2.q qVar = this.f90k;
        if (qVar != null) {
            this.f82c.set(qVar.e());
        }
        this.f83d.reset();
        if (this.f86g) {
            return this.f83d;
        }
        for (int size = this.f87h.size() - 1; size >= 0; size--) {
            b bVar = this.f87h.get(size);
            if (bVar instanceof l) {
                this.f83d.addPath(((l) bVar).a(), this.f82c);
            }
        }
        return this.f83d;
    }

    @Override // a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f82c.set(matrix);
        b2.q qVar = this.f90k;
        if (qVar != null) {
            this.f82c.preConcat(qVar.e());
        }
        this.f84e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f87h.size() - 1; size >= 0; size--) {
            b bVar = this.f87h.get(size);
            if (bVar instanceof d) {
                ((d) bVar).b(this.f84e, this.f82c, z10);
                rectF.union(this.f84e);
            }
        }
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f88i.invalidateSelf();
    }

    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        ArrayList arrayList = new ArrayList(this.f87h.size() + list.size());
        arrayList.addAll(list);
        int size = this.f87h.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            b bVar = this.f87h.get(size);
            bVar.e(arrayList, this.f87h.subList(0, size));
            arrayList.add(bVar);
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<a2.l>] */
    public final List<l> f() {
        if (this.f89j == null) {
            this.f89j = new ArrayList();
            for (int i10 = 0; i10 < this.f87h.size(); i10++) {
                b bVar = this.f87h.get(i10);
                if (bVar instanceof l) {
                    this.f89j.add((l) bVar);
                }
            }
        }
        return this.f89j;
    }

    @Override // d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        b2.q qVar = this.f90k;
        if (qVar != null) {
            qVar.c(t10, cVar);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f85f;
    }

    @Override // a2.d
    public final void h(Canvas canvas, Matrix matrix, int i10) {
        boolean z10;
        if (this.f86g) {
            return;
        }
        this.f82c.set(matrix);
        b2.q qVar = this.f90k;
        if (qVar != null) {
            this.f82c.preConcat(qVar.e());
            b2.a<Integer, Integer> aVar = this.f90k.f3222j;
            i10 = (int) (((((aVar == null ? 100 : aVar.f().intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z11 = false;
        if (this.f88i.A) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (i11 >= this.f87h.size()) {
                    z10 = false;
                    break;
                } else {
                    if ((this.f87h.get(i11) instanceof d) && (i12 = i12 + 1) >= 2) {
                        z10 = true;
                        break;
                    }
                    i11++;
                }
            }
            if (z10 && i10 != 255) {
                z11 = true;
            }
        }
        if (z11) {
            this.f81b.set(0.0f, 0.0f, 0.0f, 0.0f);
            b(this.f81b, this.f82c, true);
            this.f80a.setAlpha(i10);
            RectF rectF = this.f81b;
            z1.a aVar2 = this.f80a;
            ThreadLocal<PathMeasure> threadLocal = k2.g.f9638a;
            canvas.saveLayer(rectF, aVar2);
            p4.h.p();
        }
        if (z11) {
            i10 = 255;
        }
        for (int size = this.f87h.size() - 1; size >= 0; size--) {
            b bVar = this.f87h.get(size);
            if (bVar instanceof d) {
                ((d) bVar).h(canvas, this.f82c, i10);
            }
        }
        if (z11) {
            canvas.restore();
        }
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        if (eVar.e(this.f85f, i10) || "__container".equals(this.f85f)) {
            if (!"__container".equals(this.f85f)) {
                eVar2 = eVar2.a(this.f85f);
                if (eVar.c(this.f85f, i10)) {
                    list.add(eVar2.g(this));
                }
            }
            if (eVar.f(this.f85f, i10)) {
                int iD = eVar.d(this.f85f, i10) + i10;
                for (int i11 = 0; i11 < this.f87h.size(); i11++) {
                    b bVar = this.f87h.get(i11);
                    if (bVar instanceof d2.f) {
                        ((d2.f) bVar).i(eVar, iD, list, eVar2);
                    }
                }
            }
        }
    }

    public c(e0 e0Var, g2.b bVar, String str, boolean z10, List<b> list, e2.k kVar) {
        this.f80a = new z1.a();
        this.f81b = new RectF();
        this.f82c = new Matrix();
        this.f83d = new Path();
        this.f84e = new RectF();
        this.f85f = str;
        this.f88i = e0Var;
        this.f86g = z10;
        this.f87h = list;
        if (kVar != null) {
            b2.q qVar = new b2.q(kVar);
            this.f90k = qVar;
            qVar.a(bVar);
            this.f90k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            b bVar2 = list.get(size);
            if (bVar2 instanceof i) {
                arrayList.add((i) bVar2);
            }
        }
        int size2 = arrayList.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                return;
            } else {
                ((i) arrayList.get(size2)).f(list.listIterator(list.size()));
            }
        }
    }
}
