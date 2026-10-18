package m7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: IntArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class x extends c<Integer> implements y.c, RandomAccess, y0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final x f10798k;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f10799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10800j;

    static {
        x xVar = new x(new int[0], 0);
        f10798k = xVar;
        xVar.f10622h = false;
    }

    public x() {
        this(new int[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        int iIntValue = ((Integer) obj).intValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f10800j)) {
            throw new IndexOutOfBoundsException(n(i10));
        }
        int[] iArr = this.f10799i;
        if (i11 < iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i11 - i10);
        } else {
            int[] iArr2 = new int[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            System.arraycopy(this.f10799i, i10, iArr2, i10 + 1, this.f10800j - i10);
            this.f10799i = iArr2;
        }
        this.f10799i[i10] = iIntValue;
        this.f10800j++;
        ((AbstractList) this).modCount++;
    }

    @Override // m7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        h();
        Charset charset = y.f10801a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof x)) {
            return super.addAll(collection);
        }
        x xVar = (x) collection;
        int i10 = xVar.f10800j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f10800j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f10799i;
        if (i12 > iArr.length) {
            this.f10799i = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(xVar.f10799i, 0, this.f10799i, this.f10800j, xVar.f10800j);
        this.f10800j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // m7.y.d
    public final y.d<Integer> b(int i10) {
        if (i10 >= this.f10800j) {
            return new x(Arrays.copyOf(this.f10799i, i10), this.f10800j);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // m7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return super.equals(obj);
        }
        x xVar = (x) obj;
        if (this.f10800j != xVar.f10800j) {
            return false;
        }
        int[] iArr = xVar.f10799i;
        for (int i10 = 0; i10 < this.f10800j; i10++) {
            if (this.f10799i[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        return Integer.valueOf(m(i10));
    }

    @Override // m7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f10800j; i11++) {
            i10 = (i10 * 31) + this.f10799i[i11];
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i10 = this.f10800j;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f10799i[i11] == iIntValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void k(int i10) {
        h();
        int i11 = this.f10800j;
        int[] iArr = this.f10799i;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f10799i = iArr2;
        }
        int[] iArr3 = this.f10799i;
        int i12 = this.f10800j;
        this.f10800j = i12 + 1;
        iArr3[i12] = i10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f10800j) {
            throw new IndexOutOfBoundsException(n(i10));
        }
    }

    public final int m(int i10) {
        l(i10);
        return this.f10799i[i10];
    }

    public final String n(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f10800j);
        return sbC.toString();
    }

    @Override // m7.c, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        int[] iArr = this.f10799i;
        int i11 = iArr[i10];
        int i12 = this.f10800j;
        if (i10 < i12 - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (i12 - i10) - 1);
        }
        this.f10800j--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i10, int i11) {
        h();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f10799i;
        System.arraycopy(iArr, i11, iArr, i10, this.f10800j - i11);
        this.f10800j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        h();
        l(i10);
        int[] iArr = this.f10799i;
        int i11 = iArr[i10];
        iArr[i10] = iIntValue;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10800j;
    }

    public x(int[] iArr, int i10) {
        this.f10799i = iArr;
        this.f10800j = i10;
    }

    @Override // m7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Integer) obj).intValue());
        return true;
    }
}
