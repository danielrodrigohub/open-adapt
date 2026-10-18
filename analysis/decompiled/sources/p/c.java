package p;

import androidx.lifecycle.k0;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: ArraySet.java */
/* JADX INFO: loaded from: classes.dex */
public final class c<E> implements Collection<E>, Set<E> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f12573l = new int[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Object[] f12574m = new Object[0];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Object[] f12575n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f12576o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static Object[] f12577p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f12578q;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f12579h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object[] f12580i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12581j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f<E, E> f12582k;

    public c() {
        this(0);
    }

    public static void k(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (c.class) {
                if (f12578q < 10) {
                    objArr[0] = f12577p;
                    objArr[1] = iArr;
                    for (int i11 = i10 - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    f12577p = objArr;
                    f12578q++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (c.class) {
                if (f12576o < 10) {
                    objArr[0] = f12575n;
                    objArr[1] = iArr;
                    for (int i12 = i10 - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f12575n = objArr;
                    f12576o++;
                }
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(E e10) {
        int i10;
        int iL;
        if (e10 == null) {
            iL = m();
            i10 = 0;
        } else {
            int iHashCode = e10.hashCode();
            i10 = iHashCode;
            iL = l(e10, iHashCode);
        }
        if (iL >= 0) {
            return false;
        }
        int i11 = ~iL;
        int i12 = this.f12581j;
        int[] iArr = this.f12579h;
        if (i12 >= iArr.length) {
            int i13 = 4;
            if (i12 >= 8) {
                i13 = (i12 >> 1) + i12;
            } else if (i12 >= 4) {
                i13 = 8;
            }
            Object[] objArr = this.f12580i;
            h(i13);
            int[] iArr2 = this.f12579h;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f12580i, 0, objArr.length);
            }
            k(iArr, objArr, this.f12581j);
        }
        int i14 = this.f12581j;
        if (i11 < i14) {
            int[] iArr3 = this.f12579h;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr2 = this.f12580i;
            System.arraycopy(objArr2, i11, objArr2, i15, this.f12581j - i11);
        }
        this.f12579h[i11] = i10;
        this.f12580i[i11] = e10;
        this.f12581j++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> collection) {
        int size = collection.size() + this.f12581j;
        int[] iArr = this.f12579h;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.f12580i;
            h(size);
            int i10 = this.f12581j;
            if (i10 > 0) {
                System.arraycopy(iArr, 0, this.f12579h, 0, i10);
                System.arraycopy(objArr, 0, this.f12580i, 0, this.f12581j);
            }
            k(iArr, objArr, this.f12581j);
        }
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i10 = this.f12581j;
        if (i10 != 0) {
            k(this.f12579h, this.f12580i, i10);
            this.f12579h = f12573l;
            this.f12580i = f12574m;
            this.f12581j = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.f12581j != set.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.f12581j; i10++) {
                try {
                    if (!set.contains(this.f12580i[i10])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public final void h(int i10) {
        if (i10 == 8) {
            synchronized (c.class) {
                Object[] objArr = f12577p;
                if (objArr != null) {
                    this.f12580i = objArr;
                    f12577p = (Object[]) objArr[0];
                    this.f12579h = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f12578q--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (c.class) {
                Object[] objArr2 = f12575n;
                if (objArr2 != null) {
                    this.f12580i = objArr2;
                    f12575n = (Object[]) objArr2[0];
                    this.f12579h = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f12576o--;
                    return;
                }
            }
        }
        this.f12579h = new int[i10];
        this.f12580i = new Object[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f12579h;
        int i10 = this.f12581j;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    public final int indexOf(Object obj) {
        return obj == null ? m() : l(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f12581j <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        if (this.f12582k == null) {
            this.f12582k = new b(this);
        }
        f<E, E> fVar = this.f12582k;
        if (fVar.f12594b == null) {
            fVar.f12594b = new f.c();
        }
        return fVar.f12594b.iterator();
    }

    public final int l(Object obj, int i10) {
        int i11 = this.f12581j;
        if (i11 == 0) {
            return -1;
        }
        int iE = k0.e(this.f12579h, i11, i10);
        if (iE < 0 || obj.equals(this.f12580i[iE])) {
            return iE;
        }
        int i12 = iE + 1;
        while (i12 < i11 && this.f12579h[i12] == i10) {
            if (obj.equals(this.f12580i[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iE - 1; i13 >= 0 && this.f12579h[i13] == i10; i13--) {
            if (obj.equals(this.f12580i[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    public final int m() {
        int i10 = this.f12581j;
        if (i10 == 0) {
            return -1;
        }
        int iE = k0.e(this.f12579h, i10, 0);
        if (iE < 0 || this.f12580i[iE] == null) {
            return iE;
        }
        int i11 = iE + 1;
        while (i11 < i10 && this.f12579h[i11] == 0) {
            if (this.f12580i[i11] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iE - 1; i12 >= 0 && this.f12579h[i12] == 0; i12--) {
            if (this.f12580i[i12] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    public final E n(int i10) {
        Object[] objArr = this.f12580i;
        E e10 = (E) objArr[i10];
        int i11 = this.f12581j;
        if (i11 <= 1) {
            k(this.f12579h, objArr, i11);
            this.f12579h = f12573l;
            this.f12580i = f12574m;
            this.f12581j = 0;
        } else {
            int[] iArr = this.f12579h;
            if (iArr.length <= 8 || i11 >= iArr.length / 3) {
                int i12 = i11 - 1;
                this.f12581j = i12;
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    System.arraycopy(iArr, i13, iArr, i10, i12 - i10);
                    Object[] objArr2 = this.f12580i;
                    System.arraycopy(objArr2, i13, objArr2, i10, this.f12581j - i10);
                }
                this.f12580i[this.f12581j] = null;
            } else {
                h(i11 > 8 ? i11 + (i11 >> 1) : 8);
                this.f12581j--;
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f12579h, 0, i10);
                    System.arraycopy(objArr, 0, this.f12580i, 0, i10);
                }
                int i14 = this.f12581j;
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    System.arraycopy(iArr, i15, this.f12579h, i10, i14 - i10);
                    System.arraycopy(objArr, i15, this.f12580i, i10, this.f12581j - i10);
                }
            }
        }
        return e10;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        n(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int i10 = this.f12581j - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.f12580i[i10])) {
                n(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f12581j;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i10 = this.f12581j;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.f12580i, 0, objArr, 0, i10);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f12581j * 14);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f12581j; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            Object obj = this.f12580i[i10];
            if (obj != this) {
                sb2.append(obj);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public c(int i10) {
        if (i10 == 0) {
            this.f12579h = f12573l;
            this.f12580i = f12574m;
        } else {
            h(i10);
        }
        this.f12581j = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f12581j) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f12581j));
        }
        System.arraycopy(this.f12580i, 0, tArr, 0, this.f12581j);
        int length = tArr.length;
        int i10 = this.f12581j;
        if (length > i10) {
            tArr[i10] = null;
        }
        return tArr;
    }
}
