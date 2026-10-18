package u6;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: Collections2.java */
/* JADX INFO: loaded from: classes.dex */
public class i<E> extends AbstractCollection<E> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Collection<E> f15934h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final t6.i<? super E> f15935i;

    public i(Collection<E> collection, t6.i<? super E> iVar) {
        this.f15934h = collection;
        this.f15935i = iVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(E e10) {
        t6.h.b(this.f15935i.apply(e10));
        return this.f15934h.add(e10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            t6.h.b(this.f15935i.apply(it.next()));
        }
        return this.f15934h.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        Collection<E> collection = this.f15934h;
        t6.i<? super E> iVar = this.f15935i;
        if (!(collection instanceof RandomAccess) || !(collection instanceof List)) {
            Iterator<T> it = collection.iterator();
            Objects.requireNonNull(iVar);
            while (it.hasNext()) {
                if (iVar.apply((Object) it.next())) {
                    it.remove();
                }
            }
            return;
        }
        List list = (List) collection;
        Objects.requireNonNull(iVar);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            a0.d dVar = (Object) list.get(i11);
            if (!iVar.apply(dVar)) {
                if (i11 > i10) {
                    try {
                        list.set(i10, dVar);
                    } catch (IllegalArgumentException unused) {
                        g0.n.d(list, iVar, i10, i11);
                        return;
                    } catch (UnsupportedOperationException unused2) {
                        g0.n.d(list, iVar, i10, i11);
                        return;
                    }
                }
                i10++;
            }
        }
        list.subList(i10, list.size()).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        boolean zContains;
        Collection<E> collection = this.f15934h;
        Objects.requireNonNull(collection);
        try {
            zContains = collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            zContains = false;
        }
        if (zContains) {
            return this.f15935i.apply(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        Collection<E> collection = this.f15934h;
        t6.i<? super E> iVar = this.f15935i;
        Iterator<T> it = collection.iterator();
        t6.h.d(iVar, "predicate");
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            if (iVar.apply((Object) it.next())) {
                break;
            }
            i10++;
        }
        return true ^ (i10 != -1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        Iterator<E> it = this.f15934h.iterator();
        t6.i<? super E> iVar = this.f15935i;
        Objects.requireNonNull(it);
        Objects.requireNonNull(iVar);
        return new b0(it, iVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        return contains(obj) && this.f15934h.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        Iterator<E> it = this.f15934h.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            E next = it.next();
            if (this.f15935i.apply(next) && collection.contains(next)) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        Iterator<E> it = this.f15934h.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            E next = it.next();
            if (this.f15935i.apply(next) && !collection.contains(next)) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        Iterator<E> it = this.f15934h.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (this.f15935i.apply(it.next())) {
                i10++;
            }
        }
        return i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return f0.a(iterator()).toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) f0.a(iterator()).toArray(tArr);
    }
}
