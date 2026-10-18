package q1;

import java.util.ArrayList;
import java.util.List;
import k1.l;
import t1.o;

/* JADX INFO: compiled from: ConstraintController.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<T> implements p1.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<String> f13538a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public T f13539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public r1.d<T> f13540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f13541d;

    /* JADX INFO: compiled from: ConstraintController.java */
    public interface a {
    }

    public c(r1.d<T> dVar) {
        this.f13540c = dVar;
    }

    @Override // p1.a
    public final void a(T t10) {
        this.f13539b = t10;
        e(this.f13541d, t10);
    }

    public abstract boolean b(o oVar);

    public abstract boolean c(T t10);

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    public final void d(Iterable<o> iterable) {
        this.f13538a.clear();
        for (o oVar : iterable) {
            if (b(oVar)) {
                this.f13538a.add(oVar.f15350a);
            }
        }
        if (this.f13538a.isEmpty()) {
            this.f13540c.b(this);
        } else {
            r1.d<T> dVar = this.f13540c;
            synchronized (dVar.f14205c) {
                if (dVar.f14206d.add(this)) {
                    if (dVar.f14206d.size() == 1) {
                        dVar.f14207e = dVar.a();
                        l.c().a(r1.d.f14202f, String.format("%s: initial state = %s", dVar.getClass().getSimpleName(), dVar.f14207e), new Throwable[0]);
                        dVar.d();
                    }
                    a(dVar.f14207e);
                }
            }
        }
        e(this.f13541d, this.f13539b);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    public final void e(a aVar, T t10) {
        if (this.f13538a.isEmpty() || aVar == null) {
            return;
        }
        if (t10 == null || c(t10)) {
            List<String> list = this.f13538a;
            p1.d dVar = (p1.d) aVar;
            synchronized (dVar.f12628c) {
                p1.c cVar = dVar.f12626a;
                if (cVar != null) {
                    cVar.c(list);
                }
            }
            return;
        }
        ?? r10 = this.f13538a;
        p1.d dVar2 = (p1.d) aVar;
        synchronized (dVar2.f12628c) {
            ArrayList arrayList = new ArrayList();
            for (String str : r10) {
                if (dVar2.a(str)) {
                    l.c().a(p1.d.f12625d, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            p1.c cVar2 = dVar2.f12626a;
            if (cVar2 != null) {
                cVar2.e(arrayList);
            }
        }
    }
}
