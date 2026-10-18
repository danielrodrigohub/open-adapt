package u6;

import java.io.Serializable;

/* JADX INFO: compiled from: ImmutableEntry.java */
/* JADX INFO: loaded from: classes.dex */
public final class u<K, V> extends e<K, V> implements Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final K f15998h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final V f15999i;

    public u(K k10, V v10) {
        this.f15998h = k10;
        this.f15999i = v10;
    }

    @Override // u6.e, java.util.Map.Entry
    public final K getKey() {
        return this.f15998h;
    }

    @Override // u6.e, java.util.Map.Entry
    public final V getValue() {
        return this.f15999i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v10) {
        throw new UnsupportedOperationException();
    }
}
