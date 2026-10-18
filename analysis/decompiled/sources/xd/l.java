package xd;

import java.util.Iterator;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l<T, R> implements d<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d<T> f18139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd.l<T, R> f18140b;

    /* JADX INFO: compiled from: Sequences.kt */
    public static final class a implements Iterator<R>, sd.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Iterator<T> f18141h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ l<T, R> f18142i;

        public a(l<T, R> lVar) {
            this.f18142i = lVar;
            this.f18141h = lVar.f18139a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f18141h.hasNext();
        }

        @Override // java.util.Iterator
        public final R next() {
            return (R) this.f18142i.f18140b.invoke(this.f18141h.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l(d<? extends T> dVar, qd.l<? super T, ? extends R> lVar) {
        p4.h.j(dVar, "sequence");
        this.f18139a = dVar;
        this.f18140b = lVar;
    }

    @Override // xd.d
    public final Iterator<R> iterator() {
        return new a(this);
    }
}
