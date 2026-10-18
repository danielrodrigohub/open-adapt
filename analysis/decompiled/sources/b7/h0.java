package b7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: LongArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends c<Long> implements RandomAccess, z0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long[] f3400i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3401j;

    static {
        new h0(new long[0], 0).f3372h = false;
    }

    public h0() {
        this(new long[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        long jLongValue = ((Long) obj).longValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f3401j)) {
            throw new IndexOutOfBoundsException(n(i10));
        }
        long[] jArr = this.f3400i;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            System.arraycopy(this.f3400i, i10, jArr2, i10 + 1, this.f3401j - i10);
            this.f3400i = jArr2;
        }
        this.f3400i[i10] = jLongValue;
        this.f3401j++;
        ((AbstractList) this).modCount++;
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        h();
        Charset charset = z.f3564a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof h0)) {
            return super.addAll(collection);
        }
        h0 h0Var = (h0) collection;
        int i10 = h0Var.f3401j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f3401j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f3400i;
        if (i12 > jArr.length) {
            this.f3400i = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(h0Var.f3400i, 0, this.f3400i, this.f3401j, h0Var.f3401j);
        this.f3401j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // b7.z.c
    public final z.c b(int i10) {
        if (i10 >= this.f3401j) {
            return new h0(Arrays.copyOf(this.f3400i, i10), this.f3401j);
        }
        throw new IllegalArgumentException();
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h0)) {
            return super.equals(obj);
        }
        h0 h0Var = (h0) obj;
        if (this.f3401j != h0Var.f3401j) {
            return false;
        }
        long[] jArr = h0Var.f3400i;
        for (int i10 = 0; i10 < this.f3401j; i10++) {
            if (this.f3400i[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        return Long.valueOf(m(i10));
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i10 = 0; i10 < this.f3401j; i10++) {
            iB = (iB * 31) + z.b(this.f3400i[i10]);
        }
        return iB;
    }

    public final void k(long j10) {
        h();
        int i10 = this.f3401j;
        long[] jArr = this.f3400i;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[ca.a.c(i10, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f3400i = jArr2;
        }
        long[] jArr3 = this.f3400i;
        int i11 = this.f3401j;
        this.f3401j = i11 + 1;
        jArr3[i11] = j10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f3401j) {
            throw new IndexOutOfBoundsException(n(i10));
        }
    }

    public final long m(int i10) {
        l(i10);
        return this.f3400i[i10];
    }

    public final String n(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f3401j);
        return sbC.toString();
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int i10 = 0; i10 < this.f3401j; i10++) {
            if (obj.equals(Long.valueOf(this.f3400i[i10]))) {
                long[] jArr = this.f3400i;
                System.arraycopy(jArr, i10 + 1, jArr, i10, (this.f3401j - i10) - 1);
                this.f3401j--;
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
        long[] jArr = this.f3400i;
        System.arraycopy(jArr, i11, jArr, i10, this.f3401j - i11);
        this.f3401j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        h();
        l(i10);
        long[] jArr = this.f3400i;
        long j10 = jArr[i10];
        jArr[i10] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3401j;
    }

    public h0(long[] jArr, int i10) {
        this.f3400i = jArr;
        this.f3401j = i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        long[] jArr = this.f3400i;
        long j10 = jArr[i10];
        int i11 = this.f3401j;
        if (i10 < i11 - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (i11 - i10) - 1);
        }
        this.f3401j--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // b7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Long) obj).longValue());
        return true;
    }
}
