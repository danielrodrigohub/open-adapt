package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;
import qd.a;

/* JADX INFO: compiled from: SchemaCache.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DescriptorSchemaCache {
    private final Map<SerialDescriptor, Map<Key<Object>, Object>> map = CreateMapForCacheKt.createMapForCache(1);

    /* JADX INFO: compiled from: SchemaCache.kt */
    public static final class Key<T> {
    }

    public final <T> T get(SerialDescriptor serialDescriptor, Key<T> key) {
        h.j(serialDescriptor, "descriptor");
        h.j(key, "key");
        Map<Key<Object>, Object> map = this.map.get(serialDescriptor);
        Object obj = map == null ? null : map.get(key);
        if (obj != null) {
            return (T) obj;
        }
        return null;
    }

    public final <T> T getOrPut(SerialDescriptor serialDescriptor, Key<T> key, a<? extends T> aVar) {
        h.j(serialDescriptor, "descriptor");
        h.j(key, "key");
        h.j(aVar, "defaultValue");
        T t10 = (T) get(serialDescriptor, key);
        if (t10 != null) {
            return t10;
        }
        T tInvoke = aVar.invoke();
        set(serialDescriptor, key, tInvoke);
        return tInvoke;
    }

    public final <T> void set(SerialDescriptor serialDescriptor, Key<T> key, T t10) {
        h.j(serialDescriptor, "descriptor");
        h.j(key, "key");
        h.j(t10, "value");
        Map<SerialDescriptor, Map<Key<Object>, Object>> map = this.map;
        Map<Key<Object>, Object> mapCreateMapForCache = map.get(serialDescriptor);
        if (mapCreateMapForCache == null) {
            mapCreateMapForCache = CreateMapForCacheKt.createMapForCache(1);
            map.put(serialDescriptor, mapCreateMapForCache);
        }
        mapCreateMapForCache.put(key, t10);
    }
}
