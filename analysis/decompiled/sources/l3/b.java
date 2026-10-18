package l3;

/* JADX INFO: compiled from: CachedHashCodeArrayMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class b<K, V> extends p.a<K, V> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9924p;

    @Override // p.g, java.util.Map
    public final void clear() {
        this.f9924p = 0;
        super.clear();
    }

    @Override // p.g, java.util.Map
    public final int hashCode() {
        if (this.f9924p == 0) {
            this.f9924p = super.hashCode();
        }
        return this.f9924p;
    }

    @Override // p.g
    public final void j(p.g<? extends K, ? extends V> gVar) {
        this.f9924p = 0;
        super.j(gVar);
    }

    @Override // p.g
    public final V k(int i10) {
        this.f9924p = 0;
        return (V) super.k(i10);
    }

    @Override // p.g
    public final V l(int i10, V v10) {
        this.f9924p = 0;
        return (V) super.l(i10, v10);
    }

    @Override // p.g, java.util.Map
    public final V put(K k10, V v10) {
        this.f9924p = 0;
        return (V) super.put(k10, v10);
    }
}
