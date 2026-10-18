package gd;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: AbstractCollection.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<E> implements Collection<E>, sd.a {

    /* JADX INFO: renamed from: gd.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractCollection.kt */
    public static final class C0160a extends rd.o implements qd.l<E, CharSequence> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ a<E> f8051h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C0160a(a<? extends E> aVar) {
            super(1);
            this.f8051h = aVar;
        }

        @Override // qd.l
        public final CharSequence invoke(Object obj) {
            return obj == this.f8051h ? "(this Collection)" : String.valueOf(obj);
        }
    }

    @Override // java.util.Collection
    public final boolean add(E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean contains(E e10) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (p4.h.c(it.next(), e10)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    public boolean isEmpty() {
        return k() == 0;
    }

    public abstract int k();

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
    public final /* bridge */ int size() {
        return k();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return p4.h.D(this);
    }

    public final String toString() {
        return n.d0(this, ", ", "[", "]", new C0160a(this), 24);
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        p4.h.j(tArr, "array");
        return (T[]) p4.h.E(this, tArr);
    }
}
