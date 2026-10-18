package a2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: RepeaterContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements d, l, i, b2.a.InterfaceC0052a, j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f173a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f174b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e0 f175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g2.b f176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f178f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b2.a<Float, Float> f179g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b2.a<Float, Float> f180h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b2.q f181i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public c f182j;

    public o(e0 e0Var, g2.b bVar, f2.j jVar) {
        this.f175c = e0Var;
        this.f176d = bVar;
        this.f177e = jVar.f7013a;
        this.f178f = jVar.f7017e;
        b2.a<Float, Float> aVarA = jVar.f7014b.a();
        this.f179g = (b2.d) aVarA;
        bVar.f(aVarA);
        aVarA.a(this);
        b2.a<Float, Float> aVarA2 = jVar.f7015c.a();
        this.f180h = (b2.d) aVarA2;
        bVar.f(aVarA2);
        aVarA2.a(this);
        e2.k kVar = jVar.f7016d;
        Objects.requireNonNull(kVar);
        b2.q qVar = new b2.q(kVar);
        this.f181i = qVar;
        qVar.a(bVar);
        qVar.b(this);
    }

    @Override // a2.l
    public final Path a() {
        Path pathA = this.f182j.a();
        this.f174b.reset();
        float fFloatValue = this.f179g.f().floatValue();
        float fFloatValue2 = this.f180h.f().floatValue();
        int i10 = (int) fFloatValue;
        while (true) {
            i10--;
            if (i10 < 0) {
                return this.f174b;
            }
            this.f173a.set(this.f181i.f(i10 + fFloatValue2));
            this.f174b.addPath(pathA, this.f173a);
        }
    }

    @Override // a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f182j.b(rectF, matrix, z10);
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f175c.invalidateSelf();
    }

    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        this.f182j.e(list, list2);
    }

    @Override // a2.i
    public final void f(ListIterator<b> listIterator) {
        if (this.f182j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f182j = new c(this.f175c, this.f176d, "Repeater", this.f178f, arrayList, null);
    }

    @Override // d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        if (this.f181i.c(t10, cVar)) {
            return;
        }
        if (t10 == i0.f18367u) {
            this.f179g.k(cVar);
        } else if (t10 == i0.f18368v) {
            this.f180h.k(cVar);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f177e;
    }

    @Override // a2.d
    public final void h(Canvas canvas, Matrix matrix, int i10) {
        float fFloatValue = this.f179g.f().floatValue();
        float fFloatValue2 = this.f180h.f().floatValue();
        float fFloatValue3 = this.f181i.f3225m.f().floatValue() / 100.0f;
        float fFloatValue4 = this.f181i.f3226n.f().floatValue() / 100.0f;
        int i11 = (int) fFloatValue;
        while (true) {
            i11--;
            if (i11 < 0) {
                return;
            }
            this.f173a.set(matrix);
            float f10 = i11;
            this.f173a.preConcat(this.f181i.f(f10 + fFloatValue2));
            PointF pointF = k2.f.f9637a;
            this.f182j.h(canvas, this.f173a, (int) ((((fFloatValue4 - fFloatValue3) * (f10 / fFloatValue)) + fFloatValue3) * i10));
        }
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        k2.f.f(eVar, i10, list, eVar2, this);
    }
}
