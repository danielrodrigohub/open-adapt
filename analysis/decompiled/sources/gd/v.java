package gd;

import java.util.Iterator;

/* JADX INFO: compiled from: Iterators.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v<T> implements Iterator<t<? extends T>>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Iterator<T> f8076h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8077i;

    /* JADX WARN: Multi-variable type inference failed */
    public v(Iterator<? extends T> it) {
        p4.h.j(it, "iterator");
        this.f8076h = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8076h.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i10 = this.f8077i;
        this.f8077i = i10 + 1;
        if (i10 >= 0) {
            return new t(i10, this.f8076h.next());
        }
        androidx.lifecycle.o.L();
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
