package p;

import androidx.lifecycle.k0;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: compiled from: MapCollections.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f<K, V>.b f12593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f<K, V>.c f12594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f<K, V>.e f12595c;

    /* JADX INFO: compiled from: MapCollections.java */
    public final class a<T> implements Iterator<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f12596h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f12597i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f12598j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f12599k = false;

        public a(int i10) {
            this.f12596h = i10;
            this.f12597i = f.this.d();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f12598j < this.f12597i;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t10 = (T) f.this.b(this.f12598j, this.f12596h);
            this.f12598j++;
            this.f12599k = true;
            return t10;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f12599k) {
                throw new IllegalStateException();
            }
            int i10 = this.f12598j - 1;
            this.f12598j = i10;
            this.f12597i--;
            this.f12599k = false;
            f.this.h(i10);
        }
    }

    /* JADX INFO: compiled from: MapCollections.java */
    public final class b implements Set<Map.Entry<K, V>> {
        public b() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int iD = f.this.d();
            for (Map.Entry<K, V> entry : collection) {
                f.this.g(entry.getKey(), entry.getValue());
            }
            return iD != f.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iE = f.this.e(entry.getKey());
            if (iE < 0) {
                return false;
            }
            return k0.g(f.this.b(iE, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return f.j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int iHashCode = 0;
            for (int iD = f.this.d() - 1; iD >= 0; iD--) {
                Object objB = f.this.b(iD, 0);
                Object objB2 = f.this.b(iD, 1);
                iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return f.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return f.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: compiled from: MapCollections.java */
    public final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f12603h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f12605j = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f12604i = -1;

        public d() {
            this.f12603h = f.this.d() - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.f12605j) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return k0.g(entry.getKey(), f.this.b(this.f12604i, 0)) && k0.g(entry.getValue(), f.this.b(this.f12604i, 1));
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            if (this.f12605j) {
                return (K) f.this.b(this.f12604i, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            if (this.f12605j) {
                return (V) f.this.b(this.f12604i, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f12604i < this.f12603h;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (!this.f12605j) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objB = f.this.b(this.f12604i, 0);
            Object objB2 = f.this.b(this.f12604i, 1);
            return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f12604i++;
            this.f12605j = true;
            return this;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f12605j) {
                throw new IllegalStateException();
            }
            f.this.h(this.f12604i);
            this.f12604i--;
            this.f12603h--;
            this.f12605j = false;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            if (this.f12605j) {
                return (V) f.this.i(this.f12604i, v10);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public static <T> boolean j(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean k(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public abstract void a();

    public abstract Object b(int i10, int i11);

    public abstract Map<K, V> c();

    public abstract int d();

    public abstract int e(Object obj);

    public abstract int f(Object obj);

    public abstract void g(K k10, V v10);

    public abstract void h(int i10);

    public abstract V i(int i10, V v10);

    public final <T> T[] l(T[] tArr, int i10) {
        int iD = d();
        if (tArr.length < iD) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iD));
        }
        for (int i11 = 0; i11 < iD; i11++) {
            tArr[i11] = b(i11, i10);
        }
        if (tArr.length > iD) {
            tArr[iD] = null;
        }
        return tArr;
    }

    /* JADX INFO: compiled from: MapCollections.java */
    public final class c implements Set<K> {
        public c() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(K k10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return f.this.e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Map<K, V> mapC = f.this.c();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!mapC.containsKey(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return f.j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int iHashCode = 0;
            for (int iD = f.this.d() - 1; iD >= 0; iD--) {
                Object objB = f.this.b(iD, 0);
                iHashCode += objB == null ? 0 : objB.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return f.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            int iE = f.this.e(obj);
            if (iE < 0) {
                return false;
            }
            f.this.h(iE);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            Map<K, V> mapC = f.this.c();
            int size = mapC.size();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                mapC.remove(it.next());
            }
            return size != mapC.size();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return f.k(f.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return f.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            f fVar = f.this;
            int iD = fVar.d();
            Object[] objArr = new Object[iD];
            for (int i10 = 0; i10 < iD; i10++) {
                objArr[i10] = fVar.b(i10, 0);
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.l(tArr, 0);
        }
    }

    /* JADX INFO: compiled from: MapCollections.java */
    public final class e implements Collection<V> {
        public e() {
        }

        @Override // java.util.Collection
        public final boolean add(V v10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            f.this.a();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return f.this.f(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return f.this.d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            int iF = f.this.f(obj);
            if (iF < 0) {
                return false;
            }
            f.this.h(iF);
            return true;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            int iD = f.this.d();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < iD) {
                if (collection.contains(f.this.b(i10, 1))) {
                    f.this.h(i10);
                    i10--;
                    iD--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            int iD = f.this.d();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < iD) {
                if (!collection.contains(f.this.b(i10, 1))) {
                    f.this.h(i10);
                    i10--;
                    iD--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public final int size() {
            return f.this.d();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            f fVar = f.this;
            int iD = fVar.d();
            Object[] objArr = new Object[iD];
            for (int i10 = 0; i10 < iD; i10++) {
                objArr[i10] = fVar.b(i10, 1);
            }
            return objArr;
        }

        @Override // java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.l(tArr, 1);
        }
    }
}
