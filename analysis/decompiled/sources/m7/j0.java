package m7;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: MapFieldLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class j0<K, V> extends LinkedHashMap<K, V> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final j0<?, ?> f10680i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10681h;

    static {
        j0<?, ?> j0Var = new j0<>();
        f10680i = j0Var;
        j0Var.f10681h = false;
    }

    public j0() {
        this.f10681h = true;
    }

    public static int a(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof y.a) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = y.f10801a;
        int length = bArr.length;
        int i10 = length;
        for (int i11 = 0; i11 < 0 + length; i11++) {
            i10 = (i10 * 31) + bArr[i11];
        }
        if (i10 == 0) {
            return 1;
        }
        return i10;
    }

    public final void b() {
        if (!this.f10681h) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        boolean z10;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this != map) {
                if (size() == map.size()) {
                    Iterator<Map.Entry<K, V>> it = entrySet().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            Map.Entry<K, V> next = it.next();
                            if (map.containsKey(next.getKey())) {
                                V value = next.getValue();
                                Object obj2 = map.get(next.getKey());
                                if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                                }
                            }
                        } else {
                            z10 = true;
                        }
                    }
                }
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iA = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            iA += a(entry.getValue()) ^ a(entry.getKey());
        }
        return iA;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        b();
        Charset charset = y.f10801a;
        Objects.requireNonNull(k10);
        Objects.requireNonNull(v10);
        return (V) super.put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        b();
        for (K k10 : map.keySet()) {
            Charset charset = y.f10801a;
            Objects.requireNonNull(k10);
            Objects.requireNonNull(map.get(k10));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        b();
        return (V) super.remove(obj);
    }

    public j0(Map<K, V> map) {
        super(map);
        this.f10681h = true;
    }
}
