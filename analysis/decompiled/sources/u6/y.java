package u6;

import java.util.Iterator;

/* JADX INFO: compiled from: ImmutableMultimap.java */
/* JADX INFO: loaded from: classes.dex */
public final class y extends y0<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Iterator<? extends t<Object>> f16016h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Iterator<Object> f16017i = d0.f15921l;

    public y(z zVar) {
        this.f16016h = zVar.f16018k.values().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16017i.hasNext() || this.f16016h.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f16017i.hasNext()) {
            this.f16017i = this.f16016h.next().iterator();
        }
        return this.f16017i.next();
    }
}
