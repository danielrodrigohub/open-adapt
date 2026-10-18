package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import com.google.errorprone.annotations.DoNotMock;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: ImmutableMap.java */
/* JADX INFO: loaded from: classes.dex */
@DoNotMock("Use ImmutableMap.of or another implementation")
public abstract class x<K, V> implements Map<K, V>, Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @RetainedWith
    @CheckForNull
    @LazyInit
    public transient a0<Map.Entry<K, V>> f16010h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @RetainedWith
    @CheckForNull
    @LazyInit
    public transient a0<K> f16011i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @RetainedWith
    @CheckForNull
    @LazyInit
    public transient t<V> f16012j;

    /* JADX INFO: compiled from: ImmutableMap.java */
    @DoNotMock
    public static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object[] f16013a = new Object[8];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16014b = 0;

        public a(int i10) {
        }

        public final x<K, V> a() {
            return q0.j(this.f16014b, this.f16013a);
        }

        public final void b(int i10) {
            int i11 = i10 * 2;
            Object[] objArr = this.f16013a;
            if (i11 > objArr.length) {
                this.f16013a = Arrays.copyOf(objArr, t.b.a(objArr.length, i11));
            }
        }

        @CanIgnoreReturnValue
        public final a<K, V> c(K k10, V v10) {
            b(this.f16014b + 1);
            h.a(k10, v10);
            Object[] objArr = this.f16013a;
            int i10 = this.f16014b;
            objArr[i10 * 2] = k10;
            objArr[(i10 * 2) + 1] = v10;
            this.f16014b = i10 + 1;
            return this;
        }
    }

    public static <K, V> x<K, V> a(Map<? extends K, ? extends V> map) {
        int size;
        if ((map instanceof x) && !(map instanceof SortedMap)) {
            x<K, V> xVar = (x) map;
            xVar.f();
            return xVar;
        }
        Set<Map.Entry<? extends K, ? extends V>> setEntrySet = map.entrySet();
        boolean z10 = setEntrySet instanceof Collection;
        int size2 = (z10 ? setEntrySet.size() : 4) * 2;
        Object[] objArrCopyOf = new Object[size2];
        int i10 = 0;
        if (z10 && (size = (setEntrySet.size() + 0) * 2) > size2) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(size2, size));
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i11 = i10 + 1;
            int i12 = i11 * 2;
            if (i12 > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i12));
            }
            h.a(key, value);
            int i13 = i10 * 2;
            objArrCopyOf[i13] = key;
            objArrCopyOf[i13 + 1] = value;
            i10 = i11;
        }
        return q0.j(i10, objArrCopyOf);
    }

    public abstract a0<Map.Entry<K, V>> b();

    public abstract a0<K> c();

    @Override // java.util.Map
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    public abstract t<V> d();

    @Override // java.util.Map
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final a0<Map.Entry<K, V>> entrySet() {
        a0<Map.Entry<K, V>> a0Var = this.f16010h;
        if (a0Var != null) {
            return a0Var;
        }
        a0<Map.Entry<K, V>> a0VarB = b();
        this.f16010h = a0VarB;
        return a0VarB;
    }

    @Override // java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        return h0.a(this, obj);
    }

    public abstract void f();

    @Override // java.util.Map
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final a0<K> keySet() {
        a0<K> a0Var = this.f16011i;
        if (a0Var != null) {
            return a0Var;
        }
        a0<K> a0VarC = c();
        this.f16011i = a0VarC;
        return a0VarC;
    }

    @Override // java.util.Map
    @CheckForNull
    public abstract V get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final V getOrDefault(@CheckForNull Object obj, @CheckForNull V v10) {
        V v11 = get(obj);
        return v11 != null ? v11 : v10;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return v0.c(entrySet());
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final t<V> values() {
        t<V> tVar = this.f16012j;
        if (tVar != null) {
            return tVar;
        }
        t<V> tVarD = d();
        this.f16012j = tVarD;
        return tVarD;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    @CheckForNull
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    @CanIgnoreReturnValue
    public final V put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @CheckForNull
    @Deprecated
    public final V remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        h.b(size, "size");
        StringBuilder sb2 = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb2.append('{');
        boolean z10 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z10) {
                sb2.append(", ");
            }
            z10 = false;
            sb2.append(entry.getKey());
            sb2.append('=');
            sb2.append(entry.getValue());
        }
        sb2.append('}');
        return sb2.toString();
    }
}
