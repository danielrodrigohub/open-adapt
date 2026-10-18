package a2;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: EllipseContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements l, b2.a.InterfaceC0052a, j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f92b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e0 f93c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b2.a<?, PointF> f94d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b2.a<?, PointF> f95e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f2.a f96f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f98h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f91a = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final g1.i f97g = new g1.i();

    public e(e0 e0Var, g2.b bVar, f2.a aVar) {
        this.f92b = aVar.f6962a;
        this.f93c = e0Var;
        b2.a<?, ?> aVarA = aVar.f6964c.a();
        this.f94d = (b2.k) aVarA;
        b2.a<PointF, PointF> aVarA2 = aVar.f6963b.a();
        this.f95e = aVarA2;
        this.f96f = aVar;
        bVar.f(aVarA);
        bVar.f(aVarA2);
        aVarA.a(this);
        aVarA2.a(this);
    }

    @Override // a2.l
    public final Path a() {
        if (this.f98h) {
            return this.f91a;
        }
        this.f91a.reset();
        if (this.f96f.f6966e) {
            this.f98h = true;
            return this.f91a;
        }
        PointF pointFF = this.f94d.f();
        float f10 = pointFF.x / 2.0f;
        float f11 = pointFF.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.f91a.reset();
        if (this.f96f.f6965d) {
            float f14 = -f11;
            this.f91a.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f91a.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f91a.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f91a.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f91a.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f91a.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f91a.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f91a.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f91a.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f91a.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF pointFF2 = this.f95e.f();
        this.f91a.offset(pointFF2.x, pointFF2.y);
        this.f91a.close();
        this.f97g.b(this.f91a);
        this.f98h = true;
        return this.f91a;
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f98h = false;
        this.f93c.invalidateSelf();
    }

    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i10 >= arrayList.size()) {
                return;
            }
            b bVar = (b) arrayList.get(i10);
            if (bVar instanceof t) {
                t tVar = (t) bVar;
                if (tVar.f199c == 1) {
                    this.f97g.a(tVar);
                    tVar.f(this);
                }
            }
            i10++;
        }
    }

    @Override // d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        if (t10 == i0.f18357k) {
            this.f94d.k(cVar);
        } else if (t10 == i0.f18360n) {
            this.f95e.k(cVar);
        }
    }

    @Override // a2.b
    public final String getName() {
        return this.f92b;
    }

    @Override // d2.f
    public final void i(d2.e eVar, int i10, List<d2.e> list, d2.e eVar2) {
        k2.f.f(eVar, i10, list, eVar2, this);
    }
}
