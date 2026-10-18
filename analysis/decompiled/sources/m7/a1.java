package m7;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: ProtobufArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class a1<E> extends c<E> implements RandomAccess {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a1<Object> f10613k;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public E[] f10614i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10615j;

    static {
        a1<Object> a1Var = new a1<>(new Object[0], 0);
        f10613k = a1Var;
        a1Var.f10622h = false;
    }

    public a1(E[] eArr, int i10) {
        this.f10614i = eArr;
        this.f10615j = i10;
    }

    @Override // m7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        h();
        int i10 = this.f10615j;
        E[] eArr = this.f10614i;
        if (i10 == eArr.length) {
            this.f10614i = (E[]) Arrays.copyOf(eArr, ((i10 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f10614i;
        int i11 = this.f10615j;
        this.f10615j = i11 + 1;
        eArr2[i11] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // m7.y.d
    public final y.d b(int i10) {
        if (i10 >= this.f10615j) {
            return new a1(Arrays.copyOf(this.f10614i, i10), this.f10615j);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i10) {
        k(i10);
        return this.f10614i[i10];
    }

    public final void k(int i10) {
        if (i10 < 0 || i10 >= this.f10615j) {
            throw new IndexOutOfBoundsException(l(i10));
        }
    }

    public final String l(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f10615j);
        return sbC.toString();
    }

    @Override // m7.c, java.util.AbstractList, java.util.List
    public final E remove(int i10) {
        h();
        k(i10);
        E[] eArr = this.f10614i;
        E e10 = eArr[i10];
        int i11 = this.f10615j;
        if (i10 < i11 - 1) {
            System.arraycopy(eArr, i10 + 1, eArr, i10, (i11 - i10) - 1);
        }
        this.f10615j--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i10, E e10) {
        h();
        k(i10);
        E[] eArr = this.f10614i;
        E e11 = eArr[i10];
        eArr[i10] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10615j;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, E e10) {
        int i11;
        h();
        if (i10 >= 0 && i10 <= (i11 = this.f10615j)) {
            E[] eArr = this.f10614i;
            if (i11 < eArr.length) {
                System.arraycopy(eArr, i10, eArr, i10 + 1, i11 - i10);
            } else {
                E[] eArr2 = (E[]) new Object[ca.a.c(i11, 3, 2, 1)];
                System.arraycopy(eArr, 0, eArr2, 0, i10);
                System.arraycopy(this.f10614i, i10, eArr2, i10 + 1, this.f10615j - i10);
                this.f10614i = eArr2;
            }
            this.f10614i[i10] = e10;
            this.f10615j++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(l(i10));
    }
}
