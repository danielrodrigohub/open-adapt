package m;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: SafeIterableMap.java */
/* JADX INFO: loaded from: classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c<K, V> f10245h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c<K, V> f10246i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public WeakHashMap<f<K, V>, Boolean> f10247j = new WeakHashMap<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10248k = 0;

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public static class a<K, V> extends e<K, V> {
        public a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // m.b.e
        public final c<K, V> b(c<K, V> cVar) {
            return cVar.f10252k;
        }

        @Override // m.b.e
        public final c<K, V> c(c<K, V> cVar) {
            return cVar.f10251j;
        }
    }

    /* JADX INFO: renamed from: m.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SafeIterableMap.java */
    public static class C0200b<K, V> extends e<K, V> {
        public C0200b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // m.b.e
        public final c<K, V> b(c<K, V> cVar) {
            return cVar.f10251j;
        }

        @Override // m.b.e
        public final c<K, V> c(c<K, V> cVar) {
            return cVar.f10252k;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public static class c<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final K f10249h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final V f10250i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public c<K, V> f10251j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public c<K, V> f10252k;

        public c(K k10, V v10) {
            this.f10249h = k10;
            this.f10250i = v10;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f10249h.equals(cVar.f10249h) && this.f10250i.equals(cVar.f10250i);
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f10249h;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f10250i;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f10249h.hashCode() ^ this.f10250i.hashCode();
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            return this.f10249h + "=" + this.f10250i;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public c<K, V> f10253h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f10254i = true;

        public d() {
        }

        @Override // m.b.f
        public final void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.f10253h;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.f10252k;
                this.f10253h = cVar3;
                this.f10254i = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f10254i) {
                return b.this.f10245h != null;
            }
            c<K, V> cVar = this.f10253h;
            return (cVar == null || cVar.f10251j == null) ? false : true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f10254i) {
                this.f10254i = false;
                this.f10253h = b.this.f10245h;
            } else {
                c<K, V> cVar = this.f10253h;
                this.f10253h = cVar != null ? cVar.f10251j : null;
            }
            return this.f10253h;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public c<K, V> f10256h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public c<K, V> f10257i;

        public e(c<K, V> cVar, c<K, V> cVar2) {
            this.f10256h = cVar2;
            this.f10257i = cVar;
        }

        @Override // m.b.f
        public final void a(c<K, V> cVar) {
            c<K, V> cVarC = null;
            if (this.f10256h == cVar && cVar == this.f10257i) {
                this.f10257i = null;
                this.f10256h = null;
            }
            c<K, V> cVar2 = this.f10256h;
            if (cVar2 == cVar) {
                this.f10256h = b(cVar2);
            }
            c<K, V> cVar3 = this.f10257i;
            if (cVar3 == cVar) {
                c<K, V> cVar4 = this.f10256h;
                if (cVar3 != cVar4 && cVar4 != null) {
                    cVarC = c(cVar3);
                }
                this.f10257i = cVarC;
            }
        }

        public abstract c<K, V> b(c<K, V> cVar);

        public abstract c<K, V> c(c<K, V> cVar);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10257i != null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            c<K, V> cVar = this.f10257i;
            c<K, V> cVar2 = this.f10256h;
            this.f10257i = (cVar == cVar2 || cVar2 == null) ? null : c(cVar);
            return cVar;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    public interface f<K, V> {
        void a(c<K, V> cVar);
    }

    public final boolean equals(Object obj) {
        e eVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f10248k != bVar.f10248k) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (true) {
            eVar = (e) it;
            if (!eVar.hasNext()) {
                break;
            }
            e eVar2 = (e) it2;
            if (!eVar2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) eVar.next();
            Object next = eVar2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (eVar.hasNext() || ((e) it2).hasNext()) ? false : true;
    }

    public c<K, V> h(K k10) {
        c<K, V> cVar = this.f10245h;
        while (cVar != null && !cVar.f10249h.equals(k10)) {
            cVar = cVar.f10251j;
        }
        return cVar;
    }

    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (true) {
            e eVar = (e) it;
            if (!eVar.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) eVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f10245h, this.f10246i);
        this.f10247j.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public final b<K, V>.d k() {
        b<K, V>.d dVar = new d();
        this.f10247j.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public final c<K, V> l(K k10, V v10) {
        c<K, V> cVar = new c<>(k10, v10);
        this.f10248k++;
        c<K, V> cVar2 = this.f10246i;
        if (cVar2 == null) {
            this.f10245h = cVar;
            this.f10246i = cVar;
            return cVar;
        }
        cVar2.f10251j = cVar;
        cVar.f10252k = cVar2;
        this.f10246i = cVar;
        return cVar;
    }

    public V m(K k10, V v10) {
        c<K, V> cVarH = h(k10);
        if (cVarH != null) {
            return cVarH.f10250i;
        }
        l(k10, v10);
        return null;
    }

    public V n(K k10) {
        c<K, V> cVarH = h(k10);
        if (cVarH == null) {
            return null;
        }
        this.f10248k--;
        if (!this.f10247j.isEmpty()) {
            Iterator<f<K, V>> it = this.f10247j.keySet().iterator();
            while (it.hasNext()) {
                it.next().a(cVarH);
            }
        }
        c<K, V> cVar = cVarH.f10252k;
        if (cVar != null) {
            cVar.f10251j = cVarH.f10251j;
        } else {
            this.f10245h = cVarH.f10251j;
        }
        c<K, V> cVar2 = cVarH.f10251j;
        if (cVar2 != null) {
            cVar2.f10252k = cVar;
        } else {
            this.f10246i = cVar;
        }
        cVarH.f10251j = null;
        cVarH.f10252k = null;
        return cVarH.f10250i;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (true) {
            e eVar = (e) it;
            if (!eVar.hasNext()) {
                sbC.append("]");
                return sbC.toString();
            }
            sbC.append(((Map.Entry) eVar.next()).toString());
            if (eVar.hasNext()) {
                sbC.append(", ");
            }
        }
    }
}
