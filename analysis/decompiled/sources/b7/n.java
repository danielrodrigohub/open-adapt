package b7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: DoubleArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends c<Double> implements RandomAccess, z0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public double[] f3458i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3459j;

    static {
        new n(new double[0], 0).f3372h = false;
    }

    public n() {
        this(new double[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f3459j)) {
            throw new IndexOutOfBoundsException(m(i10));
        }
        double[] dArr = this.f3458i;
        if (i11 < dArr.length) {
            System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
        } else {
            double[] dArr2 = new double[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            System.arraycopy(this.f3458i, i10, dArr2, i10 + 1, this.f3459j - i10);
            this.f3458i = dArr2;
        }
        this.f3458i[i10] = dDoubleValue;
        this.f3459j++;
        ((AbstractList) this).modCount++;
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        h();
        Charset charset = z.f3564a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof n)) {
            return super.addAll(collection);
        }
        n nVar = (n) collection;
        int i10 = nVar.f3459j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f3459j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f3458i;
        if (i12 > dArr.length) {
            this.f3458i = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(nVar.f3458i, 0, this.f3458i, this.f3459j, nVar.f3459j);
        this.f3459j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // b7.z.c
    public final z.c b(int i10) {
        if (i10 >= this.f3459j) {
            return new n(Arrays.copyOf(this.f3458i, i10), this.f3459j);
        }
        throw new IllegalArgumentException();
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return super.equals(obj);
        }
        n nVar = (n) obj;
        if (this.f3459j != nVar.f3459j) {
            return false;
        }
        double[] dArr = nVar.f3458i;
        for (int i10 = 0; i10 < this.f3459j; i10++) {
            if (Double.doubleToLongBits(this.f3458i[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        l(i10);
        return Double.valueOf(this.f3458i[i10]);
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i10 = 0; i10 < this.f3459j; i10++) {
            iB = (iB * 31) + z.b(Double.doubleToLongBits(this.f3458i[i10]));
        }
        return iB;
    }

    public final void k(double d10) {
        h();
        int i10 = this.f3459j;
        double[] dArr = this.f3458i;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[ca.a.c(i10, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f3458i = dArr2;
        }
        double[] dArr3 = this.f3458i;
        int i11 = this.f3459j;
        this.f3459j = i11 + 1;
        dArr3[i11] = d10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f3459j) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    public final String m(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f3459j);
        return sbC.toString();
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int i10 = 0; i10 < this.f3459j; i10++) {
            if (obj.equals(Double.valueOf(this.f3458i[i10]))) {
                double[] dArr = this.f3458i;
                System.arraycopy(dArr, i10 + 1, dArr, i10, (this.f3459j - i10) - 1);
                this.f3459j--;
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
        double[] dArr = this.f3458i;
        System.arraycopy(dArr, i11, dArr, i10, this.f3459j - i11);
        this.f3459j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        l(i10);
        double[] dArr = this.f3458i;
        double d10 = dArr[i10];
        dArr[i10] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3459j;
    }

    public n(double[] dArr, int i10) {
        this.f3458i = dArr;
        this.f3459j = i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        double[] dArr = this.f3458i;
        double d10 = dArr[i10];
        int i11 = this.f3459j;
        if (i10 < i11 - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (i11 - i10) - 1);
        }
        this.f3459j--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // b7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Double) obj).doubleValue());
        return true;
    }
}
