package m7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: BooleanArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends c<Boolean> implements RandomAccess, y0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean[] f10636i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10637j;

    static {
        new f(new boolean[0], 0).f10622h = false;
    }

    public f() {
        this(new boolean[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f10637j)) {
            throw new IndexOutOfBoundsException(m(i10));
        }
        boolean[] zArr = this.f10636i;
        if (i11 < zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
        } else {
            boolean[] zArr2 = new boolean[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            System.arraycopy(this.f10636i, i10, zArr2, i10 + 1, this.f10637j - i10);
            this.f10636i = zArr2;
        }
        this.f10636i[i10] = zBooleanValue;
        this.f10637j++;
        ((AbstractList) this).modCount++;
    }

    @Override // m7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        h();
        Charset charset = y.f10801a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof f)) {
            return super.addAll(collection);
        }
        f fVar = (f) collection;
        int i10 = fVar.f10637j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f10637j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f10636i;
        if (i12 > zArr.length) {
            this.f10636i = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(fVar.f10636i, 0, this.f10636i, this.f10637j, fVar.f10637j);
        this.f10637j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // m7.y.d
    public final y.d b(int i10) {
        if (i10 >= this.f10637j) {
            return new f(Arrays.copyOf(this.f10636i, i10), this.f10637j);
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
        if (!(obj instanceof f)) {
            return super.equals(obj);
        }
        f fVar = (f) obj;
        if (this.f10637j != fVar.f10637j) {
            return false;
        }
        boolean[] zArr = fVar.f10636i;
        for (int i10 = 0; i10 < this.f10637j; i10++) {
            if (this.f10636i[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        l(i10);
        return Boolean.valueOf(this.f10636i[i10]);
    }

    @Override // m7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i10 = 0; i10 < this.f10637j; i10++) {
            iA = (iA * 31) + y.a(this.f10636i[i10]);
        }
        return iA;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int i10 = this.f10637j;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f10636i[i11] == zBooleanValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void k(boolean z10) {
        h();
        int i10 = this.f10637j;
        boolean[] zArr = this.f10636i;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[ca.a.c(i10, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f10636i = zArr2;
        }
        boolean[] zArr3 = this.f10636i;
        int i11 = this.f10637j;
        this.f10637j = i11 + 1;
        zArr3[i11] = z10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f10637j) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    public final String m(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f10637j);
        return sbC.toString();
    }

    @Override // m7.c, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        boolean[] zArr = this.f10636i;
        boolean z10 = zArr[i10];
        int i11 = this.f10637j;
        if (i10 < i11 - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (i11 - i10) - 1);
        }
        this.f10637j--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i10, int i11) {
        h();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f10636i;
        System.arraycopy(zArr, i11, zArr, i10, this.f10637j - i11);
        this.f10637j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        l(i10);
        boolean[] zArr = this.f10636i;
        boolean z10 = zArr[i10];
        zArr[i10] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10637j;
    }

    public f(boolean[] zArr, int i10) {
        this.f10636i = zArr;
        this.f10637j = i10;
    }

    @Override // m7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Boolean) obj).booleanValue());
        return true;
    }
}
