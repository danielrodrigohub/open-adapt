package b7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: BooleanArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends c<Boolean> implements RandomAccess, z0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean[] f3388i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3389j;

    static {
        new f(new boolean[0], 0).f3372h = false;
    }

    public f() {
        this(new boolean[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f3389j)) {
            throw new IndexOutOfBoundsException(m(i10));
        }
        boolean[] zArr = this.f3388i;
        if (i11 < zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
        } else {
            boolean[] zArr2 = new boolean[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            System.arraycopy(this.f3388i, i10, zArr2, i10 + 1, this.f3389j - i10);
            this.f3388i = zArr2;
        }
        this.f3388i[i10] = zBooleanValue;
        this.f3389j++;
        ((AbstractList) this).modCount++;
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        h();
        Charset charset = z.f3564a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof f)) {
            return super.addAll(collection);
        }
        f fVar = (f) collection;
        int i10 = fVar.f3389j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f3389j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f3388i;
        if (i12 > zArr.length) {
            this.f3388i = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(fVar.f3388i, 0, this.f3388i, this.f3389j, fVar.f3389j);
        this.f3389j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // b7.z.c
    public final z.c b(int i10) {
        if (i10 >= this.f3389j) {
            return new f(Arrays.copyOf(this.f3388i, i10), this.f3389j);
        }
        throw new IllegalArgumentException();
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return super.equals(obj);
        }
        f fVar = (f) obj;
        if (this.f3389j != fVar.f3389j) {
            return false;
        }
        boolean[] zArr = fVar.f3388i;
        for (int i10 = 0; i10 < this.f3389j; i10++) {
            if (this.f3388i[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        l(i10);
        return Boolean.valueOf(this.f3388i[i10]);
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i10 = 0; i10 < this.f3389j; i10++) {
            iA = (iA * 31) + z.a(this.f3388i[i10]);
        }
        return iA;
    }

    public final void k(boolean z10) {
        h();
        int i10 = this.f3389j;
        boolean[] zArr = this.f3388i;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[ca.a.c(i10, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f3388i = zArr2;
        }
        boolean[] zArr3 = this.f3388i;
        int i11 = this.f3389j;
        this.f3389j = i11 + 1;
        zArr3[i11] = z10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f3389j) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    public final String m(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f3389j);
        return sbC.toString();
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int i10 = 0; i10 < this.f3389j; i10++) {
            if (obj.equals(Boolean.valueOf(this.f3388i[i10]))) {
                boolean[] zArr = this.f3388i;
                System.arraycopy(zArr, i10 + 1, zArr, i10, (this.f3389j - i10) - 1);
                this.f3389j--;
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
        boolean[] zArr = this.f3388i;
        System.arraycopy(zArr, i11, zArr, i10, this.f3389j - i11);
        this.f3389j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        l(i10);
        boolean[] zArr = this.f3388i;
        boolean z10 = zArr[i10];
        zArr[i10] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3389j;
    }

    public f(boolean[] zArr, int i10) {
        this.f3388i = zArr;
        this.f3389j = i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        boolean[] zArr = this.f3388i;
        boolean z10 = zArr[i10];
        int i11 = this.f3389j;
        if (i10 < i11 - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (i11 - i10) - 1);
        }
        this.f3389j--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // b7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Boolean) obj).booleanValue());
        return true;
    }
}
