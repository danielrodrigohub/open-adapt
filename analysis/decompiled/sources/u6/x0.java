package u6;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: TransformedIterator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class x0<F, T> implements Iterator<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Iterator<? extends F> f16015h;

    public x0(Iterator<? extends F> it) {
        Objects.requireNonNull(it);
        this.f16015h = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16015h.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return (T) ((Map.Entry) this.f16015h.next()).getValue();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f16015h.remove();
    }
}
