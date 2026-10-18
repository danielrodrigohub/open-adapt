package a2;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;

/* JADX INFO: compiled from: MergePathsContent.java */
/* JADX INFO: loaded from: classes.dex */
@TargetApi(19)
public final class k implements l, i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f142a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f143b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f144c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<l> f145d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final f2.g f146e;

    public k(f2.g gVar) {
        Objects.requireNonNull(gVar);
        this.f146e = gVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<a2.l>] */
    @Override // a2.l
    public final Path a() {
        this.f144c.reset();
        f2.g gVar = this.f146e;
        if (gVar.f6996c) {
            return this.f144c;
        }
        int iA = q.g.a(gVar.f6995b);
        if (iA == 0) {
            for (int i10 = 0; i10 < this.f145d.size(); i10++) {
                this.f144c.addPath(((l) this.f145d.get(i10)).a());
            }
        } else if (iA == 1) {
            d(Path.Op.UNION);
        } else if (iA == 2) {
            d(Path.Op.REVERSE_DIFFERENCE);
        } else if (iA == 3) {
            d(Path.Op.INTERSECT);
        } else if (iA == 4) {
            d(Path.Op.XOR);
        }
        return this.f144c;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList, java.util.List<a2.l>] */
    @TargetApi(19)
    public final void d(Path.Op op) {
        Matrix matrixE;
        Matrix matrixE2;
        this.f143b.reset();
        this.f142a.reset();
        for (int size = this.f145d.size() - 1; size >= 1; size--) {
            l lVar = (l) this.f145d.get(size);
            if (lVar instanceof c) {
                c cVar = (c) lVar;
                ArrayList arrayList = (ArrayList) cVar.f();
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    Path pathA = ((l) arrayList.get(size2)).a();
                    b2.q qVar = cVar.f90k;
                    if (qVar != null) {
                        matrixE2 = qVar.e();
                    } else {
                        cVar.f82c.reset();
                        matrixE2 = cVar.f82c;
                    }
                    pathA.transform(matrixE2);
                    this.f143b.addPath(pathA);
                }
            } else {
                this.f143b.addPath(lVar.a());
            }
        }
        int i10 = 0;
        l lVar2 = (l) this.f145d.get(0);
        if (lVar2 instanceof c) {
            c cVar2 = (c) lVar2;
            List<l> listF = cVar2.f();
            while (true) {
                ArrayList arrayList2 = (ArrayList) listF;
                if (i10 >= arrayList2.size()) {
                    break;
                }
                Path pathA2 = ((l) arrayList2.get(i10)).a();
                b2.q qVar2 = cVar2.f90k;
                if (qVar2 != null) {
                    matrixE = qVar2.e();
                } else {
                    cVar2.f82c.reset();
                    matrixE = cVar2.f82c;
                }
                pathA2.transform(matrixE);
                this.f142a.addPath(pathA2);
                i10++;
            }
        } else {
            this.f142a.set(lVar2.a());
        }
        this.f144c.op(this.f142a, this.f143b, op);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<a2.l>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<a2.l>] */
    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
        for (int i10 = 0; i10 < this.f145d.size(); i10++) {
            ((l) this.f145d.get(i10)).e(list, list2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<a2.l>] */
    @Override // a2.i
    public final void f(ListIterator<b> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            b bVarPrevious = listIterator.previous();
            if (bVarPrevious instanceof l) {
                this.f145d.add((l) bVarPrevious);
                listIterator.remove();
            }
        }
    }
}
