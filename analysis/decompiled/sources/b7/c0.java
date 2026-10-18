package b7;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: LazyField.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends d0 {

    /* JADX INFO: compiled from: LazyField.java */
    public static class b<K> implements Map.Entry<K, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Map.Entry<K, c0> f3373h;

        public b(Map.Entry entry, a aVar) {
            this.f3373h = entry;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f3373h.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            c0 value = this.f3373h.getValue();
            if (value == null) {
                return null;
            }
            return value.a(null);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof q0)) {
                throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
            }
            c0 value = this.f3373h.getValue();
            q0 q0Var = value.f3381a;
            value.f3382b = null;
            value.f3381a = (q0) obj;
            return q0Var;
        }
    }

    /* JADX INFO: compiled from: LazyField.java */
    public static class c<K> implements Iterator<Map.Entry<K, Object>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Iterator<Map.Entry<K, Object>> f3374h;

        public c(Iterator<Map.Entry<K, Object>> it) {
            this.f3374h = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f3374h.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Map.Entry<K, Object> next = this.f3374h.next();
            return next.getValue() instanceof c0 ? new b(next, null) : next;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f3374h.remove();
        }
    }

    @Override // b7.d0
    public final boolean equals(Object obj) {
        return a(null).equals(obj);
    }

    @Override // b7.d0
    public final int hashCode() {
        return a(null).hashCode();
    }

    public final String toString() {
        return a(null).toString();
    }
}
