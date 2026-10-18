package gd;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ArrayDeque.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f<E> extends d<E> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object[] f8063k = new Object[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8064h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object[] f8065i = f8063k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8066j;

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, E e10) {
        int iK = k();
        if (i10 < 0 || i10 > iK) {
            throw new IndexOutOfBoundsException(d1.c.a("index: ", i10, ", size: ", iK));
        }
        if (i10 == k()) {
            n(e10);
            return;
        }
        if (i10 == 0) {
            m(e10);
            return;
        }
        q(k() + 1);
        int iT = t(this.f8064h + i10);
        if (i10 < ((k() + 1) >> 1)) {
            int iP = p(iT);
            int iP2 = p(this.f8064h);
            int i11 = this.f8064h;
            if (iP >= i11) {
                Object[] objArr = this.f8065i;
                objArr[iP2] = objArr[i11];
                g.k(objArr, objArr, i11, i11 + 1, iP + 1);
            } else {
                Object[] objArr2 = this.f8065i;
                g.k(objArr2, objArr2, i11 - 1, i11, objArr2.length);
                Object[] objArr3 = this.f8065i;
                objArr3[objArr3.length - 1] = objArr3[0];
                g.k(objArr3, objArr3, 0, 1, iP + 1);
            }
            this.f8065i[iP] = e10;
            this.f8064h = iP2;
        } else {
            int iT2 = t(k() + this.f8064h);
            if (iT < iT2) {
                Object[] objArr4 = this.f8065i;
                g.k(objArr4, objArr4, iT + 1, iT, iT2);
            } else {
                Object[] objArr5 = this.f8065i;
                g.k(objArr5, objArr5, 1, 0, iT2);
                Object[] objArr6 = this.f8065i;
                objArr6[0] = objArr6[objArr6.length - 1];
                g.k(objArr6, objArr6, iT + 1, iT, objArr6.length - 1);
            }
            this.f8065i[iT] = e10;
        }
        this.f8066j = k() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        p4.h.j(collection, "elements");
        int iK = k();
        if (i10 < 0 || i10 > iK) {
            throw new IndexOutOfBoundsException(d1.c.a("index: ", i10, ", size: ", iK));
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i10 == k()) {
            return addAll(collection);
        }
        q(collection.size() + k());
        int iT = t(k() + this.f8064h);
        int iT2 = t(this.f8064h + i10);
        int size = collection.size();
        if (i10 < ((k() + 1) >> 1)) {
            int i11 = this.f8064h;
            int length = i11 - size;
            if (iT2 < i11) {
                Object[] objArr = this.f8065i;
                g.k(objArr, objArr, length, i11, objArr.length);
                if (size >= iT2) {
                    Object[] objArr2 = this.f8065i;
                    g.k(objArr2, objArr2, objArr2.length - size, 0, iT2);
                } else {
                    Object[] objArr3 = this.f8065i;
                    g.k(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f8065i;
                    g.k(objArr4, objArr4, 0, size, iT2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f8065i;
                g.k(objArr5, objArr5, length, i11, iT2);
            } else {
                Object[] objArr6 = this.f8065i;
                length += objArr6.length;
                int i12 = iT2 - i11;
                int length2 = objArr6.length - length;
                if (length2 >= i12) {
                    g.k(objArr6, objArr6, length, i11, iT2);
                } else {
                    g.k(objArr6, objArr6, length, i11, i11 + length2);
                    Object[] objArr7 = this.f8065i;
                    g.k(objArr7, objArr7, 0, this.f8064h + length2, iT2);
                }
            }
            this.f8064h = length;
            o(s(iT2 - size), collection);
        } else {
            int i13 = iT2 + size;
            if (iT2 < iT) {
                int i14 = size + iT;
                Object[] objArr8 = this.f8065i;
                if (i14 <= objArr8.length) {
                    g.k(objArr8, objArr8, i13, iT2, iT);
                } else if (i13 >= objArr8.length) {
                    g.k(objArr8, objArr8, i13 - objArr8.length, iT2, iT);
                } else {
                    int length3 = iT - (i14 - objArr8.length);
                    g.k(objArr8, objArr8, 0, length3, iT);
                    Object[] objArr9 = this.f8065i;
                    g.k(objArr9, objArr9, i13, iT2, length3);
                }
            } else {
                Object[] objArr10 = this.f8065i;
                g.k(objArr10, objArr10, size, 0, iT);
                Object[] objArr11 = this.f8065i;
                if (i13 >= objArr11.length) {
                    g.k(objArr11, objArr11, i13 - objArr11.length, iT2, objArr11.length);
                } else {
                    g.k(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f8065i;
                    g.k(objArr12, objArr12, i13, iT2, objArr12.length - size);
                }
            }
            o(iT2, collection);
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int iT = t(this.f8066j + this.f8064h);
        int i10 = this.f8064h;
        if (i10 < iT) {
            g.n(this.f8065i, i10, iT);
        } else if (!isEmpty()) {
            Object[] objArr = this.f8065i;
            g.n(objArr, this.f8064h, objArr.length);
            g.n(this.f8065i, 0, iT);
        }
        this.f8064h = 0;
        this.f8066j = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i10) {
        int iK = k();
        if (i10 < 0 || i10 >= iK) {
            throw new IndexOutOfBoundsException(d1.c.a("index: ", i10, ", size: ", iK));
        }
        return (E) this.f8065i[t(this.f8064h + i10)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i10;
        int iT = t(k() + this.f8064h);
        int length = this.f8064h;
        if (length < iT) {
            while (length < iT) {
                if (p4.h.c(obj, this.f8065i[length])) {
                    i10 = this.f8064h;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iT) {
            return -1;
        }
        int length2 = this.f8065i.length;
        while (length < length2) {
            if (p4.h.c(obj, this.f8065i[length])) {
                i10 = this.f8064h;
            } else {
                length++;
            }
        }
        for (int i11 = 0; i11 < iT; i11++) {
            if (p4.h.c(obj, this.f8065i[i11])) {
                length = i11 + this.f8065i.length;
                i10 = this.f8064h;
            }
        }
        return -1;
        return length - i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return k() == 0;
    }

    @Override // gd.d
    public final int k() {
        return this.f8066j;
    }

    @Override // gd.d
    public final E l(int i10) {
        int iK = k();
        if (i10 < 0 || i10 >= iK) {
            throw new IndexOutOfBoundsException(d1.c.a("index: ", i10, ", size: ", iK));
        }
        if (i10 == androidx.lifecycle.o.p(this)) {
            return v();
        }
        if (i10 == 0) {
            return u();
        }
        int iT = t(this.f8064h + i10);
        E e10 = (E) this.f8065i[iT];
        if (i10 < (k() >> 1)) {
            int i11 = this.f8064h;
            if (iT >= i11) {
                Object[] objArr = this.f8065i;
                g.k(objArr, objArr, i11 + 1, i11, iT);
            } else {
                Object[] objArr2 = this.f8065i;
                g.k(objArr2, objArr2, 1, 0, iT);
                Object[] objArr3 = this.f8065i;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i12 = this.f8064h;
                g.k(objArr3, objArr3, i12 + 1, i12, objArr3.length - 1);
            }
            Object[] objArr4 = this.f8065i;
            int i13 = this.f8064h;
            objArr4[i13] = null;
            this.f8064h = r(i13);
        } else {
            int iT2 = t(androidx.lifecycle.o.p(this) + this.f8064h);
            if (iT <= iT2) {
                Object[] objArr5 = this.f8065i;
                g.k(objArr5, objArr5, iT, iT + 1, iT2 + 1);
            } else {
                Object[] objArr6 = this.f8065i;
                g.k(objArr6, objArr6, iT, iT + 1, objArr6.length);
                Object[] objArr7 = this.f8065i;
                objArr7[objArr7.length - 1] = objArr7[0];
                g.k(objArr7, objArr7, 0, 1, iT2 + 1);
            }
            this.f8065i[iT2] = null;
        }
        this.f8066j = k() - 1;
        return e10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int iS;
        int i10;
        int iT = t(k() + this.f8064h);
        int i11 = this.f8064h;
        if (i11 < iT) {
            iS = iT - 1;
            if (i11 <= iS) {
                while (!p4.h.c(obj, this.f8065i[iS])) {
                    if (iS != i11) {
                        iS--;
                    }
                }
                i10 = this.f8064h;
                return iS - i10;
            }
            return -1;
        }
        if (i11 > iT) {
            for (int i12 = iT - 1; -1 < i12; i12--) {
                if (p4.h.c(obj, this.f8065i[i12])) {
                    iS = i12 + this.f8065i.length;
                    i10 = this.f8064h;
                    return iS - i10;
                }
            }
            iS = i.s(this.f8065i);
            int i13 = this.f8064h;
            if (i13 <= iS) {
                while (!p4.h.c(obj, this.f8065i[iS])) {
                    if (iS != i13) {
                        iS--;
                    }
                }
                i10 = this.f8064h;
                return iS - i10;
            }
        }
        return -1;
    }

    public final void m(E e10) {
        q(k() + 1);
        int iP = p(this.f8064h);
        this.f8064h = iP;
        this.f8065i[iP] = e10;
        this.f8066j = k() + 1;
    }

    public final void n(E e10) {
        q(k() + 1);
        this.f8065i[t(k() + this.f8064h)] = e10;
        this.f8066j = k() + 1;
    }

    public final void o(int i10, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.f8065i.length;
        while (i10 < length && it.hasNext()) {
            this.f8065i[i10] = it.next();
            i10++;
        }
        int i11 = this.f8064h;
        for (int i12 = 0; i12 < i11 && it.hasNext(); i12++) {
            this.f8065i[i12] = it.next();
        }
        this.f8066j = collection.size() + k();
    }

    public final int p(int i10) {
        return i10 == 0 ? i.s(this.f8065i) : i10 - 1;
    }

    public final void q(int i10) {
        if (i10 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f8065i;
        if (i10 <= objArr.length) {
            return;
        }
        if (objArr == f8063k) {
            if (i10 < 10) {
                i10 = 10;
            }
            this.f8065i = new Object[i10];
            return;
        }
        int length = objArr.length;
        int i11 = length + (length >> 1);
        if (i11 - i10 < 0) {
            i11 = i10;
        }
        if (i11 - 2147483639 > 0) {
            i11 = i10 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i11];
        g.k(objArr, objArr2, 0, this.f8064h, objArr.length);
        Object[] objArr3 = this.f8065i;
        int length2 = objArr3.length;
        int i12 = this.f8064h;
        g.k(objArr3, objArr2, length2 - i12, 0, i12);
        this.f8064h = 0;
        this.f8065i = objArr2;
    }

    public final int r(int i10) {
        if (i10 == i.s(this.f8065i)) {
            return 0;
        }
        return i10 + 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        l(iIndexOf);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<? extends Object> collection) {
        int i10;
        p4.h.j(collection, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty()) {
            if ((this.f8065i.length == 0) == false) {
                int iT = t(this.f8066j + this.f8064h);
                int i11 = this.f8064h;
                if (i11 < iT) {
                    i10 = i11;
                    while (i11 < iT) {
                        Object obj = this.f8065i[i11];
                        if (!collection.contains(obj)) {
                            this.f8065i[i10] = obj;
                            i10++;
                        } else {
                            z10 = true;
                        }
                        i11++;
                    }
                    g.n(this.f8065i, i10, iT);
                } else {
                    int length = this.f8065i.length;
                    boolean z11 = false;
                    int i12 = i11;
                    while (i11 < length) {
                        Object[] objArr = this.f8065i;
                        Object obj2 = objArr[i11];
                        objArr[i11] = null;
                        if (!collection.contains(obj2)) {
                            this.f8065i[i12] = obj2;
                            i12++;
                        } else {
                            z11 = true;
                        }
                        i11++;
                    }
                    int iT2 = t(i12);
                    for (int i13 = 0; i13 < iT; i13++) {
                        Object[] objArr2 = this.f8065i;
                        Object obj3 = objArr2[i13];
                        objArr2[i13] = null;
                        if (!collection.contains(obj3)) {
                            this.f8065i[iT2] = obj3;
                            iT2 = r(iT2);
                        } else {
                            z11 = true;
                        }
                    }
                    i10 = iT2;
                    z10 = z11;
                }
                if (z10) {
                    this.f8066j = s(i10 - this.f8064h);
                }
            }
        }
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<? extends Object> collection) {
        int i10;
        p4.h.j(collection, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty()) {
            if ((this.f8065i.length == 0) == false) {
                int iT = t(this.f8066j + this.f8064h);
                int i11 = this.f8064h;
                if (i11 < iT) {
                    i10 = i11;
                    while (i11 < iT) {
                        Object obj = this.f8065i[i11];
                        if (collection.contains(obj)) {
                            this.f8065i[i10] = obj;
                            i10++;
                        } else {
                            z10 = true;
                        }
                        i11++;
                    }
                    g.n(this.f8065i, i10, iT);
                } else {
                    int length = this.f8065i.length;
                    boolean z11 = false;
                    int i12 = i11;
                    while (i11 < length) {
                        Object[] objArr = this.f8065i;
                        Object obj2 = objArr[i11];
                        objArr[i11] = null;
                        if (collection.contains(obj2)) {
                            this.f8065i[i12] = obj2;
                            i12++;
                        } else {
                            z11 = true;
                        }
                        i11++;
                    }
                    int iT2 = t(i12);
                    for (int i13 = 0; i13 < iT; i13++) {
                        Object[] objArr2 = this.f8065i;
                        Object obj3 = objArr2[i13];
                        objArr2[i13] = null;
                        if (collection.contains(obj3)) {
                            this.f8065i[iT2] = obj3;
                            iT2 = r(iT2);
                        } else {
                            z11 = true;
                        }
                    }
                    i10 = iT2;
                    z10 = z11;
                }
                if (z10) {
                    this.f8066j = s(i10 - this.f8064h);
                }
            }
        }
        return z10;
    }

    public final int s(int i10) {
        return i10 < 0 ? i10 + this.f8065i.length : i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i10, E e10) {
        int iK = k();
        if (i10 < 0 || i10 >= iK) {
            throw new IndexOutOfBoundsException(d1.c.a("index: ", i10, ", size: ", iK));
        }
        int iT = t(this.f8064h + i10);
        Object[] objArr = this.f8065i;
        E e11 = (E) objArr[iT];
        objArr[iT] = e10;
        return e11;
    }

    public final int t(int i10) {
        Object[] objArr = this.f8065i;
        return i10 >= objArr.length ? i10 - objArr.length : i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[k()]);
    }

    public final E u() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        Object[] objArr = this.f8065i;
        int i10 = this.f8064h;
        E e10 = (E) objArr[i10];
        objArr[i10] = null;
        this.f8064h = r(i10);
        this.f8066j = k() - 1;
        return e10;
    }

    public final E v() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        int iT = t(androidx.lifecycle.o.p(this) + this.f8064h);
        Object[] objArr = this.f8065i;
        E e10 = (E) objArr[iT];
        objArr[iT] = null;
        this.f8066j = k() - 1;
        return e10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        p4.h.j(tArr, "array");
        int length = tArr.length;
        int i10 = this.f8066j;
        if (length < i10) {
            Object objNewInstance = Array.newInstance(tArr.getClass().getComponentType(), i10);
            p4.h.h(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            tArr = (T[]) ((Object[]) objNewInstance);
        }
        int iT = t(this.f8066j + this.f8064h);
        int i11 = this.f8064h;
        if (i11 < iT) {
            g.l(this.f8065i, tArr, 0, i11, iT, 2);
        } else if (!isEmpty()) {
            Object[] objArr = this.f8065i;
            g.k(objArr, tArr, 0, this.f8064h, objArr.length);
            Object[] objArr2 = this.f8065i;
            g.k(objArr2, tArr, objArr2.length - this.f8064h, 0, iT);
        }
        int length2 = tArr.length;
        int i12 = this.f8066j;
        if (length2 > i12) {
            tArr[i12] = null;
        }
        return tArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        n(e10);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends E> collection) {
        p4.h.j(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        q(collection.size() + k());
        o(t(k() + this.f8064h), collection);
        return true;
    }
}
