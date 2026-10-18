package gd;

import java.util.Iterator;

/* JADX INFO: compiled from: Iterators.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class x implements Iterator<Long>, sd.a {
    public abstract long a();

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Long next() {
        return Long.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
