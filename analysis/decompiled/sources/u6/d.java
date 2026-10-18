package u6;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<K, V> extends u6.f<K, V> implements Serializable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public transient Map<K, Collection<V>> f15889k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public transient int f15890l;

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class a extends d<K, V>.c<V> {
        public a(d dVar) {
            super();
        }

        @Override // u6.d.c
        public final V a(K k10, V v10) {
            return v10;
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class b extends h0.d<K, Collection<V>> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final transient Map<K, Collection<V>> f15891j;

        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        public class a extends h0.a<K, Collection<V>> {
            public a() {
            }

            @Override // u6.h0.a, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(@CheckForNull Object obj) {
                Set<Map.Entry<K, Collection<V>>> setEntrySet = b.this.f15891j.entrySet();
                Objects.requireNonNull(setEntrySet);
                try {
                    return setEntrySet.contains(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return b.this.new C0275b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(@CheckForNull Object obj) {
                Collection<V> collectionRemove;
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                d dVar = d.this;
                Object key = entry.getKey();
                Map<K, Collection<V>> map = dVar.f15889k;
                Objects.requireNonNull(map);
                try {
                    collectionRemove = map.remove(key);
                } catch (ClassCastException | NullPointerException unused) {
                    collectionRemove = null;
                }
                Collection<V> collection = collectionRemove;
                if (collection == null) {
                    return true;
                }
                int size = collection.size();
                collection.clear();
                dVar.f15890l -= size;
                return true;
            }
        }

        /* JADX INFO: renamed from: u6.d$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        public class C0275b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final Iterator<Map.Entry<K, Collection<V>>> f15894h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            @CheckForNull
            public Collection<V> f15895i;

            public C0275b() {
                this.f15894h = b.this.f15891j.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f15894h.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                Map.Entry<K, Collection<V>> next = this.f15894h.next();
                this.f15895i = next.getValue();
                return b.this.a(next);
            }

            @Override // java.util.Iterator
            public final void remove() {
                t6.h.g(this.f15895i != null, "no calls to next() since the last call to remove()");
                this.f15894h.remove();
                d.i(d.this, this.f15895i.size());
                this.f15895i.clear();
                this.f15895i = null;
            }
        }

        public b(Map<K, Collection<V>> map) {
            this.f15891j = map;
        }

        public final Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return new u(key, d.this.k(key, entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            Map<K, Collection<V>> map = this.f15891j;
            d dVar = d.this;
            if (map == dVar.f15889k) {
                dVar.clear();
                return;
            }
            C0275b c0275b = new C0275b();
            while (c0275b.hasNext()) {
                c0275b.next();
                c0275b.remove();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(@CheckForNull Object obj) {
            Map<K, Collection<V>> map = this.f15891j;
            Objects.requireNonNull(map);
            try {
                return map.containsKey(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean equals(@CheckForNull Object obj) {
            return this == obj || this.f15891j.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public final Object get(@CheckForNull Object obj) {
            Collection<V> collection;
            Map<K, Collection<V>> map = this.f15891j;
            Objects.requireNonNull(map);
            try {
                collection = map.get(obj);
            } catch (ClassCastException | NullPointerException unused) {
                collection = null;
            }
            Collection<V> collection2 = collection;
            if (collection2 == null) {
                return null;
            }
            return d.this.k(obj, collection2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int hashCode() {
            return this.f15891j.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            d dVar = d.this;
            Set<K> set = dVar.f15926h;
            if (set != null) {
                return set;
            }
            Set<K> setD = dVar.d();
            dVar.f15926h = setD;
            return setD;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public final Object remove(@CheckForNull Object obj) {
            Collection<V> collectionRemove = this.f15891j.remove(obj);
            if (collectionRemove == null) {
                return null;
            }
            Collection<V> collectionJ = d.this.j();
            collectionJ.addAll(collectionRemove);
            d.i(d.this, collectionRemove.size());
            collectionRemove.clear();
            return collectionJ;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.f15891j.size();
        }

        @Override // java.util.AbstractMap
        public final String toString() {
            return this.f15891j.toString();
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public abstract class c<T> implements Iterator<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Iterator<Map.Entry<K, Collection<V>>> f15897h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @CheckForNull
        public K f15898i = null;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @CheckForNull
        public Collection<V> f15899j = null;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Iterator<V> f15900k = e0.INSTANCE;

        public c() {
            this.f15897h = d.this.f15889k.entrySet().iterator();
        }

        public abstract T a(K k10, V v10);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f15897h.hasNext() || this.f15900k.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!this.f15900k.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f15897h.next();
                this.f15898i = next.getKey();
                Collection<V> value = next.getValue();
                this.f15899j = value;
                this.f15900k = value.iterator();
            }
            return a(this.f15898i, this.f15900k.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f15900k.remove();
            Collection<V> collection = this.f15899j;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f15897h.remove();
            }
            d.g(d.this);
        }
    }

    /* JADX INFO: renamed from: u6.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class C0276d extends h0.b<K, Collection<V>> {

        /* JADX INFO: renamed from: u6.d$d$a */
        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        public class a implements Iterator<K> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            @CheckForNull
            public Map.Entry<K, Collection<V>> f15903h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ Iterator f15904i;

            public a(Iterator it) {
                this.f15904i = it;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f15904i.hasNext();
            }

            @Override // java.util.Iterator
            public final K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.f15904i.next();
                this.f15903h = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public final void remove() {
                t6.h.g(this.f15903h != null, "no calls to next() since the last call to remove()");
                Collection<V> value = this.f15903h.getValue();
                this.f15904i.remove();
                d.i(d.this, value.size());
                value.clear();
                this.f15903h = null;
            }
        }

        public C0276d(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Iterator<K> it = iterator();
            while (true) {
                a aVar = (a) it;
                if (!aVar.hasNext()) {
                    return;
                }
                aVar.next();
                aVar.remove();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection<?> collection) {
            return this.f15930h.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(@CheckForNull Object obj) {
            return this == obj || this.f15930h.keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return this.f15930h.keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new a(this.f15930h.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(@CheckForNull Object obj) {
            int size;
            Collection collection = (Collection) this.f15930h.remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                d.i(d.this, size);
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class e extends d<K, V>.h implements NavigableMap<K, Collection<V>> {
        public e(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // u6.d.h
        public final SortedSet b() {
            return new f(d());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, Collection<V>> ceilingEntry(K k10) {
            Map.Entry<K, Collection<V>> entryCeilingEntry = d().ceilingEntry(k10);
            if (entryCeilingEntry == null) {
                return null;
            }
            return a(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final K ceilingKey(K k10) {
            return d().ceilingKey(k10);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet<K> descendingKeySet() {
            return ((e) descendingMap()).c();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> descendingMap() {
            return new e(d().descendingMap());
        }

        @Override // u6.d.h, u6.d.b, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public final NavigableSet<K> keySet() {
            SortedSet<K> sortedSetB = this.f15908l;
            if (sortedSetB == null) {
                sortedSetB = b();
                this.f15908l = sortedSetB;
            }
            return (NavigableSet) sortedSetB;
        }

        @CheckForNull
        public final Map.Entry<K, Collection<V>> f(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            Collection<V> collectionJ = d.this.j();
            collectionJ.addAll(next.getValue());
            it.remove();
            K key = next.getKey();
            Objects.requireNonNull((u6.c) d.this);
            return new u(key, Collections.unmodifiableList((List) collectionJ));
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> entryFirstEntry = d().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return a(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, Collection<V>> floorEntry(K k10) {
            Map.Entry<K, Collection<V>> entryFloorEntry = d().floorEntry(k10);
            if (entryFloorEntry == null) {
                return null;
            }
            return a(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final K floorKey(K k10) {
            return d().floorKey(k10);
        }

        @Override // u6.d.h
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public final NavigableMap<K, Collection<V>> d() {
            return (NavigableMap) ((SortedMap) this.f15891j);
        }

        @Override // u6.d.h, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, Collection<V>> higherEntry(K k10) {
            Map.Entry<K, Collection<V>> entryHigherEntry = d().higherEntry(k10);
            if (entryHigherEntry == null) {
                return null;
            }
            return a(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final K higherKey(K k10) {
            return d().higherKey(k10);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> entryLastEntry = d().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return a(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, Collection<V>> lowerEntry(K k10) {
            Map.Entry<K, Collection<V>> entryLowerEntry = d().lowerEntry(k10);
            if (entryLowerEntry == null) {
                return null;
            }
            return a(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final K lowerKey(K k10) {
            return d().lowerKey(k10);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet<K> navigableKeySet() {
            return c();
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, Collection<V>> pollFirstEntry() {
            return f(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        @CheckForNull
        public final Map.Entry<K, Collection<V>> pollLastEntry() {
            return f(((h0.d) descendingMap()).entrySet().iterator());
        }

        @Override // u6.d.h, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // u6.d.h, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> headMap(K k10, boolean z10) {
            return new e(d().headMap(k10, z10));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> subMap(K k10, boolean z10, K k11, boolean z11) {
            return new e(d().subMap(k10, z10, k11, z11));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> tailMap(K k10, boolean z10) {
            return new e(d().tailMap(k10, z10));
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class f extends d<K, V>.i implements NavigableSet<K> {
        public f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public final K ceiling(K k10) {
            return h().ceilingKey(k10);
        }

        @Override // java.util.NavigableSet
        public final Iterator<K> descendingIterator() {
            return ((C0276d) descendingSet()).iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> descendingSet() {
            return new f(h().descendingMap());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public final K floor(K k10) {
            return h().floorKey(k10);
        }

        @Override // u6.d.i, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public final K higher(K k10) {
            return h().higherKey(k10);
        }

        @Override // u6.d.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public final NavigableMap<K, Collection<V>> h() {
            return (NavigableMap) ((SortedMap) this.f15930h);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public final K lower(K k10) {
            return h().lowerKey(k10);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public final K pollFirst() {
            C0276d.a aVar = (C0276d.a) iterator();
            if (!aVar.hasNext()) {
                return null;
            }
            K k10 = (K) aVar.next();
            aVar.remove();
            return k10;
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public final K pollLast() {
            Iterator<K> itDescendingIterator = descendingIterator();
            if (!itDescendingIterator.hasNext()) {
                return null;
            }
            K next = itDescendingIterator.next();
            itDescendingIterator.remove();
            return next;
        }

        @Override // u6.d.i, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // u6.d.i, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> headSet(K k10, boolean z10) {
            return new f(h().headMap(k10, z10));
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> subSet(K k10, boolean z10, K k11, boolean z11) {
            return new f(h().subMap(k10, z10, k11, z11));
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> tailSet(K k10, boolean z10) {
            return new f(h().tailMap(k10, z10));
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class g extends d<K, V>.k implements RandomAccess {
        public g(d dVar, K k10, @CheckForNull List<V> list, d<K, V>.j jVar) {
            super(k10, list, jVar);
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class h extends d<K, V>.b implements SortedMap<K, Collection<V>> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        @CheckForNull
        public SortedSet<K> f15908l;

        public h(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        public SortedSet<K> b() {
            return new i(d());
        }

        @Override // u6.d.b, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: c */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f15908l;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetB = b();
            this.f15908l = sortedSetB;
            return sortedSetB;
        }

        @Override // java.util.SortedMap
        @CheckForNull
        public final Comparator<? super K> comparator() {
            return d().comparator();
        }

        public SortedMap<K, Collection<V>> d() {
            return (SortedMap) this.f15891j;
        }

        @Override // java.util.SortedMap
        public final K firstKey() {
            return d().firstKey();
        }

        public SortedMap<K, Collection<V>> headMap(K k10) {
            return new h(d().headMap(k10));
        }

        @Override // java.util.SortedMap
        public final K lastKey() {
            return d().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k10, K k11) {
            return new h(d().subMap(k10, k11));
        }

        public SortedMap<K, Collection<V>> tailMap(K k10) {
            return new h(d().tailMap(k10));
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class i extends d<K, V>.C0276d implements SortedSet<K> {
        public i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        @CheckForNull
        public final Comparator<? super K> comparator() {
            return h().comparator();
        }

        @Override // java.util.SortedSet
        public final K first() {
            return h().firstKey();
        }

        public SortedMap<K, Collection<V>> h() {
            return (SortedMap) this.f15930h;
        }

        public SortedSet<K> headSet(K k10) {
            return new i(h().headMap(k10));
        }

        @Override // java.util.SortedSet
        public final K last() {
            return h().lastKey();
        }

        public SortedSet<K> subSet(K k10, K k11) {
            return new i(h().subMap(k10, k11));
        }

        public SortedSet<K> tailSet(K k10) {
            return new i(h().tailMap(k10));
        }
    }

    public d(Map<K, Collection<V>> map) {
        t6.h.b(map.isEmpty());
        this.f15889k = map;
    }

    public static /* synthetic */ int f(d dVar) {
        int i10 = dVar.f15890l;
        dVar.f15890l = i10 + 1;
        return i10;
    }

    public static /* synthetic */ int g(d dVar) {
        int i10 = dVar.f15890l;
        dVar.f15890l = i10 - 1;
        return i10;
    }

    public static /* synthetic */ int h(d dVar, int i10) {
        int i11 = dVar.f15890l + i10;
        dVar.f15890l = i11;
        return i11;
    }

    public static /* synthetic */ int i(d dVar, int i10) {
        int i11 = dVar.f15890l - i10;
        dVar.f15890l = i11;
        return i11;
    }

    @Override // u6.i0
    public final void clear() {
        Iterator<Collection<V>> it = this.f15889k.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.f15889k.clear();
        this.f15890l = 0;
    }

    @Override // u6.f
    public final Iterator<V> e() {
        return new a(this);
    }

    public abstract Collection<V> j();

    public abstract Collection<V> k(K k10, Collection<V> collection);

    @Override // u6.i0
    public final int size() {
        return this.f15890l;
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class k extends d<K, V>.j implements List<V> {

        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        public class a extends d<K, V>.j.a implements ListIterator<V> {
            public a() {
                super();
            }

            @Override // java.util.ListIterator
            public final void add(V v10) {
                boolean zIsEmpty = k.this.isEmpty();
                b().add(v10);
                d.f(d.this);
                if (zIsEmpty) {
                    k.this.h();
                }
            }

            public final ListIterator<V> b() {
                a();
                return (ListIterator) this.f15916h;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return b().nextIndex();
            }

            @Override // java.util.ListIterator
            public final V previous() {
                return b().previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return b().previousIndex();
            }

            @Override // java.util.ListIterator
            public final void set(V v10) {
                b().set(v10);
            }

            public a(int i10) {
                super(((List) k.this.f15912i).listIterator(i10));
            }
        }

        public k(K k10, @CheckForNull List<V> list, d<K, V>.j jVar) {
            super(k10, list, jVar);
        }

        @Override // java.util.List
        public final void add(int i10, V v10) {
            k();
            boolean zIsEmpty = this.f15912i.isEmpty();
            ((List) this.f15912i).add(i10, v10);
            d.f(d.this);
            if (zIsEmpty) {
                h();
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i10, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = ((List) this.f15912i).addAll(i10, collection);
            if (zAddAll) {
                d.h(d.this, this.f15912i.size() - size);
                if (size == 0) {
                    h();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public final V get(int i10) {
            k();
            return (V) ((List) this.f15912i).get(i10);
        }

        @Override // java.util.List
        public final int indexOf(@CheckForNull Object obj) {
            k();
            return ((List) this.f15912i).indexOf(obj);
        }

        @Override // java.util.List
        public final int lastIndexOf(@CheckForNull Object obj) {
            k();
            return ((List) this.f15912i).lastIndexOf(obj);
        }

        @Override // java.util.List
        public final ListIterator<V> listIterator() {
            k();
            return new a();
        }

        @Override // java.util.List
        public final V remove(int i10) {
            k();
            V v10 = (V) ((List) this.f15912i).remove(i10);
            d.g(d.this);
            l();
            return v10;
        }

        @Override // java.util.List
        public final V set(int i10, V v10) {
            k();
            return (V) ((List) this.f15912i).set(i10, v10);
        }

        @Override // java.util.List
        public final List<V> subList(int i10, int i11) {
            k();
            d dVar = d.this;
            K k10 = this.f15911h;
            List listSubList = ((List) this.f15912i).subList(i10, i11);
            d<K, V>.j jVar = this.f15913j;
            if (jVar == null) {
                jVar = this;
            }
            Objects.requireNonNull(dVar);
            return listSubList instanceof RandomAccess ? new g(dVar, k10, listSubList, jVar) : new k(k10, listSubList, jVar);
        }

        @Override // java.util.List
        public final ListIterator<V> listIterator(int i10) {
            k();
            return new a(i10);
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    public class j extends AbstractCollection<V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final K f15911h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Collection<V> f15912i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @CheckForNull
        public final d<K, V>.j f15913j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @CheckForNull
        public final Collection<V> f15914k;

        public j(K k10, @CheckForNull Collection<V> collection, d<K, V>.j jVar) {
            this.f15911h = k10;
            this.f15912i = collection;
            this.f15913j = jVar;
            this.f15914k = jVar == null ? null : jVar.f15912i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(V v10) {
            k();
            boolean zIsEmpty = this.f15912i.isEmpty();
            boolean zAdd = this.f15912i.add(v10);
            if (zAdd) {
                d.f(d.this);
                if (zIsEmpty) {
                    h();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.f15912i.addAll(collection);
            if (zAddAll) {
                d.h(d.this, this.f15912i.size() - size);
                if (size == 0) {
                    h();
                }
            }
            return zAddAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f15912i.clear();
            d.i(d.this, size);
            l();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(@CheckForNull Object obj) {
            k();
            return this.f15912i.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            k();
            return this.f15912i.containsAll(collection);
        }

        @Override // java.util.Collection
        public final boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            k();
            return this.f15912i.equals(obj);
        }

        public final void h() {
            d<K, V>.j jVar = this.f15913j;
            if (jVar != null) {
                jVar.h();
            } else {
                d.this.f15889k.put(this.f15911h, this.f15912i);
            }
        }

        @Override // java.util.Collection
        public final int hashCode() {
            k();
            return this.f15912i.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            k();
            return new a();
        }

        public final void k() {
            Collection<V> collection;
            d<K, V>.j jVar = this.f15913j;
            if (jVar != null) {
                jVar.k();
                if (this.f15913j.f15912i != this.f15914k) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.f15912i.isEmpty() || (collection = d.this.f15889k.get(this.f15911h)) == null) {
                    return;
                }
                this.f15912i = collection;
            }
        }

        public final void l() {
            d<K, V>.j jVar = this.f15913j;
            if (jVar != null) {
                jVar.l();
            } else if (this.f15912i.isEmpty()) {
                d.this.f15889k.remove(this.f15911h);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(@CheckForNull Object obj) {
            k();
            boolean zRemove = this.f15912i.remove(obj);
            if (zRemove) {
                d.g(d.this);
                l();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.f15912i.removeAll(collection);
            if (zRemoveAll) {
                d.h(d.this, this.f15912i.size() - size);
                l();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            Objects.requireNonNull(collection);
            int size = size();
            boolean zRetainAll = this.f15912i.retainAll(collection);
            if (zRetainAll) {
                d.h(d.this, this.f15912i.size() - size);
                l();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            k();
            return this.f15912i.size();
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            k();
            return this.f15912i.toString();
        }

        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        public class a implements Iterator<V> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final Iterator<V> f15916h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final Collection<V> f15917i;

            public a() {
                Collection<V> collection = j.this.f15912i;
                this.f15917i = collection;
                this.f15916h = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
            }

            public final void a() {
                j.this.k();
                if (j.this.f15912i != this.f15917i) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                a();
                return this.f15916h.hasNext();
            }

            @Override // java.util.Iterator
            public final V next() {
                a();
                return this.f15916h.next();
            }

            @Override // java.util.Iterator
            public final void remove() {
                this.f15916h.remove();
                d.g(d.this);
                j.this.l();
            }

            public a(Iterator<V> it) {
                this.f15917i = j.this.f15912i;
                this.f15916h = it;
            }
        }
    }
}
