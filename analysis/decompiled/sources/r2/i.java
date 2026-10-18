package r2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: DecodeHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class i<Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<v2.n.a<?>> f14252a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<p2.f> f14253b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.bumptech.glide.e f14254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f14255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14256e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14257f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Class<?> f14258g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public j.d f14259h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p2.h f14260i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map<Class<?>, p2.l<?>> f14261j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Class<Transcode> f14262k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f14263l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f14264m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p2.f f14265n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.g f14266o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public l f14267p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f14268q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f14269r;

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<p2.f>] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.ArrayList, java.util.List<p2.f>] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.ArrayList, java.util.List<p2.f>] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.ArrayList, java.util.List<p2.f>] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.ArrayList, java.util.List<p2.f>] */
    public final List<p2.f> a() {
        if (!this.f14264m) {
            this.f14264m = true;
            this.f14253b.clear();
            ArrayList arrayList = (ArrayList) c();
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                v2.n.a aVar = (v2.n.a) arrayList.get(i10);
                if (!this.f14253b.contains(aVar.f16174a)) {
                    this.f14253b.add(aVar.f16174a);
                }
                for (int i11 = 0; i11 < aVar.f16175b.size(); i11++) {
                    if (!this.f14253b.contains(aVar.f16175b.get(i11))) {
                        this.f14253b.add(aVar.f16175b.get(i11));
                    }
                }
            }
        }
        return this.f14253b;
    }

    public final t2.a b() {
        return ((m.c) this.f14259h).a();
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final List<v2.n.a<?>> c() {
        if (!this.f14263l) {
            this.f14263l = true;
            this.f14252a.clear();
            List listF = this.f14254c.f4446b.f(this.f14255d);
            int size = listF.size();
            for (int i10 = 0; i10 < size; i10++) {
                v2.n.a<?> aVarA = ((v2.n) listF.get(i10)).a(this.f14255d, this.f14256e, this.f14257f, this.f14260i);
                if (aVarA != null) {
                    this.f14252a.add(aVarA);
                }
            }
        }
        return this.f14252a;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <Data> u<Data, ?, Transcode> d(Class<Data> cls) {
        u<Data, ?, Transcode> uVar;
        ArrayList arrayList;
        d3.d.a<?, ?> next;
        d3.c cVar;
        com.bumptech.glide.h hVar = this.f14254c.f4446b;
        Class<?> cls2 = this.f14258g;
        Class<Transcode> cls3 = this.f14262k;
        g3.c cVar2 = hVar.f4470i;
        l3.k andSet = cVar2.f7618b.getAndSet(null);
        if (andSet == null) {
            andSet = new l3.k();
        }
        andSet.a(cls, cls2, cls3);
        synchronized (cVar2.f7617a) {
            uVar = (u) cVar2.f7617a.getOrDefault(andSet, null);
        }
        cVar2.f7618b.set(andSet);
        Objects.requireNonNull(hVar.f4470i);
        if (g3.c.f7616c.equals(uVar)) {
            return null;
        }
        if (uVar != null) {
            return uVar;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Class<?> cls4 : (ArrayList) hVar.f4464c.b(cls, cls2)) {
            for (Class cls5 : (ArrayList) hVar.f4467f.a(cls4, cls3)) {
                g3.e eVar = hVar.f4464c;
                synchronized (eVar) {
                    arrayList = new ArrayList();
                    Iterator<String> it = eVar.f7621a.iterator();
                    while (it.hasNext()) {
                        List<g3.e.a<?, ?>> list = eVar.f7622b.get(it.next());
                        if (list != null) {
                            for (g3.e.a<?, ?> aVar : list) {
                                if (aVar.f7623a.isAssignableFrom((Class<?>) cls) && cls4.isAssignableFrom(aVar.f7624b)) {
                                    arrayList.add(aVar.f7625c);
                                }
                            }
                        }
                    }
                }
                d3.d dVar = hVar.f4467f;
                synchronized (dVar) {
                    if (cls5.isAssignableFrom(cls4)) {
                        cVar = d3.e.f5999h;
                    } else {
                        Iterator<d3.d.a<?, ?>> it2 = dVar.f5995a.iterator();
                        do {
                            if (!it2.hasNext()) {
                                throw new IllegalArgumentException("No transcoder registered to transcode from " + cls4 + " to " + cls5);
                            }
                            next = it2.next();
                        } while (!(next.f5996a.isAssignableFrom(cls4) && cls5.isAssignableFrom(next.f5997b)));
                        cVar = next.f5998c;
                    }
                }
                arrayList2.add(new k(cls, cls4, cls5, arrayList, cVar, hVar.f4471j));
            }
        }
        u<Data, ?, Transcode> uVar2 = arrayList2.isEmpty() ? null : new u<>(cls, cls2, cls3, arrayList2, hVar.f4471j);
        g3.c cVar3 = hVar.f4470i;
        synchronized (cVar3.f7617a) {
            cVar3.f7617a.put(new l3.k(cls, cls2, cls3), (u<?, ?, ?>) (uVar2 != null ? uVar2 : g3.c.f7616c));
        }
        return uVar2;
    }

    public final List<Class<?>> e() {
        List<Class<?>> orDefault;
        List<Class<?>> listE;
        com.bumptech.glide.h hVar = this.f14254c.f4446b;
        Class<?> cls = this.f14255d.getClass();
        Class<?> cls2 = this.f14258g;
        Class<Transcode> cls3 = this.f14262k;
        g3.d dVar = hVar.f4469h;
        l3.k andSet = dVar.f7619a.getAndSet(null);
        if (andSet == null) {
            andSet = new l3.k(cls, cls2, cls3);
        } else {
            andSet.a(cls, cls2, cls3);
        }
        synchronized (dVar.f7620b) {
            orDefault = dVar.f7620b.getOrDefault(andSet, null);
        }
        dVar.f7619a.set(andSet);
        List<Class<?>> list = orDefault;
        if (orDefault == null) {
            ArrayList arrayList = new ArrayList();
            v2.p pVar = hVar.f4462a;
            synchronized (pVar) {
                listE = pVar.f16177a.e(cls);
            }
            Iterator it = ((ArrayList) listE).iterator();
            while (it.hasNext()) {
                for (Class cls4 : (ArrayList) hVar.f4464c.b((Class) it.next(), cls2)) {
                    if (!((ArrayList) hVar.f4467f.a(cls4, cls3)).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            g3.d dVar2 = hVar.f4469h;
            List<Class<?>> listUnmodifiableList = Collections.unmodifiableList(arrayList);
            synchronized (dVar2.f7620b) {
                dVar2.f7620b.put(new l3.k(cls, cls2, cls3), listUnmodifiableList);
            }
            list = arrayList;
        }
        return list;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<g3.a$a<?>>] */
    public final <X> p2.d<X> f(X x10) throws com.bumptech.glide.h.e {
        p2.d<X> dVar;
        g3.a aVar = this.f14254c.f4446b.f4463b;
        Class<?> cls = x10.getClass();
        synchronized (aVar) {
            for (g3.a.C0144a c0144a : aVar.f7612a) {
                if (c0144a.f7613a.isAssignableFrom(cls)) {
                    dVar = (p2.d<X>) c0144a.f7614b;
                }
            }
            dVar = null;
        }
        if (dVar != null) {
            return dVar;
        }
        throw new com.bumptech.glide.h.e(x10.getClass());
    }

    public final <Z> p2.l<Z> g(Class<Z> cls) {
        p2.l<Z> lVar = (p2.l) this.f14261j.get(cls);
        if (lVar == null) {
            for (Map.Entry<Class<?>, p2.l<?>> entry : this.f14261j.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    lVar = (p2.l) entry.getValue();
                    break;
                }
            }
        }
        if (lVar != null) {
            return lVar;
        }
        if (!this.f14261j.isEmpty() || !this.f14268q) {
            return (p2.l<Z>) x2.b.f17732b;
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean h(Class<?> cls) {
        return d(cls) != null;
    }
}
