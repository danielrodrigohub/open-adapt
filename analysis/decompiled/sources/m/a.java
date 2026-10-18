package m;

import java.util.HashMap;

/* JADX INFO: compiled from: FastSafeIterableMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class a<K, V> extends b<K, V> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public HashMap<K, b.c<K, V>> f10244l = new HashMap<>();

    public final boolean contains(K k10) {
        return this.f10244l.containsKey(k10);
    }

    @Override // m.b
    public final b.c<K, V> h(K k10) {
        return this.f10244l.get(k10);
    }

    @Override // m.b
    public final V m(K k10, V v10) {
        b.c<K, V> cVarH = h(k10);
        if (cVarH != null) {
            return cVarH.f10250i;
        }
        this.f10244l.put(k10, l(k10, v10));
        return null;
    }

    @Override // m.b
    public final V n(K k10) {
        V v10 = (V) super.n(k10);
        this.f10244l.remove(k10);
        return v10;
    }
}
