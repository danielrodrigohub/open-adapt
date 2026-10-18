package m7;

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
public class f1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f10641n = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10642h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f10645k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile f1<K, V>.d f10646l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<f1<K, V>.b> f10643i = Collections.emptyList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map<K, V> f10644j = Collections.emptyMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Map<K, V> f10647m = Collections.emptyMap();

    /* JADX INFO: compiled from: SmallSortedMap.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Iterator<Object> f10648a = new C0207a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Iterable<Object> f10649b = new b();

        /* JADX INFO: renamed from: m7.f1$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SmallSortedMap.java */
        public static class C0207a implements Iterator<Object> {
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
        public static class b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return a.f10648a;
            }
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    public class c implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10653h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f10654i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Iterator<Map.Entry<K, V>> f10655j;

        public c() {
        }

        public final Iterator<Map.Entry<K, V>> a() {
            if (this.f10655j == null) {
                this.f10655j = f1.this.f10644j.entrySet().iterator();
            }
            return this.f10655j;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f10653h + 1 >= f1.this.f10643i.size()) {
                return !f1.this.f10644j.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.f10654i = true;
            int i10 = this.f10653h + 1;
            this.f10653h = i10;
            return i10 < f1.this.f10643i.size() ? f1.this.f10643i.get(this.f10653h) : a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f10654i) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f10654i = false;
            f1 f1Var = f1.this;
            int i10 = f1.f10641n;
            f1Var.b();
            if (this.f10653h >= f1.this.f10643i.size()) {
                a().remove();
                return;
            }
            f1 f1Var2 = f1.this;
            int i11 = this.f10653h;
            this.f10653h = i11 - 1;
            f1Var2.j(i11);
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
            f1.this.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            f1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = f1.this.get(entry.getKey());
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
            f1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return f1.this.size();
        }
    }

    public f1(int i10) {
        this.f10642h = i10;
    }

    public final int a(K k10) {
        int size = this.f10643i.size() - 1;
        if (size >= 0) {
            int iCompareTo = k10.compareTo(this.f10643i.get(size).f10650h);
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
            int iCompareTo2 = k10.compareTo(this.f10643i.get(i11).f10650h);
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
        if (this.f10645k) {
            throw new UnsupportedOperationException();
        }
    }

    public final Map.Entry<K, V> c(int i10) {
        return this.f10643i.get(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.f10643i.isEmpty()) {
            this.f10643i.clear();
        }
        if (this.f10644j.isEmpty()) {
            return;
        }
        this.f10644j.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f10644j.containsKey(comparable);
    }

    public final int d() {
        return this.f10643i.size();
    }

    public final Iterable<Map.Entry<K, V>> e() {
        return this.f10644j.isEmpty() ? (Iterable<Map.Entry<K, V>>) a.f10649b : this.f10644j.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f10646l == null) {
            this.f10646l = new d();
        }
        return this.f10646l;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f1)) {
            return super.equals(obj);
        }
        f1 f1Var = (f1) obj;
        int size = size();
        if (size != f1Var.size()) {
            return false;
        }
        int iD = d();
        if (iD != f1Var.d()) {
            return entrySet().equals(f1Var.entrySet());
        }
        for (int i10 = 0; i10 < iD; i10++) {
            if (!c(i10).equals(f1Var.c(i10))) {
                return false;
            }
        }
        if (iD != size) {
            return this.f10644j.equals(f1Var.f10644j);
        }
        return true;
    }

    public final SortedMap<K, V> f() {
        b();
        if (this.f10644j.isEmpty() && !(this.f10644j instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f10644j = treeMap;
            this.f10647m = treeMap.descendingMap();
        }
        return (SortedMap) this.f10644j;
    }

    public void g() {
        if (this.f10645k) {
            return;
        }
        this.f10644j = this.f10644j.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f10644j);
        this.f10647m = this.f10647m.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f10647m);
        this.f10645k = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? this.f10643i.get(iA).f10651i : this.f10644j.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iD = d();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iD; i10++) {
            iHashCode += this.f10643i.get(i10).hashCode();
        }
        return this.f10644j.size() > 0 ? iHashCode + this.f10644j.hashCode() : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final V put(K k10, V v10) {
        b();
        int iA = a(k10);
        if (iA >= 0) {
            return this.f10643i.get(iA).setValue(v10);
        }
        b();
        if (this.f10643i.isEmpty() && !(this.f10643i instanceof ArrayList)) {
            this.f10643i = new ArrayList(this.f10642h);
        }
        int i10 = -(iA + 1);
        if (i10 >= this.f10642h) {
            return f().put(k10, v10);
        }
        int size = this.f10643i.size();
        int i11 = this.f10642h;
        if (size == i11) {
            f1<K, V>.b bVarRemove = this.f10643i.remove(i11 - 1);
            f().put(bVarRemove.f10650h, bVarRemove.f10651i);
        }
        this.f10643i.add(i10, new b(k10, v10));
        return null;
    }

    public final V j(int i10) {
        b();
        V v10 = this.f10643i.remove(i10).f10651i;
        if (!this.f10644j.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = f().entrySet().iterator();
            this.f10643i.add(new b(this, it.next()));
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
        if (this.f10644j.isEmpty()) {
            return null;
        }
        return this.f10644j.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f10644j.size() + this.f10643i.size();
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    public class b implements Map.Entry<K, V>, Comparable<f1<K, V>.b> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final K f10650h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public V f10651i;

        public b(f1 f1Var, Map.Entry<K, V> entry) {
            K key = entry.getKey();
            V value = entry.getValue();
            f1.this = f1Var;
            this.f10650h = key;
            this.f10651i = value;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f10650h.compareTo(((b) obj).f10650h);
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
            K k10 = this.f10650h;
            Object key = entry.getKey();
            if (k10 == null) {
                zEquals = key == null;
            } else {
                zEquals = k10.equals(key);
            }
            if (zEquals) {
                V v10 = this.f10651i;
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
            return this.f10650h;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f10651i;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k10 = this.f10650h;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f10651i;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            f1 f1Var = f1.this;
            int i10 = f1.f10641n;
            f1Var.b();
            V v11 = this.f10651i;
            this.f10651i = v10;
            return v11;
        }

        public final String toString() {
            return this.f10650h + "=" + this.f10651i;
        }

        public b(K k10, V v10) {
            this.f10650h = k10;
            this.f10651i = v10;
        }
    }
}
