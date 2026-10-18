package gd;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: Collections.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e<T> implements Collection<T>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final T[] f8061h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f8062i;

    public e(T[] tArr, boolean z10) {
        p4.h.j(tArr, "values");
        this.f8061h = tArr;
        this.f8062i = z10;
    }

    @Override // java.util.Collection
    public final boolean add(T t10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        T[] tArr = this.f8061h;
        p4.h.j(tArr, "<this>");
        return i.t(tArr, obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection<? extends Object> collection) {
        p4.h.j(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f8061h.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator<T> iterator() {
        return p4.h.v(this.f8061h);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f8061h.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        T[] tArr = this.f8061h;
        boolean z10 = this.f8062i;
        p4.h.j(tArr, "<this>");
        if (z10 && p4.h.c(tArr.getClass(), Object[].class)) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
        p4.h.i(objArrCopyOf, "copyOf(this, this.size, Array<Any?>::class.java)");
        return objArrCopyOf;
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        p4.h.j(tArr, "array");
        return (T[]) p4.h.E(this, tArr);
    }
}
