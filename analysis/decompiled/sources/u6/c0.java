package u6;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: Iterators.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends y0<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f15887h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f15888i;

    public c0(Object obj) {
        this.f15888i = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f15887h;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f15887h) {
            throw new NoSuchElementException();
        }
        this.f15887h = true;
        return this.f15888i;
    }
}
