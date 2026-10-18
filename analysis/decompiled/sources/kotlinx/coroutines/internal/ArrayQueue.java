package kotlinx.coroutines.internal;

import gd.g;
import java.util.Objects;

/* JADX INFO: compiled from: ArrayQueue.kt */
/* JADX INFO: loaded from: classes.dex */
public class ArrayQueue<T> {
    private Object[] elements = new Object[16];
    private int head;
    private int tail;

    private final void ensureCapacity() {
        Object[] objArr = this.elements;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        g.l(objArr, objArr2, 0, this.head, 0, 10);
        Object[] objArr3 = this.elements;
        int length2 = objArr3.length;
        int i10 = this.head;
        g.l(objArr3, objArr2, length2 - i10, 0, i10, 4);
        this.elements = objArr2;
        this.head = 0;
        this.tail = length;
    }

    public final void addLast(T t10) {
        Object[] objArr = this.elements;
        int i10 = this.tail;
        objArr[i10] = t10;
        int length = (objArr.length - 1) & (i10 + 1);
        this.tail = length;
        if (length == this.head) {
            ensureCapacity();
        }
    }

    public final boolean isEmpty() {
        return this.head == this.tail;
    }

    public final T removeFirstOrNull() {
        int i10 = this.head;
        if (i10 == this.tail) {
            return null;
        }
        Object[] objArr = this.elements;
        T t10 = (T) objArr[i10];
        objArr[i10] = null;
        this.head = (i10 + 1) & (objArr.length - 1);
        Objects.requireNonNull(t10, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue");
        return t10;
    }
}
