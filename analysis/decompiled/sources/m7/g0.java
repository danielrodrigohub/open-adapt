package m7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: LongArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends c<Long> implements RandomAccess, y0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long[] f10658i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10659j;

    static {
        new g0(new long[0], 0).f10622h = false;
    }

    public g0() {
        this(new long[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        long jLongValue = ((Long) obj).longValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f10659j)) {
            throw new IndexOutOfBoundsException(n(i10));
        }
        long[] jArr = this.f10658i;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            System.arraycopy(this.f10658i, i10, jArr2, i10 + 1, this.f10659j - i10);
            this.f10658i = jArr2;
        }
        this.f10658i[i10] = jLongValue;
        this.f10659j++;
        ((AbstractList) this).modCount++;
    }

    @Override // m7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        h();
        Charset charset = y.f10801a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof g0)) {
            return super.addAll(collection);
        }
        g0 g0Var = (g0) collection;
        int i10 = g0Var.f10659j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f10659j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f10658i;
        if (i12 > jArr.length) {
            this.f10658i = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(g0Var.f10658i, 0, this.f10658i, this.f10659j, g0Var.f10659j);
        this.f10659j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // m7.y.d
    public final y.d b(int i10) {
        if (i10 >= this.f10659j) {
            return new g0(Arrays.copyOf(this.f10658i, i10), this.f10659j);
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
        if (!(obj instanceof g0)) {
            return super.equals(obj);
        }
        g0 g0Var = (g0) obj;
        if (this.f10659j != g0Var.f10659j) {
            return false;
        }
        long[] jArr = g0Var.f10658i;
        for (int i10 = 0; i10 < this.f10659j; i10++) {
            if (this.f10658i[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        return Long.valueOf(m(i10));
    }

    @Override // m7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i10 = 0; i10 < this.f10659j; i10++) {
            iB = (iB * 31) + y.b(this.f10658i[i10]);
        }
        return iB;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i10 = this.f10659j;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f10658i[i11] == jLongValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void k(long j10) {
        h();
        int i10 = this.f10659j;
        long[] jArr = this.f10658i;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[ca.a.c(i10, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f10658i = jArr2;
        }
        long[] jArr3 = this.f10658i;
        int i11 = this.f10659j;
        this.f10659j = i11 + 1;
        jArr3[i11] = j10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f10659j) {
            throw new IndexOutOfBoundsException(n(i10));
        }
    }

    public final long m(int i10) {
        l(i10);
        return this.f10658i[i10];
    }

    public final String n(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f10659j);
        return sbC.toString();
    }

    @Override // m7.c, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        long[] jArr = this.f10658i;
        long j10 = jArr[i10];
        int i11 = this.f10659j;
        if (i10 < i11 - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (i11 - i10) - 1);
        }
        this.f10659j--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i10, int i11) {
        h();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f10658i;
        System.arraycopy(jArr, i11, jArr, i10, this.f10659j - i11);
        this.f10659j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        h();
        l(i10);
        long[] jArr = this.f10658i;
        long j10 = jArr[i10];
        jArr[i10] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10659j;
    }

    public g0(long[] jArr, int i10) {
        this.f10658i = jArr;
        this.f10659j = i10;
    }

    @Override // m7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Long) obj).longValue());
        return true;
    }
}
