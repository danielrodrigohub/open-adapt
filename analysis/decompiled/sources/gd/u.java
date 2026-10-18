package gd;

import java.util.Iterator;

/* JADX INFO: compiled from: Iterables.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u<T> implements Iterable<t<? extends T>>, sd.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final qd.a<Iterator<T>> f8075h;

    /* JADX WARN: Multi-variable type inference failed */
    public u(qd.a<? extends Iterator<? extends T>> aVar) {
        this.f8075h = aVar;
    }

    @Override // java.lang.Iterable
    public final Iterator<t<T>> iterator() {
        return new v(this.f8075h.invoke());
    }
}
