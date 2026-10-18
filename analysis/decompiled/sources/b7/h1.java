package b7;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: SmallSortedMap.java */
/* JADX INFO: loaded from: classes.dex */
public class h1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f3402n = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3403h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3406k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile h1<K, V>.d f3407l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<h1<K, V>.b> f3404i = Collections.emptyList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map<K, V> f3405j = Collections.emptyMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Map<K, V> f3408m = Collections.emptyMap();

    /* JADX INFO: compiled from: SmallSortedMap.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Iterator<Object> f3409a = new C0056a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Iterable<Object> f3410b = new b();

        /* JADX INFO: renamed from: b7.h1$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SmallSortedMap.java */
        public class C0056a implements Iterator<Object> {
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: compiled from: SmallSortedMap.java */
        public class b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return a.f3409a;
            }
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    public class c implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3414h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f3415i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Iterator<Map.Entry<K, V>> f3416j;

        public c() {
        }

        public final Iterator<Map.Entry<K, V>> a() {
            if (this.f3416j == null) {
                this.f3416j = h1.this.f3405j.entrySet().iterator();
            }
            return this.f3416j;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f3414h + 1 >= h1.this.f3404i.size()) {
                return !h1.this.f3405j.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.f3415i = true;
            int i10 = this.f3414h + 1;
            this.f3414h = i10;
            return i10 < h1.this.f3404i.size() ? h1.this.f3404i.get(this.f3414h) : a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f3415i) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f3415i = false;
            h1 h1Var = h1.this;
            int i10 = h1.f3402n;
            h1Var.b();
            if (this.f3414h >= h1.this.f3404i.size()) {
                a().remove();
                return;
            }
            h1 h1Var2 = h1.this;
            int i11 = this.f3414h;
            this.f3414h = i11 - 1;
            h1Var2.j(i11);
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    public class d extends AbstractSet<Map.Entry<K, V>> {
        public d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                return false;
            }
            h1.this.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            h1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = h1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            h1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return h1.this.size();
        }
    }

    public h1(int i10) {
        this.f3403h = i10;
    }

    public final int a(K k10) {
        int size = this.f3404i.size() - 1;
        if (size >= 0) {
            int iCompareTo = k10.compareTo(this.f3404i.get(size).f3411h);
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) / 2;
            int iCompareTo2 = k10.compareTo(this.f3404i.get(i11).f3411h);
            if (iCompareTo2 < 0) {
                size = i11 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i11;
                }
                i10 = i11 + 1;
            }
        }
        return -(i10 + 1);
    }

    public final void b() {
        if (this.f3406k) {
            throw new UnsupportedOperationException();
        }
    }

    public final Map.Entry<K, V> c(int i10) {
        return this.f3404i.get(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.f3404i.isEmpty()) {
            this.f3404i.clear();
        }
        if (this.f3405j.isEmpty()) {
            return;
        }
        this.f3405j.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f3405j.containsKey(comparable);
    }

    public final int d() {
        return this.f3404i.size();
    }

    public final Iterable<Map.Entry<K, V>> e() {
        return this.f3405j.isEmpty() ? (Iterable<Map.Entry<K, V>>) a.f3410b : this.f3405j.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f3407l == null) {
            this.f3407l = new d();
        }
        return this.f3407l;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h1)) {
            return super.equals(obj);
        }
        h1 h1Var = (h1) obj;
        int size = size();
        if (size != h1Var.size()) {
            return false;
        }
        int iD = d();
        if (iD != h1Var.d()) {
            return entrySet().equals(h1Var.entrySet());
        }
        for (int i10 = 0; i10 < iD; i10++) {
            if (!c(i10).equals(h1Var.c(i10))) {
                return false;
            }
        }
        if (iD != size) {
            return this.f3405j.equals(h1Var.f3405j);
        }
        return true;
    }

    public final SortedMap<K, V> f() {
        b();
        if (this.f3405j.isEmpty() && !(this.f3405j instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f3405j = treeMap;
            this.f3408m = treeMap.descendingMap();
        }
        return (SortedMap) this.f3405j;
    }

    public void g() {
        if (this.f3406k) {
            return;
        }
        this.f3405j = this.f3405j.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3405j);
        this.f3408m = this.f3408m.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3408m);
        this.f3406k = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? this.f3404i.get(iA).f3412i : this.f3405j.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iD = d();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iD; i10++) {
            iHashCode += this.f3404i.get(i10).hashCode();
        }
        return this.f3405j.size() > 0 ? iHashCode + this.f3405j.hashCode() : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final V put(K k10, V v10) {
        b();
        int iA = a(k10);
        if (iA >= 0) {
            return this.f3404i.get(iA).setValue(v10);
        }
        b();
        if (this.f3404i.isEmpty() && !(this.f3404i instanceof ArrayList)) {
            this.f3404i = new ArrayList(this.f3403h);
        }
        int i10 = -(iA + 1);
        if (i10 >= this.f3403h) {
            return f().put(k10, v10);
        }
        int size = this.f3404i.size();
        int i11 = this.f3403h;
        if (size == i11) {
            h1<K, V>.b bVarRemove = this.f3404i.remove(i11 - 1);
            f().put(bVarRemove.f3411h, bVarRemove.f3412i);
        }
        this.f3404i.add(i10, new b(k10, v10));
        return null;
    }

    public final V j(int i10) {
        b();
        V v10 = this.f3404i.remove(i10).f3412i;
        if (!this.f3405j.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = f().entrySet().iterator();
            this.f3404i.add(new b(this, it.next()));
            it.remove();
        }
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return j(iA);
        }
        if (this.f3405j.isEmpty()) {
            return null;
        }
        return this.f3405j.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f3405j.size() + this.f3404i.size();
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    public class b implements Map.Entry<K, V>, Comparable<h1<K, V>.b> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final K f3411h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public V f3412i;

        public b(h1 h1Var, Map.Entry<K, V> entry) {
            K key = entry.getKey();
            V value = entry.getValue();
            h1.this = h1Var;
            this.f3411h = key;
            this.f3412i = value;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f3411h.compareTo(((b) obj).f3411h);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean zEquals;
            boolean zEquals2;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k10 = this.f3411h;
            Object key = entry.getKey();
            if (k10 == null) {
                zEquals = key == null;
            } else {
                zEquals = k10.equals(key);
            }
            if (zEquals) {
                V v10 = this.f3412i;
                Object value = entry.getValue();
                if (v10 == null) {
                    zEquals2 = value == null;
                } else {
                    zEquals2 = v10.equals(value);
                }
                if (zEquals2) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f3411h;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f3412i;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k10 = this.f3411h;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f3412i;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            h1 h1Var = h1.this;
            int i10 = h1.f3402n;
            h1Var.b();
            V v11 = this.f3412i;
            this.f3412i = v10;
            return v11;
        }

        public final String toString() {
            return this.f3411h + "=" + this.f3412i;
        }

        public b(K k10, V v10) {
            this.f3411h = k10;
            this.f3412i = v10;
        }
    }
}
