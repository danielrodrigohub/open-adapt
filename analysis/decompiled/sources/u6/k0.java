package u6;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: compiled from: Multimaps.java */
/* JADX INFO: loaded from: classes.dex */
public final class k0<K, V> extends c<K, V> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public transient t6.o<? extends List<V>> f15939m;

    public k0(Map<K, Collection<V>> map, t6.o<? extends List<V>> oVar) {
        super(map);
        this.f15939m = oVar;
    }

    @Override // u6.f
    public final Map<K, Collection<V>> c() {
        Map<K, Collection<V>> map = this.f15889k;
        if (map instanceof NavigableMap) {
            return new d.e((NavigableMap) this.f15889k);
        }
        return map instanceof SortedMap ? new d.h((SortedMap) this.f15889k) : new d.b(this.f15889k);
    }

    @Override // u6.f
    public final Set<K> d() {
        Map<K, Collection<V>> map = this.f15889k;
        if (map instanceof NavigableMap) {
            return new d.f((NavigableMap) this.f15889k);
        }
        return map instanceof SortedMap ? new d.i((SortedMap) this.f15889k) : new d.C0276d(this.f15889k);
    }

    @Override // u6.d
    public final Collection j() {
        return this.f15939m.get();
    }
}
