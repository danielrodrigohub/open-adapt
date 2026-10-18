package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import p4.h;

/* JADX INFO: compiled from: ThreadSafeHeap.kt */
/* JADX INFO: loaded from: classes.dex */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {
    private volatile /* synthetic */ int _size = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T[] f9807a;

    private final T[] realloc() {
        T[] tArr = this.f9807a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new ThreadSafeHeapNode[4];
            this.f9807a = tArr2;
            return tArr2;
        }
        if (getSize() < tArr.length) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, getSize() * 2);
        h.i(objArrCopyOf, "copyOf(this, newSize)");
        T[] tArr3 = (T[]) ((ThreadSafeHeapNode[]) objArrCopyOf);
        this.f9807a = tArr3;
        return tArr3;
    }

    private final void setSize(int i10) {
        this._size = i10;
    }

    private final void siftDownFrom(int i10) {
        while (true) {
            int i11 = (i10 * 2) + 1;
            if (i11 >= getSize()) {
                return;
            }
            T[] tArr = this.f9807a;
            h.g(tArr);
            int i12 = i11 + 1;
            if (i12 < getSize()) {
                T t10 = tArr[i12];
                h.g(t10);
                T t11 = tArr[i11];
                h.g(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    i11 = i12;
                }
            }
            T t12 = tArr[i10];
            h.g(t12);
            T t13 = tArr[i11];
            h.g(t13);
            if (((Comparable) t12).compareTo(t13) <= 0) {
                return;
            }
            swap(i10, i11);
            i10 = i11;
        }
    }

    private final void siftUpFrom(int i10) {
        while (i10 > 0) {
            T[] tArr = this.f9807a;
            h.g(tArr);
            int i11 = (i10 - 1) / 2;
            T t10 = tArr[i11];
            h.g(t10);
            T t11 = tArr[i10];
            h.g(t11);
            if (((Comparable) t10).compareTo(t11) <= 0) {
                return;
            }
            swap(i10, i11);
            i10 = i11;
        }
    }

    private final void swap(int i10, int i11) {
        T[] tArr = this.f9807a;
        h.g(tArr);
        T t10 = tArr[i11];
        h.g(t10);
        T t11 = tArr[i10];
        h.g(t11);
        tArr[i10] = t10;
        tArr[i11] = t11;
        t10.setIndex(i10);
        t11.setIndex(i11);
    }

    public final void addImpl(T t10) {
        t10.setHeap(this);
        ThreadSafeHeapNode[] threadSafeHeapNodeArrRealloc = realloc();
        int size = getSize();
        setSize(size + 1);
        threadSafeHeapNodeArrRealloc[size] = t10;
        t10.setIndex(size);
        siftUpFrom(size);
    }

    public final T firstImpl() {
        T[] tArr = this.f9807a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int getSize() {
        return this._size;
    }

    public final boolean isEmpty() {
        return getSize() == 0;
    }

    public final T peek() {
        T t10;
        synchronized (this) {
            t10 = (T) firstImpl();
        }
        return t10;
    }

    public final boolean remove(T t10) {
        boolean z10;
        synchronized (this) {
            if (t10.getHeap() == null) {
                z10 = false;
            } else {
                removeAtImpl(t10.getIndex());
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003a  */
    public final T removeAtImpl(int i10) {
        T[] tArr = this.f9807a;
        h.g(tArr);
        setSize(getSize() - 1);
        if (i10 < getSize()) {
            swap(i10, getSize());
            int i11 = (i10 - 1) / 2;
            if (i10 > 0) {
                T t10 = tArr[i10];
                h.g(t10);
                T t11 = tArr[i11];
                h.g(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    swap(i10, i11);
                    siftUpFrom(i11);
                } else {
                    siftDownFrom(i10);
                }
            } else {
                siftDownFrom(i10);
            }
        }
        T t12 = tArr[getSize()];
        h.g(t12);
        t12.setHeap(null);
        t12.setIndex(-1);
        tArr[getSize()] = null;
        return t12;
    }

    public final T removeFirstOrNull() {
        T t10;
        synchronized (this) {
            t10 = getSize() > 0 ? (T) removeAtImpl(0) : null;
        }
        return t10;
    }
}
