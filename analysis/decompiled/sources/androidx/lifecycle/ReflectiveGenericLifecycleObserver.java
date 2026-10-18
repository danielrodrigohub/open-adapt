package androidx.lifecycle;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
class ReflectiveGenericLifecycleObserver implements n {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f2118h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a.C0025a f2119i;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2118h = obj;
        this.f2119i = a.f2154c.b(obj.getClass());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashMap, java.util.Map<androidx.lifecycle.i$b, java.util.List<androidx.lifecycle.a$b>>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.HashMap, java.util.Map<androidx.lifecycle.i$b, java.util.List<androidx.lifecycle.a$b>>] */
    @Override // androidx.lifecycle.n
    public final void a(q qVar, i.b bVar) {
        a.C0025a c0025a = this.f2119i;
        Object obj = this.f2118h;
        a.C0025a.a((List) c0025a.f2157a.get(bVar), qVar, bVar, obj);
        a.C0025a.a((List) c0025a.f2157a.get(i.b.ON_ANY), qVar, bVar, obj);
    }
}
