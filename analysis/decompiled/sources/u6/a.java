package u6;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: AbstractIndexedListIterator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<E> extends y0<Object> implements ListIterator<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f15879h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15880i;

    public a(int i10, int i11) {
        t6.h.e(i11, i10);
        this.f15879h = i10;
        this.f15880i = i11;
    }

    public abstract E a(int i10);

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f15880i < this.f15879h;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f15880i > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f15880i;
        this.f15880i = i10 + 1;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f15880i;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f15880i - 1;
        this.f15880i = i10;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f15880i - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
