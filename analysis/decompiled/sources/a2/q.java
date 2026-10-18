package a2;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import y1.e0;

/* JADX INFO: compiled from: ShapeContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements l, b2.a.InterfaceC0052a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e0 f188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b2.m f189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f190e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f186a = new Path();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final g1.i f191f = new g1.i();

    public q(e0 e0Var, g2.b bVar, f2.o oVar) {
        Objects.requireNonNull(oVar);
        this.f187b = oVar.f7035d;
        this.f188c = e0Var;
        b2.m mVarA = oVar.f7034c.a();
        this.f189d = mVarA;
        bVar.f(mVarA);
        mVarA.a(this);
    }

    @Override // a2.l
    public final Path a() {
        if (this.f190e) {
            return this.f186a;
        }
        this.f186a.reset();
        if (this.f187b) {
            this.f190e = true;
            return this.f186a;
        }
        Path pathF = this.f189d.f();
        if (pathF == null) {
            return this.f186a;
        }
        this.f186a.set(pathF);
        this.f186a.setFillType(Path.FillType.EVEN_ODD);
        this.f191f.b(this.f186a);
        this.f190e = true;
        return this.f186a;
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f190e = false;
        this.f188c.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036 A[SYNTHETIC] */
    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        ArrayList arrayList = null;
        int i10 = 0;
        while (true) {
            ArrayList arrayList2 = (ArrayList) list;
            if (i10 >= arrayList2.size()) {
                this.f189d.f3203k = arrayList;
                return;
            }
            b bVar = (b) arrayList2.get(i10);
            if (bVar instanceof t) {
                t tVar = (t) bVar;
                if (tVar.f199c == 1) {
                    this.f191f.a(tVar);
                    tVar.f(this);
                } else if (!(bVar instanceof r)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((r) bVar);
                }
            } else if (!(bVar instanceof r)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((r) bVar);
            }
            i10++;
        }
    }
}
