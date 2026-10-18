package rd;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ArrayIterator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a<T> implements Iterator<T>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final T[] f14773h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14774i;

    public a(T[] tArr) {
        p4.h.j(tArr, "array");
        this.f14773h = tArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14774i < this.f14773h.length;
    }

    @Override // java.util.Iterator
    public final T next() {
        try {
            T[] tArr = this.f14773h;
            int i10 = this.f14774i;
            this.f14774i = i10 + 1;
            return tArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f14774i--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
