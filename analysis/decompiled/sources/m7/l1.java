package m7;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: UnmodifiableLazyStringList.java */
/* JADX INFO: loaded from: classes.dex */
public final class l1 extends AbstractList<String> implements e0, RandomAccess {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e0 f10695h;

    /* JADX INFO: compiled from: UnmodifiableLazyStringList.java */
    public class a implements ListIterator<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ListIterator<String> f10696h;

        public a(l1 l1Var, int i10) {
            this.f10696h = l1Var.f10695h.listIterator(i10);
        }

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f10696h.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f10696h.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return this.f10696h.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f10696h.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return this.f10696h.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f10696h.previousIndex();
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
        public Iterator<String> f10697h;

        public b(l1 l1Var) {
            this.f10697h = l1Var.f10695h.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10697h.hasNext();
        }

        @Override // java.util.Iterator
        public final String next() {
            return this.f10697h.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public l1(e0 e0Var) {
        this.f10695h = e0Var;
    }

    @Override // m7.e0
    public final e0 c() {
        return this;
    }

    @Override // m7.e0
    public final Object d(int i10) {
        return this.f10695h.d(i10);
    }

    @Override // m7.e0
    public final List<?> e() {
        return this.f10695h.e();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        return (String) this.f10695h.get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new b(this);
    }

    @Override // m7.e0
    public final void j(i iVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i10) {
        return new a(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10695h.size();
    }
}
