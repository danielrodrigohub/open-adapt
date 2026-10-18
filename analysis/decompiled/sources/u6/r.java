package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ForwardingMap.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class r<K, V> extends g1.c implements Map<K, V> {
    public r() {
        super(1);
    }

    @Override // java.util.Map
    public final void clear() {
        ((l5.r.b) this).f10145i.clear();
    }

    public boolean containsKey(@CheckForNull Object obj) {
        return ((l5.r.b) this).f10145i.containsKey(obj);
    }

    public Set<Map.Entry<K, V>> entrySet() {
        return (Set<Map.Entry<K, V>>) ((l5.r.b) this).f10145i.entrySet();
    }

    @CheckForNull
    public V get(@CheckForNull Object obj) {
        return (V) ((l5.r.b) this).f10145i.get(obj);
    }

    public boolean isEmpty() {
        return ((l5.r.b) this).f10145i.isEmpty();
    }

    public Set<K> keySet() {
        return (Set<K>) ((l5.r.b) this).f10145i.keySet();
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @CheckForNull
    public final V put(K k10, V v10) {
        return (V) ((l5.r.b) this).f10145i.put(k10, v10);
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        ((l5.r.b) this).f10145i.putAll(map);
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @CheckForNull
    public final V remove(@CheckForNull Object obj) {
        return (V) ((l5.r.b) this).f10145i.remove(obj);
    }

    public int size() {
        return ((l5.r.b) this).f10145i.size();
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        return (Collection<V>) ((l5.r.b) this).f10145i.values();
    }
}
