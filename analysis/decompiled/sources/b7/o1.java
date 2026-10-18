package b7;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: UnmodifiableLazyStringList.java */
/* JADX INFO: loaded from: classes.dex */
public final class o1 extends AbstractList<String> implements f0, RandomAccess {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f0 f3463h;

    /* JADX INFO: compiled from: UnmodifiableLazyStringList.java */
    public class a implements ListIterator<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ListIterator<String> f3464h;

        public a(o1 o1Var, int i10) {
            this.f3464h = o1Var.f3463h.listIterator(i10);
        }

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f3464h.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f3464h.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return this.f3464h.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f3464h.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return this.f3464h.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f3464h.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public final void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: compiled from: UnmodifiableLazyStringList.java */
    public class b implements Iterator<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Iterator<String> f3465h;

        public b(o1 o1Var) {
            this.f3465h = o1Var.f3463h.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f3465h.hasNext();
        }

        @Override // java.util.Iterator
        public final String next() {
            return this.f3465h.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public o1(f0 f0Var) {
        this.f3463h = f0Var;
    }

    @Override // b7.f0
    public final f0 c() {
        return this;
    }

    @Override // b7.f0
    public final Object d(int i10) {
        return this.f3463h.d(i10);
    }

    @Override // b7.f0
    public final List<?> e() {
        return this.f3463h.e();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        return (String) this.f3463h.get(i10);
    }

    @Override // b7.f0
    public final void i(i iVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new b(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i10) {
        return new a(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3463h.size();
    }
}
