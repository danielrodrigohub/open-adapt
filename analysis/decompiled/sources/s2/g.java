package s2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import s2.l;

/* JADX INFO: compiled from: GroupedLinkedMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class g<K extends l, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a<K, V> f14964a = new a<>(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<K, a<K, V>> f14965b = new HashMap();

    /* JADX INFO: compiled from: GroupedLinkedMap.java */
    public static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final K f14966a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<V> f14967b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a<K, V> f14968c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public a<K, V> f14969d;

        public a() {
            this(null);
        }

        public final V a() {
            List<V> list = this.f14967b;
            int size = list != null ? list.size() : 0;
            if (size > 0) {
                return (V) this.f14967b.remove(size - 1);
            }
            return null;
        }

        public a(K k10) {
            this.f14969d = this;
            this.f14968c = this;
            this.f14966a = k10;
        }
    }

    public static <K, V> void c(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.f14969d;
        aVar2.f14968c = aVar.f14968c;
        aVar.f14968c.f14969d = aVar2;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final V a(K k10) {
        a<K, V> aVar = this.f14965b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            this.f14965b.put(k10, aVar);
        } else {
            k10.a();
        }
        c(aVar);
        a<K, V> aVar2 = this.f14964a;
        aVar.f14969d = aVar2;
        a<K, V> aVar3 = aVar2.f14968c;
        aVar.f14968c = aVar3;
        aVar3.f14969d = aVar;
        aVar.f14969d.f14968c = aVar;
        return aVar.a();
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void b(K k10, V v10) {
        a<K, V> aVar = this.f14965b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            c(aVar);
            a<K, V> aVar2 = this.f14964a;
            aVar.f14969d = aVar2.f14969d;
            aVar.f14968c = aVar2;
            aVar2.f14969d = aVar;
            aVar.f14969d.f14968c = aVar;
            this.f14965b.put(k10, aVar);
        } else {
            k10.a();
        }
        if (aVar.f14967b == null) {
            aVar.f14967b = new ArrayList();
        }
        aVar.f14967b.add(v10);
    }

    public final V d() {
        for (a aVar = this.f14964a.f14969d; !aVar.equals(this.f14964a); aVar = aVar.f14969d) {
            V v10 = (V) aVar.a();
            if (v10 != null) {
                return v10;
            }
            c(aVar);
            this.f14965b.remove(aVar.f14966a);
            ((l) aVar.f14966a).a();
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("GroupedLinkedMap( ");
        boolean z10 = false;
        for (a aVar = this.f14964a.f14968c; !aVar.equals(this.f14964a); aVar = aVar.f14968c) {
            z10 = true;
            sb2.append('{');
            sb2.append(aVar.f14966a);
            sb2.append(':');
            List<V> list = aVar.f14967b;
            sb2.append(list != null ? list.size() : 0);
            sb2.append("}, ");
        }
        if (z10) {
            sb2.delete(sb2.length() - 2, sb2.length());
        }
        sb2.append(" )");
        return sb2.toString();
    }
}
