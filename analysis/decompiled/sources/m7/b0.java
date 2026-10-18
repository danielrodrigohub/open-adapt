package m7;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: LazyField.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends c0 {

    /* JADX INFO: compiled from: LazyField.java */
    public static class b<K> implements Map.Entry<K, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Map.Entry<K, b0> f10616h;

        public b(Map.Entry entry, a aVar) {
            this.f10616h = entry;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f10616h.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            b0 value = this.f10616h.getValue();
            if (value == null) {
                return null;
            }
            return value.a(null);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof p0)) {
                throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
            }
            b0 value = this.f10616h.getValue();
            p0 p0Var = value.f10623a;
            value.f10624b = null;
            value.f10623a = (p0) obj;
            return p0Var;
        }
    }

    /* JADX INFO: compiled from: LazyField.java */
    public static class c<K> implements Iterator<Map.Entry<K, Object>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Iterator<Map.Entry<K, Object>> f10617h;

        public c(Iterator<Map.Entry<K, Object>> it) {
            this.f10617h = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10617h.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Map.Entry<K, Object> next = this.f10617h.next();
            return next.getValue() instanceof b0 ? new b(next, null) : next;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f10617h.remove();
        }
    }

    @Override // m7.c0
    public final boolean equals(Object obj) {
        return a(null).equals(obj);
    }

    @Override // m7.c0
    public final int hashCode() {
        return a(null).hashCode();
    }

    public final String toString() {
        return a(null).toString();
    }
}
