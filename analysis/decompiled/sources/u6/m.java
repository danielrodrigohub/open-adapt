package u6;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: CompactHashMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class m<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Object f15941q = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @CheckForNull
    public transient Object f15942h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @CheckForNull
    public transient int[] f15943i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @CheckForNull
    public transient Object[] f15944j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @CheckForNull
    public transient Object[] f15945k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public transient int f15946l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public transient int f15947m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @CheckForNull
    public transient Set<K> f15948n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    public transient Set<Map.Entry<K, V>> f15949o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    public transient Collection<V> f15950p;

    /* JADX INFO: compiled from: CompactHashMap.java */
    public class a extends AbstractSet<Map.Entry<K, V>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            m.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(@CheckForNull Object obj) {
            Map<K, V> mapA = m.this.a();
            if (mapA != null) {
                return mapA.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iD = m.this.d(entry.getKey());
            return iD != -1 && t6.f.a(m.this.o(iD), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            m mVar = m.this;
            Map<K, V> mapA = mVar.a();
            return mapA != null ? mapA.entrySet().iterator() : new k(mVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(@CheckForNull Object obj) {
            Map<K, V> mapA = m.this.a();
            if (mapA != null) {
                return mapA.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (m.this.i()) {
                return false;
            }
            int iB = m.this.b();
            Object key = entry.getKey();
            Object value = entry.getValue();
            Object obj2 = m.this.f15942h;
            Objects.requireNonNull(obj2);
            int iB2 = n.b(key, value, iB, obj2, m.this.k(), m.this.l(), m.this.m());
            if (iB2 == -1) {
                return false;
            }
            m.this.g(iB2, iB);
            m mVar = m.this;
            mVar.f15947m--;
            mVar.c();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return m.this.size();
        }
    }

    /* JADX INFO: compiled from: CompactHashMap.java */
    public abstract class b<T> implements Iterator<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f15952h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f15953i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f15954j;

        public b() {
            this.f15952h = m.this.f15946l;
            this.f15953i = m.this.isEmpty() ? -1 : 0;
            this.f15954j = -1;
        }

        public abstract T a(int i10);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f15953i >= 0;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (m.this.f15946l != this.f15952h) {
                throw new ConcurrentModificationException();
            }
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i10 = this.f15953i;
            this.f15954j = i10;
            T tA = a(i10);
            m mVar = m.this;
            int i11 = this.f15953i + 1;
            if (i11 >= mVar.f15947m) {
                i11 = -1;
            }
            this.f15953i = i11;
            return tA;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (m.this.f15946l != this.f15952h) {
                throw new ConcurrentModificationException();
            }
            t6.h.g(this.f15954j >= 0, "no calls to next() since the last call to remove()");
            this.f15952h += 32;
            m mVar = m.this;
            mVar.remove(mVar.f(this.f15954j));
            m mVar2 = m.this;
            int i10 = this.f15953i;
            Objects.requireNonNull(mVar2);
            this.f15953i = i10 - 1;
            this.f15954j = -1;
        }
    }

    /* JADX INFO: compiled from: CompactHashMap.java */
    public class c extends AbstractSet<K> {
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            m.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(@CheckForNull Object obj) {
            return m.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            m mVar = m.this;
            Map<K, V> mapA = mVar.a();
            return mapA != null ? mapA.keySet().iterator() : new j(mVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(@CheckForNull Object obj) {
            Map<K, V> mapA = m.this.a();
            if (mapA != null) {
                return mapA.keySet().remove(obj);
            }
            Object objJ = m.this.j(obj);
            Object obj2 = m.f15941q;
            return objJ != m.f15941q;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return m.this.size();
        }
    }

    /* JADX INFO: compiled from: CompactHashMap.java */
    public final class d extends u6.e<K, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final K f15957h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f15958i;

        public d(int i10) {
            Object obj = m.f15941q;
            this.f15957h = (K) m.this.f(i10);
            this.f15958i = i10;
        }

        public final void a() {
            int i10 = this.f15958i;
            if (i10 == -1 || i10 >= m.this.size() || !t6.f.a(this.f15957h, m.this.f(this.f15958i))) {
                m mVar = m.this;
                K k10 = this.f15957h;
                Object obj = m.f15941q;
                this.f15958i = mVar.d(k10);
            }
        }

        @Override // u6.e, java.util.Map.Entry
        public final K getKey() {
            return this.f15957h;
        }

        @Override // u6.e, java.util.Map.Entry
        public final V getValue() {
            Map<K, V> mapA = m.this.a();
            if (mapA != null) {
                return mapA.get(this.f15957h);
            }
            a();
            int i10 = this.f15958i;
            if (i10 == -1) {
                return null;
            }
            return (V) m.this.o(i10);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            Map<K, V> mapA = m.this.a();
            if (mapA != null) {
                return mapA.put(this.f15957h, v10);
            }
            a();
            int i10 = this.f15958i;
            if (i10 == -1) {
                m.this.put(this.f15957h, v10);
                return null;
            }
            V v11 = (V) m.this.o(i10);
            m mVar = m.this;
            mVar.m()[this.f15958i] = v10;
            return v11;
        }
    }

    /* JADX INFO: compiled from: CompactHashMap.java */
    public class e extends AbstractCollection<V> {
        public e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            m.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            m mVar = m.this;
            Map<K, V> mapA = mVar.a();
            return mapA != null ? mapA.values().iterator() : new l(mVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return m.this.size();
        }
    }

    public m() {
        e(3);
    }

    @CheckForNull
    public final Map<K, V> a() {
        Object obj = this.f15942h;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final int b() {
        return (1 << (this.f15946l & 31)) - 1;
    }

    public final void c() {
        this.f15946l += 32;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (i()) {
            return;
        }
        c();
        Map<K, V> mapA = a();
        if (mapA != null) {
            this.f15946l = w6.a.b(size(), 3);
            mapA.clear();
            this.f15942h = null;
            this.f15947m = 0;
            return;
        }
        Arrays.fill(l(), 0, this.f15947m, (Object) null);
        Arrays.fill(m(), 0, this.f15947m, (Object) null);
        Object obj = this.f15942h;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(k(), 0, this.f15947m, 0);
        this.f15947m = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.containsKey(obj);
        }
        return d(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.containsValue(obj);
        }
        for (int i10 = 0; i10 < this.f15947m; i10++) {
            if (t6.f.a(obj, o(i10))) {
                return true;
            }
        }
        return false;
    }

    public final int d(@CheckForNull Object obj) {
        if (i()) {
            return -1;
        }
        int iB = s.b(obj);
        int iB2 = b();
        Object obj2 = this.f15942h;
        Objects.requireNonNull(obj2);
        int iC = n.c(obj2, iB & iB2);
        if (iC == 0) {
            return -1;
        }
        int i10 = ~iB2;
        int i11 = iB & i10;
        do {
            int i12 = iC - 1;
            int i13 = k()[i12];
            if ((i13 & i10) == i11 && t6.f.a(obj, f(i12))) {
                return i12;
            }
            iC = i13 & iB2;
        } while (iC != 0);
        return -1;
    }

    public final void e(int i10) {
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException("Expected size must be >= 0");
        }
        this.f15946l = w6.a.b(i10, 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f15949o;
        if (set != null) {
            return set;
        }
        a aVar = new a();
        this.f15949o = aVar;
        return aVar;
    }

    public final K f(int i10) {
        return (K) l()[i10];
    }

    public final void g(int i10, int i11) {
        Object obj = this.f15942h;
        Objects.requireNonNull(obj);
        int[] iArrK = k();
        Object[] objArrL = l();
        Object[] objArrM = m();
        int size = size() - 1;
        if (i10 >= size) {
            objArrL[i10] = null;
            objArrM[i10] = null;
            iArrK[i10] = 0;
            return;
        }
        Object obj2 = objArrL[size];
        objArrL[i10] = obj2;
        objArrM[i10] = objArrM[size];
        objArrL[size] = null;
        objArrM[size] = null;
        iArrK[i10] = iArrK[size];
        iArrK[size] = 0;
        int iB = s.b(obj2) & i11;
        int iC = n.c(obj, iB);
        int i12 = size + 1;
        if (iC == i12) {
            n.d(obj, iB, i10 + 1);
            return;
        }
        while (true) {
            int i13 = iC - 1;
            int i14 = iArrK[i13];
            int i15 = i14 & i11;
            if (i15 == i12) {
                iArrK[i13] = ((i10 + 1) & i11) | (i14 & (~i11));
                return;
            }
            iC = i15;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final V get(@CheckForNull Object obj) {
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.get(obj);
        }
        int iD = d(obj);
        if (iD == -1) {
            return null;
        }
        return o(iD);
    }

    public final boolean i() {
        return this.f15942h == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public final Object j(@CheckForNull Object obj) {
        if (i()) {
            return f15941q;
        }
        int iB = b();
        Object obj2 = this.f15942h;
        Objects.requireNonNull(obj2);
        int iB2 = n.b(obj, null, iB, obj2, k(), l(), null);
        if (iB2 == -1) {
            return f15941q;
        }
        V vO = o(iB2);
        g(iB2, iB);
        this.f15947m--;
        c();
        return vO;
    }

    public final int[] k() {
        int[] iArr = this.f15943i;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.f15948n;
        if (set != null) {
            return set;
        }
        c cVar = new c();
        this.f15948n = cVar;
        return cVar;
    }

    public final Object[] l() {
        Object[] objArr = this.f15944j;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object[] m() {
        Object[] objArr = this.f15945k;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @CanIgnoreReturnValue
    public final int n(int i10, int i11, int i12, int i13) {
        Object objA = n.a(i11);
        int i14 = i11 - 1;
        if (i13 != 0) {
            n.d(objA, i12 & i14, i13 + 1);
        }
        Object obj = this.f15942h;
        Objects.requireNonNull(obj);
        int[] iArrK = k();
        for (int i15 = 0; i15 <= i10; i15++) {
            int iC = n.c(obj, i15);
            while (iC != 0) {
                int i16 = iC - 1;
                int i17 = iArrK[i16];
                int i18 = ((~i10) & i17) | i15;
                int i19 = i18 & i14;
                int iC2 = n.c(objA, i19);
                n.d(objA, i19, iC);
                iArrK[i16] = ((~i14) & i18) | (iC2 & i14);
                iC = i17 & i10;
            }
        }
        this.f15942h = objA;
        this.f15946l = ((32 - Integer.numberOfLeadingZeros(i14)) & 31) | (this.f15946l & (-32));
        return i14;
    }

    public final V o(int i10) {
        return (V) m()[i10];
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00e6, code lost:
    
        r3 = -1;
     */
    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final V put(K k10, V v10) {
        int i10;
        int iMin;
        if (i()) {
            t6.h.g(i(), "Arrays already allocated");
            int i11 = this.f15946l;
            int iMax = Math.max(i11 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > ((int) (((double) iHighestOneBit) * 1.0d))) {
                int i12 = iHighestOneBit << 1;
                if (i12 <= 0) {
                    i12 = 1073741824;
                }
                iHighestOneBit = i12;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.f15942h = n.a(iMax2);
            this.f15946l = ((32 - Integer.numberOfLeadingZeros(iMax2 - 1)) & 31) | (this.f15946l & (-32));
            this.f15943i = new int[i11];
            this.f15944j = new Object[i11];
            this.f15945k = new Object[i11];
        }
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.put(k10, v10);
        }
        int[] iArrK = k();
        Object[] objArrL = l();
        Object[] objArrM = m();
        int i13 = this.f15947m;
        int i14 = i13 + 1;
        int iB = s.b(k10);
        int iB2 = b();
        int i15 = iB & iB2;
        Object obj = this.f15942h;
        Objects.requireNonNull(obj);
        int iC = n.c(obj, i15);
        if (iC != 0) {
            int i16 = ~iB2;
            int i17 = iB & i16;
            int i18 = 0;
            while (true) {
                int i19 = iC - 1;
                int i20 = iArrK[i19];
                int i21 = i20 & i16;
                if (i21 == i17 && t6.f.a(k10, objArrL[i19])) {
                    V v11 = (V) objArrM[i19];
                    objArrM[i19] = v10;
                    return v11;
                }
                int i22 = i20 & iB2;
                int i23 = i17;
                int i24 = i18 + 1;
                if (i22 != 0) {
                    iC = i22;
                    i18 = i24;
                    i17 = i23;
                } else {
                    if (i24 < 9) {
                        if (i14 <= iB2) {
                            iArrK[i19] = (i14 & iB2) | i21;
                            break;
                        }
                        iB2 = n(iB2, (iB2 + 1) * (iB2 < 32 ? 4 : 2), iB, i13);
                        break;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(b() + 1, 1.0f);
                    if (!isEmpty()) {
                        i10 = 0;
                        while (i10 >= 0) {
                            linkedHashMap.put(f(i10), o(i10));
                            i10++;
                            if (i10 >= this.f15947m) {
                                i10 = -1;
                            }
                        }
                        this.f15942h = linkedHashMap;
                        this.f15943i = null;
                        this.f15944j = null;
                        this.f15945k = null;
                        c();
                        return (V) linkedHashMap.put(k10, v10);
                    }
                    i10 = -1;
                }
            }
        } else if (i14 > iB2) {
            iB2 = n(iB2, (iB2 + 1) * (iB2 < 32 ? 4 : 2), iB, i13);
        } else {
            Object obj2 = this.f15942h;
            Objects.requireNonNull(obj2);
            n.d(obj2, i15, i14);
        }
        int length = k().length;
        if (i14 > length && (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f15943i = Arrays.copyOf(k(), iMin);
            this.f15944j = Arrays.copyOf(l(), iMin);
            this.f15945k = Arrays.copyOf(m(), iMin);
        }
        k()[i13] = ((~iB2) & iB) | (iB2 & 0);
        l()[i13] = k10;
        m()[i13] = v10;
        this.f15947m = i14;
        c();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @CheckForNull
    public final V remove(@CheckForNull Object obj) {
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.remove(obj);
        }
        V v10 = (V) j(obj);
        if (v10 == f15941q) {
            return null;
        }
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> mapA = a();
        return mapA != null ? mapA.size() : this.f15947m;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.f15950p;
        if (collection != null) {
            return collection;
        }
        e eVar = new e();
        this.f15950p = eVar;
        return eVar;
    }

    public m(int i10) {
        e(i10);
    }
}
