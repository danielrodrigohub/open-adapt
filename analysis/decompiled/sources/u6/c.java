package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: AbstractListMultimap.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<K, V> extends d<K, V> {
    public c(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // u6.f, u6.i0
    public final Map<K, Collection<V>> a() {
        Map<K, Collection<V>> map = this.f15928j;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapC = c();
        this.f15928j = mapC;
        return mapC;
    }

    @Override // u6.f
    public final boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override // u6.d
    public final Collection<V> k(K k10, Collection<V> collection) {
        List list = (List) collection;
        return list instanceof RandomAccess ? new d.g(this, k10, list, null) : new d.k(k10, list, null);
    }

    @CanIgnoreReturnValue
    public final boolean l(K k10, V v10) {
        Collection<V> collection = this.f15889k.get(k10);
        if (collection != null) {
            if (!collection.add(v10)) {
                return false;
            }
            this.f15890l++;
            return true;
        }
        Collection<V> collectionJ = j();
        if (!collectionJ.add(v10)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f15890l++;
        this.f15889k.put(k10, collectionJ);
        return true;
    }
}
