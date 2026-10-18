package g7;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: LinkedTreeMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class p<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Comparator<Comparable> f7819o = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Comparator<? super K> f7820h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e<K, V> f7821i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7822j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7823k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final e<K, V> f7824l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public p<K, V>.b f7825m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p<K, V>.c f7826n;

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public class b extends AbstractSet<Map.Entry<K, V>> {

        /* JADX INFO: compiled from: LinkedTreeMap.java */
        public class a extends p<K, V>.d<Map.Entry<K, V>> {
            public a(b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public final Object next() {
                return a();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            p.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && p.this.b((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            e<K, V> eVarB;
            if (!(obj instanceof Map.Entry) || (eVarB = p.this.b((Map.Entry) obj)) == null) {
                return false;
            }
            p.this.e(eVarB, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return p.this.f7822j;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public final class c extends AbstractSet<K> {

        /* JADX INFO: compiled from: LinkedTreeMap.java */
        public class a extends p<K, V>.d<K> {
            public a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public final K next() {
                return a().f7838m;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            p.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return p.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            p pVar = p.this;
            e<K, V> eVarC = pVar.c(obj);
            if (eVarC != null) {
                pVar.e(eVarC, true);
            }
            return eVarC != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return p.this.f7822j;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public abstract class d<T> implements Iterator<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e<K, V> f7829h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public e<K, V> f7830i = null;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f7831j;

        public d() {
            this.f7829h = p.this.f7824l.f7836k;
            this.f7831j = p.this.f7823k;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.f7829h;
            p pVar = p.this;
            if (eVar == pVar.f7824l) {
                throw new NoSuchElementException();
            }
            if (pVar.f7823k != this.f7831j) {
                throw new ConcurrentModificationException();
            }
            this.f7829h = eVar.f7836k;
            this.f7830i = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f7829h != p.this.f7824l;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.f7830i;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            p.this.e(eVar, true);
            this.f7830i = null;
            this.f7831j = p.this.f7823k;
        }
    }

    public p() {
        Comparator<Comparable> comparator = f7819o;
        this.f7822j = 0;
        this.f7823k = 0;
        this.f7824l = new e<>();
        this.f7820h = comparator;
    }

    public final e<K, V> a(K k10, boolean z10) {
        int iCompareTo;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.f7820h;
        e<K, V> eVar2 = this.f7821i;
        if (eVar2 != null) {
            Comparable comparable = comparator == f7819o ? (Comparable) k10 : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.f7838m) : comparator.compare(k10, eVar2.f7838m);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = iCompareTo < 0 ? eVar2.f7834i : eVar2.f7835j;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z10) {
            return null;
        }
        e<K, V> eVar4 = this.f7824l;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f7837l);
            if (iCompareTo < 0) {
                eVar2.f7834i = eVar;
            } else {
                eVar2.f7835j = eVar;
            }
            d(eVar2, true);
        } else {
            if (comparator == f7819o && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
            }
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f7837l);
            this.f7821i = eVar;
        }
        this.f7822j++;
        this.f7823k++;
        return eVar;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    public final e<K, V> b(Map.Entry<?, ?> entry) {
        boolean z10;
        e<K, V> eVarC = c(entry.getKey());
        if (eVarC != null) {
            V v10 = eVarC.f7839n;
            Object value = entry.getValue();
            z10 = v10 == value || (v10 != null && v10.equals(value));
        }
        if (z10) {
            return eVarC;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final e<K, V> c(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f7821i = null;
        this.f7822j = 0;
        this.f7823k++;
        e<K, V> eVar = this.f7824l;
        eVar.f7837l = eVar;
        eVar.f7836k = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return c(obj) != null;
    }

    public final void d(e<K, V> eVar, boolean z10) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.f7834i;
            e<K, V> eVar3 = eVar.f7835j;
            int i10 = eVar2 != null ? eVar2.f7840o : 0;
            int i11 = eVar3 != null ? eVar3.f7840o : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                e<K, V> eVar4 = eVar3.f7834i;
                e<K, V> eVar5 = eVar3.f7835j;
                int i13 = (eVar4 != null ? eVar4.f7840o : 0) - (eVar5 != null ? eVar5.f7840o : 0);
                if (i13 == -1 || (i13 == 0 && !z10)) {
                    g(eVar);
                } else {
                    i(eVar3);
                    g(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                e<K, V> eVar6 = eVar2.f7834i;
                e<K, V> eVar7 = eVar2.f7835j;
                int i14 = (eVar6 != null ? eVar6.f7840o : 0) - (eVar7 != null ? eVar7.f7840o : 0);
                if (i14 == 1 || (i14 == 0 && !z10)) {
                    i(eVar);
                } else {
                    g(eVar2);
                    i(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                eVar.f7840o = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                eVar.f7840o = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            eVar = eVar.f7833h;
        }
    }

    public final void e(e<K, V> eVar, boolean z10) {
        int i10;
        if (z10) {
            e<K, V> eVar2 = eVar.f7837l;
            eVar2.f7836k = eVar.f7836k;
            eVar.f7836k.f7837l = eVar2;
        }
        e<K, V> eVar3 = eVar.f7834i;
        e<K, V> eVar4 = eVar.f7835j;
        e<K, V> eVar5 = eVar.f7833h;
        int i11 = 0;
        if (eVar3 == null || eVar4 == null) {
            if (eVar3 != null) {
                f(eVar, eVar3);
                eVar.f7834i = null;
            } else if (eVar4 != null) {
                f(eVar, eVar4);
                eVar.f7835j = null;
            } else {
                f(eVar, null);
            }
            d(eVar5, false);
            this.f7822j--;
            this.f7823k++;
            return;
        }
        if (eVar3.f7840o > eVar4.f7840o) {
            e<K, V> eVar6 = eVar3.f7835j;
            while (true) {
                e<K, V> eVar7 = eVar6;
                eVar4 = eVar3;
                eVar3 = eVar7;
                if (eVar3 == null) {
                    break;
                } else {
                    eVar6 = eVar3.f7835j;
                }
            }
        } else {
            for (e<K, V> eVar8 = eVar4.f7834i; eVar8 != null; eVar8 = eVar8.f7834i) {
                eVar4 = eVar8;
            }
        }
        e(eVar4, false);
        e<K, V> eVar9 = eVar.f7834i;
        if (eVar9 != null) {
            i10 = eVar9.f7840o;
            eVar4.f7834i = eVar9;
            eVar9.f7833h = eVar4;
            eVar.f7834i = null;
        } else {
            i10 = 0;
        }
        e<K, V> eVar10 = eVar.f7835j;
        if (eVar10 != null) {
            i11 = eVar10.f7840o;
            eVar4.f7835j = eVar10;
            eVar10.f7833h = eVar4;
            eVar.f7835j = null;
        }
        eVar4.f7840o = Math.max(i10, i11) + 1;
        f(eVar, eVar4);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        p<K, V>.b bVar = this.f7825m;
        if (bVar != null) {
            return bVar;
        }
        p<K, V>.b bVar2 = new b();
        this.f7825m = bVar2;
        return bVar2;
    }

    public final void f(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.f7833h;
        eVar.f7833h = null;
        if (eVar2 != null) {
            eVar2.f7833h = eVar3;
        }
        if (eVar3 == null) {
            this.f7821i = eVar2;
        } else if (eVar3.f7834i == eVar) {
            eVar3.f7834i = eVar2;
        } else {
            eVar3.f7835j = eVar2;
        }
    }

    public final void g(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f7834i;
        e<K, V> eVar3 = eVar.f7835j;
        e<K, V> eVar4 = eVar3.f7834i;
        e<K, V> eVar5 = eVar3.f7835j;
        eVar.f7835j = eVar4;
        if (eVar4 != null) {
            eVar4.f7833h = eVar;
        }
        f(eVar, eVar3);
        eVar3.f7834i = eVar;
        eVar.f7833h = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.f7840o : 0, eVar4 != null ? eVar4.f7840o : 0) + 1;
        eVar.f7840o = iMax;
        eVar3.f7840o = Math.max(iMax, eVar5 != null ? eVar5.f7840o : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        e<K, V> eVarC = c(obj);
        if (eVarC != null) {
            return eVarC.f7839n;
        }
        return null;
    }

    public final void i(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f7834i;
        e<K, V> eVar3 = eVar.f7835j;
        e<K, V> eVar4 = eVar2.f7834i;
        e<K, V> eVar5 = eVar2.f7835j;
        eVar.f7834i = eVar5;
        if (eVar5 != null) {
            eVar5.f7833h = eVar;
        }
        f(eVar, eVar2);
        eVar2.f7835j = eVar;
        eVar.f7833h = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.f7840o : 0, eVar5 != null ? eVar5.f7840o : 0) + 1;
        eVar.f7840o = iMax;
        eVar2.f7840o = Math.max(iMax, eVar4 != null ? eVar4.f7840o : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        p<K, V>.c cVar = this.f7826n;
        if (cVar != null) {
            return cVar;
        }
        p<K, V>.c cVar2 = new c();
        this.f7826n = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        Objects.requireNonNull(k10, "key == null");
        e<K, V> eVarA = a(k10, true);
        V v11 = eVarA.f7839n;
        eVarA.f7839n = v10;
        return v11;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        e<K, V> eVarC = c(obj);
        if (eVarC != null) {
            e(eVarC, true);
        }
        if (eVarC != null) {
            return eVarC.f7839n;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f7822j;
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    public static final class e<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e<K, V> f7833h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public e<K, V> f7834i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public e<K, V> f7835j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public e<K, V> f7836k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public e<K, V> f7837l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final K f7838m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public V f7839n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f7840o;

        public e() {
            this.f7838m = null;
            this.f7837l = this;
            this.f7836k = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k10 = this.f7838m;
            if (k10 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k10.equals(entry.getKey())) {
                return false;
            }
            V v10 = this.f7839n;
            if (v10 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v10.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f7838m;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f7839n;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k10 = this.f7838m;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f7839n;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            V v11 = this.f7839n;
            this.f7839n = v10;
            return v11;
        }

        public final String toString() {
            return this.f7838m + "=" + this.f7839n;
        }

        public e(e<K, V> eVar, K k10, e<K, V> eVar2, e<K, V> eVar3) {
            this.f7833h = eVar;
            this.f7838m = k10;
            this.f7840o = 1;
            this.f7836k = eVar2;
            this.f7837l = eVar3;
            eVar3.f7836k = this;
            eVar2.f7837l = this;
        }
    }
}
