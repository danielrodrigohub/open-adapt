package gd;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* JADX INFO: compiled from: AbstractList.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<E> extends gd.a<E> implements List<E> {

    /* JADX INFO: compiled from: AbstractList.kt */
    public class a implements Iterator<E>, sd.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f8055h;

        public a() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f8055h < c.this.k();
        }

        @Override // java.util.Iterator
        public final E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            c<E> cVar = c.this;
            int i10 = this.f8055h;
            this.f8055h = i10 + 1;
            return cVar.get(i10);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX INFO: compiled from: AbstractList.kt */
    public class b extends c<E>.a implements ListIterator<E> {
        public b(int i10) {
            super();
            int iK = c.this.k();
            if (i10 < 0 || i10 > iK) {
                throw new IndexOutOfBoundsException(d1.c.a("index: ", i10, ", size: ", iK));
            }
            this.f8055h = i10;
        }

        @Override // java.util.ListIterator
        public final void add(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f8055h > 0;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f8055h;
        }

        @Override // java.util.ListIterator
        public final E previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            c<E> cVar = c.this;
            int i10 = this.f8055h - 1;
            this.f8055h = i10;
            return cVar.get(i10);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f8055h - 1;
        }

        @Override // java.util.ListIterator
        public final void set(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX INFO: renamed from: gd.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractList.kt */
    public static final class C0161c<E> extends c<E> implements RandomAccess {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final c<E> f8058h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f8059i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f8060j;

        /* JADX WARN: Multi-variable type inference failed */
        public C0161c(c<? extends E> cVar, int i10, int i11) {
            p4.h.j(cVar, "list");
            this.f8058h = cVar;
            this.f8059i = i10;
            int iK = cVar.k();
            if (i10 < 0 || i11 > iK) {
                StringBuilder sbB = androidx.recyclerview.widget.s.b("fromIndex: ", i10, ", toIndex: ", i11, ", size: ");
                sbB.append(iK);
                throw new IndexOutOfBoundsException(sbB.toString());
            }
            if (i10 > i11) {
                throw new IllegalArgumentException(d1.c.a("fromIndex: ", i10, " > toIndex: ", i11));
            }
            this.f8060j = i11 - i10;
        }

        @Override // gd.c, java.util.List
        public final E get(int i10) {
            int i11 = this.f8060j;
            if (i10 < 0 || i10 >= i11) {
                throw new IndexOutOfBoundsException(d1.c.a("index: ", i10, ", size: ", i11));
            }
            return this.f8058h.get(this.f8059i + i10);
        }

        @Override // gd.a
        public final int k() {
            return this.f8060j;
        }
    }

    @Override // java.util.List
    public final void add(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Collection collection = (Collection) obj;
        p4.h.j(collection, "other");
        if (size() == collection.size()) {
            Iterator<E> it = collection.iterator();
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                if (!p4.h.c(it2.next(), it.next())) {
                }
            }
            return true;
        }
        return false;
    }

    public abstract E get(int i10);

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        Iterator<E> it = iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            E next = it.next();
            iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
        }
        return iHashCode;
    }

    public int indexOf(E e10) {
        Iterator<E> it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (p4.h.c(it.next(), e10)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return new a();
    }

    public int lastIndexOf(E e10) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (p4.h.c(listIterator.previous(), e10)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator<E> listIterator() {
        return new b(0);
    }

    @Override // java.util.List
    public final E remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final E set(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final List<E> subList(int i10, int i11) {
        return new C0161c(this, i10, i11);
    }

    @Override // java.util.List
    public final ListIterator<E> listIterator(int i10) {
        return new b(i10);
    }
}
