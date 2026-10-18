package com.bumptech.glide;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import v2.n;
import v2.o;
import v2.p;
import v2.r;

/* JADX INFO: compiled from: Registry.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f4462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g3.a f4463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g3.e f4464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g3.f f4465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.data.f f4466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d3.d f4467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final g3.b f4468g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g3.d f4469h = new g3.d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final g3.c f4470i = new g3.c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final i0.e<List<Throwable>> f4471j;

    /* JADX INFO: compiled from: Registry.java */
    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    /* JADX INFO: compiled from: Registry.java */
    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }

    /* JADX INFO: compiled from: Registry.java */
    public static class d extends a {
        public d(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* JADX INFO: compiled from: Registry.java */
    public static class e extends a {
        public e(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    public h() {
        m3.a.c cVar = new m3.a.c(new i0.g(20), new m3.b(), new m3.c());
        this.f4471j = cVar;
        this.f4462a = new p(cVar);
        this.f4463b = new g3.a();
        this.f4464c = new g3.e();
        this.f4465d = new g3.f();
        this.f4466e = new com.bumptech.glide.load.data.f();
        this.f4467f = new d3.d();
        this.f4468g = new g3.b();
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        g3.e eVar = this.f4464c;
        synchronized (eVar) {
            ArrayList<String> arrayList2 = new ArrayList(eVar.f7621a);
            eVar.f7621a.clear();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                eVar.f7621a.add((String) it2.next());
            }
            for (String str : arrayList2) {
                if (!arrayList.contains(str)) {
                    eVar.f7621a.add(str);
                }
            }
        }
    }

    public final <Data, TResource> h a(Class<Data> cls, Class<TResource> cls2, p2.j<Data, TResource> jVar) {
        d("legacy_append", cls, cls2, jVar);
        return this;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, v2.p$a$a<?>>] */
    public final <Model, Data> h b(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
        p pVar = this.f4462a;
        synchronized (pVar) {
            pVar.f16177a.a(cls, cls2, oVar);
            pVar.f16178b.f16179a.clear();
        }
        return this;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <TResource> h c(Class<TResource> cls, p2.k<TResource> kVar) {
        g3.f fVar = this.f4465d;
        synchronized (fVar) {
            fVar.f7626a.add(new g3.f.a<>(cls, kVar));
        }
        return this;
    }

    public final <Data, TResource> h d(String str, Class<Data> cls, Class<TResource> cls2, p2.j<Data, TResource> jVar) {
        g3.e eVar = this.f4464c;
        synchronized (eVar) {
            eVar.a(str).add(new g3.e.a<>(cls, cls2, jVar));
        }
        return this;
    }

    public final List<ImageHeaderParser> e() {
        List<ImageHeaderParser> list;
        g3.b bVar = this.f4468g;
        synchronized (bVar) {
            list = (List) bVar.f7615a;
        }
        if (list.isEmpty()) {
            throw new b();
        }
        return list;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, v2.p$a$a<?>>] */
    public final <Model> List<n<Model, ?>> f(Model model) {
        List<n<Model, ?>> listUnmodifiableList;
        p pVar = this.f4462a;
        Objects.requireNonNull(pVar);
        Class<?> cls = model.getClass();
        synchronized (pVar) {
            p.a.C0288a c0288a = (p.a.C0288a) pVar.f16178b.f16179a.get(cls);
            listUnmodifiableList = c0288a == null ? null : c0288a.f16180a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(pVar.f16177a.b(cls));
                pVar.f16178b.a(cls, listUnmodifiableList);
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new c(model);
        }
        int size = listUnmodifiableList.size();
        List<n<Model, ?>> listEmptyList = Collections.emptyList();
        boolean z10 = true;
        for (int i10 = 0; i10 < size; i10++) {
            n<Model, ?> nVar = listUnmodifiableList.get(i10);
            if (nVar.b(model)) {
                if (z10) {
                    listEmptyList = new ArrayList<>(size - i10);
                    z10 = false;
                }
                listEmptyList.add(nVar);
            }
        }
        if (listEmptyList.isEmpty()) {
            throw new c(model, listUnmodifiableList);
        }
        return listEmptyList;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, com.bumptech.glide.load.data.e$a<?>>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, com.bumptech.glide.load.data.e$a<?>>] */
    public final <X> com.bumptech.glide.load.data.e<X> g(X x10) {
        com.bumptech.glide.load.data.e<X> eVar;
        com.bumptech.glide.load.data.f fVar = this.f4466e;
        synchronized (fVar) {
            Objects.requireNonNull(x10, "Argument must not be null");
            com.bumptech.glide.load.data.e.a<?> aVar = (com.bumptech.glide.load.data.e.a) fVar.f4507a.get(x10.getClass());
            if (aVar == null) {
                for (com.bumptech.glide.load.data.e.a<?> aVar2 : fVar.f4507a.values()) {
                    if (aVar2.a().isAssignableFrom(x10.getClass())) {
                        aVar = aVar2;
                        break;
                    }
                }
            }
            if (aVar == null) {
                aVar = com.bumptech.glide.load.data.f.f4506b;
            }
            eVar = (com.bumptech.glide.load.data.e<X>) aVar.b(x10);
        }
        return eVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, com.bumptech.glide.load.data.e$a<?>>] */
    public final h h(com.bumptech.glide.load.data.e.a<?> aVar) {
        com.bumptech.glide.load.data.f fVar = this.f4466e;
        synchronized (fVar) {
            fVar.f4507a.put(aVar.a(), aVar);
        }
        return this;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <TResource, Transcode> h i(Class<TResource> cls, Class<Transcode> cls2, d3.c<TResource, Transcode> cVar) {
        d3.d dVar = this.f4467f;
        synchronized (dVar) {
            dVar.f5995a.add(new d3.d.a<>(cls, cls2, cVar));
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.HashMap, java.util.Map<java.lang.Class<?>, v2.p$a$a<?>>] */
    public final h j(Class cls, o oVar) {
        List listF;
        p pVar = this.f4462a;
        synchronized (pVar) {
            r rVar = pVar.f16177a;
            synchronized (rVar) {
                listF = rVar.f(cls);
                rVar.a(v2.f.class, cls, oVar);
            }
            Iterator it = ((ArrayList) listF).iterator();
            while (it.hasNext()) {
                ((o) it.next()).c();
            }
            pVar.f16178b.f16179a.clear();
        }
        return this;
    }

    /* JADX INFO: compiled from: Registry.java */
    public static class c extends a {
        /* JADX WARN: Illegal instructions before constructor call */
        public c(Object obj) {
            StringBuilder sbC = a0.b.c("Failed to find any ModelLoaders registered for model class: ");
            sbC.append(obj.getClass());
            super(sbC.toString());
        }

        public <M> c(M m10, List<n<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m10);
        }

        public c(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }
}
