package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: Sets.java */
/* JADX INFO: loaded from: classes.dex */
public final class v0 {

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: compiled from: Sets.java */
    public class a<E> extends e<E> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Set f16007h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Set f16008i;

        public a(Set set, Set set2) {
            this.f16007h = set;
            this.f16008i = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(@CheckForNull Object obj) {
            return this.f16007h.contains(obj) && this.f16008i.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection<?> collection) {
            return this.f16007h.containsAll(collection) && this.f16008i.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return Collections.disjoint(this.f16008i, this.f16007h);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new u0(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            Iterator<E> it = this.f16007h.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (this.f16008i.contains(it.next())) {
                    i10++;
                }
            }
            return i10;
        }
    }

    /* JADX INFO: compiled from: Sets.java */
    public static class b<E> extends i<E> implements Set<E> {
        public b(Set<E> set, t6.i<? super E> iVar) {
            super(set, iVar);
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(@CheckForNull Object obj) {
            return v0.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return v0.c(this);
        }
    }

    /* JADX INFO: compiled from: Sets.java */
    public static class c<E> extends b<E> implements SortedSet<E> {
        public c(SortedSet<E> sortedSet, t6.i<? super E> iVar) {
            super(sortedSet, iVar);
        }

        @Override // java.util.SortedSet
        @CheckForNull
        public final Comparator<? super E> comparator() {
            return ((SortedSet) this.f15934h).comparator();
        }

        @Override // java.util.SortedSet
        public final E first() {
            Iterator<E> it = this.f15934h.iterator();
            t6.i<? super E> iVar = this.f15935i;
            Objects.requireNonNull(it);
            Objects.requireNonNull(iVar);
            while (it.hasNext()) {
                E next = it.next();
                if (iVar.apply(next)) {
                    return next;
                }
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.SortedSet
        public final SortedSet<E> headSet(E e10) {
            return new c(((SortedSet) this.f15934h).headSet(e10), this.f15935i);
        }

        @Override // java.util.SortedSet
        public final E last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.f15934h;
            while (true) {
                E e10 = (Object) sortedSetHeadSet.last();
                if (this.f15935i.apply(e10)) {
                    return e10;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(e10);
            }
        }

        @Override // java.util.SortedSet
        public final SortedSet<E> subSet(E e10, E e11) {
            return new c(((SortedSet) this.f15934h).subSet(e10, e11), this.f15935i);
        }

        @Override // java.util.SortedSet
        public final SortedSet<E> tailSet(E e10) {
            return new c(((SortedSet) this.f15934h).tailSet(e10), this.f15935i);
        }
    }

    /* JADX INFO: compiled from: Sets.java */
    public static abstract class d<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            Objects.requireNonNull(collection);
            if (collection instanceof l0) {
                collection = ((l0) collection).g();
            }
            boolean zRemove = false;
            if (!(collection instanceof Set) || collection.size() <= size()) {
                Iterator<?> it = collection.iterator();
                while (it.hasNext()) {
                    zRemove |= remove(it.next());
                }
            } else {
                Iterator<E> it2 = iterator();
                while (it2.hasNext()) {
                    if (collection.contains(it2.next())) {
                        it2.remove();
                        zRemove = true;
                    }
                }
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Objects.requireNonNull(collection);
            return super.retainAll(collection);
        }
    }

    /* JADX INFO: compiled from: Sets.java */
    public static abstract class e<E> extends AbstractSet<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean add(E e10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }
    }

    public static boolean a(Set<?> set, @CheckForNull Object obj) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> Set<E> b(Set<E> set, t6.i<? super E> iVar) {
        if (!(set instanceof SortedSet)) {
            if (!(set instanceof b)) {
                Objects.requireNonNull(set);
                return new b(set, iVar);
            }
            b bVar = (b) set;
            return new b((Set) bVar.f15934h, t6.j.a(bVar.f15935i, iVar));
        }
        SortedSet sortedSet = (SortedSet) set;
        if (!(sortedSet instanceof b)) {
            Objects.requireNonNull(sortedSet);
            return new c(sortedSet, iVar);
        }
        b bVar2 = (b) sortedSet;
        return new c((SortedSet) bVar2.f15934h, t6.j.a(bVar2.f15935i, iVar));
    }

    public static int c(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = ~(~(i10 + (next != null ? next.hashCode() : 0)));
        }
        return i10;
    }

    public static <E> e<E> d(Set<E> set, Set<?> set2) {
        t6.h.d(set, "set1");
        t6.h.d(set2, "set2");
        return new a(set, set2);
    }

    public static <E> Set<E> e() {
        return Collections.newSetFromMap(new IdentityHashMap());
    }
}
