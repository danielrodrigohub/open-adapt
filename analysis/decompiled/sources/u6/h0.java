package u6;

import com.google.j2objc.annotations.Weak;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import u6.d.b.a;

/* JADX INFO: compiled from: Maps.java */
/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: compiled from: Maps.java */
    public static abstract class a<K, V> extends v0.d<Map.Entry<K, V>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            u6.d.b.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public abstract boolean contains(@CheckForNull Object obj);

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return u6.d.b.this.isEmpty();
        }

        @Override // u6.v0.d, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection<?> collection) {
            try {
                Objects.requireNonNull(collection);
                return super.removeAll(collection);
            } catch (UnsupportedOperationException unused) {
                Iterator<?> it = collection.iterator();
                boolean zRemove = false;
                while (it.hasNext()) {
                    zRemove |= ((u6.d.b.a) this).remove(it.next());
                }
                return zRemove;
            }
        }

        @Override // u6.v0.d, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection<?> collection) {
            int i10;
            try {
                Objects.requireNonNull(collection);
                return super.retainAll(collection);
            } catch (UnsupportedOperationException unused) {
                int size = collection.size();
                if (size < 3) {
                    h.b(size, "expectedSize");
                    i10 = size + 1;
                } else {
                    i10 = size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE;
                }
                HashSet hashSet = new HashSet(i10);
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        hashSet.add(((Map.Entry) obj).getKey());
                    }
                }
                return u6.d.b.this.keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return u6.d.b.this.size();
        }
    }

    /* JADX INFO: compiled from: Maps.java */
    public static class b<K, V> extends v0.d<K> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Weak
        public final Map<K, V> f15930h;

        public b(Map<K, V> map) {
            Objects.requireNonNull(map);
            this.f15930h = map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(@CheckForNull Object obj) {
            return this.f15930h.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return this.f15930h.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f15930h.size();
        }
    }

    /* JADX INFO: compiled from: Maps.java */
    public static class c<K, V> extends AbstractCollection<V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Weak
        public final Map<K, V> f15931h;

        public c(Map<K, V> map) {
            Objects.requireNonNull(map);
            this.f15931h = map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f15931h.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(@CheckForNull Object obj) {
            return this.f15931h.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return this.f15931h.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new g0(this.f15931h.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(@CheckForNull Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : this.f15931h.entrySet()) {
                    if (t6.f.a(obj, entry.getValue())) {
                        this.f15931h.remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            try {
                Objects.requireNonNull(collection);
                return super.removeAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet();
                for (Map.Entry<K, V> entry : this.f15931h.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return this.f15931h.keySet().removeAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            try {
                Objects.requireNonNull(collection);
                return super.retainAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet();
                for (Map.Entry<K, V> entry : this.f15931h.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return this.f15931h.keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f15931h.size();
        }
    }

    /* JADX INFO: compiled from: Maps.java */
    public static abstract class d<K, V> extends AbstractMap<K, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @CheckForNull
        public transient Set<Map.Entry<K, V>> f15932h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @CheckForNull
        public transient Collection<V> f15933i;

        @Override // java.util.AbstractMap, java.util.Map
        public final Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f15932h;
            if (set != null) {
                return set;
            }
            u6.d.b.a aVar = ((u6.d.b) this).new a();
            this.f15932h = aVar;
            return aVar;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Collection<V> values() {
            Collection<V> collection = this.f15933i;
            if (collection != null) {
                return collection;
            }
            c cVar = new c(this);
            this.f15933i = cVar;
            return cVar;
        }
    }

    public static boolean a(Map<?, ?> map, @CheckForNull Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }
}
