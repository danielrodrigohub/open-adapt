package v2;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: MultiModelLoaderFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f16190e = new c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final n<Object, Object> f16191f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<b<?, ?>> f16192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f16193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<b<?, ?>> f16194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i0.e<List<Throwable>> f16195d;

    /* JADX INFO: compiled from: MultiModelLoaderFactory.java */
    public static class a implements n<Object, Object> {
        @Override // v2.n
        public final n.a<Object> a(Object obj, int i10, int i11, p2.h hVar) {
            return null;
        }

        @Override // v2.n
        public final boolean b(Object obj) {
            return false;
        }
    }

    /* JADX INFO: compiled from: MultiModelLoaderFactory.java */
    public static class b<Model, Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class<Model> f16196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class<Data> f16197b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final o<? extends Model, ? extends Data> f16198c;

        public b(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
            this.f16196a = cls;
            this.f16197b = cls2;
            this.f16198c = oVar;
        }

        public final boolean a(Class<?> cls) {
            return this.f16196a.isAssignableFrom(cls);
        }
    }

    /* JADX INFO: compiled from: MultiModelLoaderFactory.java */
    public static class c {
    }

    public r(i0.e<List<Throwable>> eVar) {
        c cVar = f16190e;
        this.f16192a = new ArrayList();
        this.f16194c = new HashSet();
        this.f16195d = eVar;
        this.f16193b = cVar;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        b<?, ?> bVar = new b<>(cls, cls2, oVar);
        List<b<?, ?>> list = this.f16192a;
        list.add(list.size(), bVar);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final synchronized <Model> List<n<Model, ?>> b(Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.f16192a) {
                if (!this.f16194c.contains(bVar) && bVar.a(cls)) {
                    this.f16194c.add(bVar);
                    n nVarB = bVar.f16198c.b(this);
                    Objects.requireNonNull(nVarB, "Argument must not be null");
                    arrayList.add(nVarB);
                    this.f16194c.remove(bVar);
                }
            }
        } catch (Throwable th) {
            this.f16194c.clear();
            throw th;
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<v2.r$b<?, ?>>] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.HashSet, java.util.Set<v2.r$b<?, ?>>] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.HashSet, java.util.Set<v2.r$b<?, ?>>] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.HashSet, java.util.Set<v2.r$b<?, ?>>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.HashSet, java.util.Set<v2.r$b<?, ?>>] */
    public final synchronized <Model, Data> n<Model, Data> c(Class<Model> cls, Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z10 = false;
            for (b<?, ?> bVar : this.f16192a) {
                if (this.f16194c.contains(bVar)) {
                    z10 = true;
                } else if (bVar.a(cls) && bVar.f16197b.isAssignableFrom(cls2)) {
                    this.f16194c.add(bVar);
                    arrayList.add(d(bVar));
                    this.f16194c.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                c cVar = this.f16193b;
                i0.e<List<Throwable>> eVar = this.f16195d;
                Objects.requireNonNull(cVar);
                return new q(arrayList, eVar);
            }
            if (arrayList.size() == 1) {
                return (n) arrayList.get(0);
            }
            if (z10) {
                return (n<Model, Data>) f16191f;
            }
            throw new com.bumptech.glide.h.c((Class<?>) cls, (Class<?>) cls2);
        } catch (Throwable th) {
            this.f16194c.clear();
            throw th;
        }
    }

    public final <Model, Data> n<Model, Data> d(b<?, ?> bVar) {
        n<Model, Data> nVar = (n<Model, Data>) bVar.f16198c.b(this);
        Objects.requireNonNull(nVar, "Argument must not be null");
        return nVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<v2.r$b<?, ?>>] */
    public final synchronized List<Class<?>> e(Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b bVar : this.f16192a) {
            if (!arrayList.contains(bVar.f16197b) && bVar.a(cls)) {
                arrayList.add(bVar.f16197b);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<v2.r$b<?, ?>>] */
    public final synchronized List f(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f16192a.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar.a(f.class) && bVar.f16197b.isAssignableFrom(cls)) {
                it.remove();
                arrayList.add(bVar.f16198c);
            }
        }
        return arrayList;
    }
}
