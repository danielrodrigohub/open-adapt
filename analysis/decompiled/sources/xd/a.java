package xd;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: SequencesJVM.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a<T> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference<d<T>> f18128a;

    public a(d<? extends T> dVar) {
        this.f18128a = new AtomicReference<>(dVar);
    }

    @Override // xd.d
    public final Iterator<T> iterator() {
        d<T> andSet = this.f18128a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
