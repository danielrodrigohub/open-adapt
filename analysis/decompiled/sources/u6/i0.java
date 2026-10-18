package u6;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: compiled from: Multimap.java */
/* JADX INFO: loaded from: classes.dex */
@DoNotMock("Use ImmutableMultimap, HashMultimap, or another implementation")
public interface i0<K, V> {
    Map<K, Collection<V>> a();

    void clear();

    int size();
}
