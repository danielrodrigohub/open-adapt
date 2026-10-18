package b7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: IntArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class y extends c<Integer> implements RandomAccess, z0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f3562i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3563j;

    static {
        new y(new int[0], 0).f3372h = false;
    }

    public y() {
        this(new int[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        int iIntValue = ((Integer) obj).intValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f3563j)) {
            throw new IndexOutOfBoundsException(n(i10));
        }
        int[] iArr = this.f3562i;
        if (i11 < iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i11 - i10);
        } else {
            int[] iArr2 = new int[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            System.arraycopy(this.f3562i, i10, iArr2, i10 + 1, this.f3563j - i10);
            this.f3562i = iArr2;
        }
        this.f3562i[i10] = iIntValue;
        this.f3563j++;
        ((AbstractList) this).modCount++;
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        h();
        Charset charset = z.f3564a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof y)) {
            return super.addAll(collection);
        }
        y yVar = (y) collection;
        int i10 = yVar.f3563j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f3563j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f3562i;
        if (i12 > iArr.length) {
            this.f3562i = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(yVar.f3562i, 0, this.f3562i, this.f3563j, yVar.f3563j);
        this.f3563j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // b7.z.c
    public final z.c b(int i10) {
        if (i10 >= this.f3563j) {
            return new y(Arrays.copyOf(this.f3562i, i10), this.f3563j);
        }
        throw new IllegalArgumentException();
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return super.equals(obj);
        }
        y yVar = (y) obj;
        if (this.f3563j != yVar.f3563j) {
            return false;
        }
        int[] iArr = yVar.f3562i;
        for (int i10 = 0; i10 < this.f3563j; i10++) {
            if (this.f3562i[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        return Integer.valueOf(m(i10));
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f3563j; i11++) {
            i10 = (i10 * 31) + this.f3562i[i11];
        }
        return i10;
    }

    public final void k(int i10) {
        h();
        int i11 = this.f3563j;
        int[] iArr = this.f3562i;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f3562i = iArr2;
        }
        int[] iArr3 = this.f3562i;
        int i12 = this.f3563j;
        this.f3563j = i12 + 1;
        iArr3[i12] = i10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f3563j) {
            throw new IndexOutOfBoundsException(n(i10));
        }
    }

    public final int m(int i10) {
        l(i10);
        return this.f3562i[i10];
    }

    public final String n(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f3563j);
        return sbC.toString();
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int i10 = 0; i10 < this.f3563j; i10++) {
            if (obj.equals(Integer.valueOf(this.f3562i[i10]))) {
                int[] iArr = this.f3562i;
                System.arraycopy(iArr, i10 + 1, iArr, i10, (this.f3563j - i10) - 1);
                this.f3563j--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i10, int i11) {
        h();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f3562i;
        System.arraycopy(iArr, i11, iArr, i10, this.f3563j - i11);
        this.f3563j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        h();
        l(i10);
        int[] iArr = this.f3562i;
        int i11 = iArr[i10];
        iArr[i10] = iIntValue;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3563j;
    }

    public y(int[] iArr, int i10) {
        this.f3562i = iArr;
        this.f3563j = i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        int[] iArr = this.f3562i;
        int i11 = iArr[i10];
        int i12 = this.f3563j;
        if (i10 < i12 - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (i12 - i10) - 1);
        }
        this.f3563j--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // b7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Integer) obj).intValue());
        return true;
    }
}
