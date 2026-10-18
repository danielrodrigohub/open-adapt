package xd;

import java.util.Iterator;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b<T> implements d<T>, c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d<T> f18129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18130b;

    /* JADX INFO: compiled from: Sequences.kt */
    public static final class a implements Iterator<T>, sd.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Iterator<T> f18131h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f18132i;

        public a(b<T> bVar) {
            this.f18131h = bVar.f18129a.iterator();
            this.f18132i = bVar.f18130b;
        }

        public final void a() {
            while (this.f18132i > 0 && this.f18131h.hasNext()) {
                this.f18131h.next();
                this.f18132i--;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            a();
            return this.f18131h.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            a();
            return this.f18131h.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(d<? extends T> dVar, int i10) {
        p4.h.j(dVar, "sequence");
        this.f18129a = dVar;
        this.f18130b = i10;
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i10 + '.').toString());
    }

    @Override // xd.c
    public final d<T> a(int i10) {
        int i11 = this.f18130b + i10;
        return i11 < 0 ? new b(this, i10) : new b(this.f18129a, i11);
    }

    @Override // xd.d
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
