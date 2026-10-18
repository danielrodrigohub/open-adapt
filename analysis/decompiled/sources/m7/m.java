package m7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: DoubleArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class m extends c<Double> implements RandomAccess, y0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public double[] f10698i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10699j;

    static {
        new m(new double[0], 0).f10622h = false;
    }

    public m() {
        this(new double[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f10699j)) {
            throw new IndexOutOfBoundsException(m(i10));
        }
        double[] dArr = this.f10698i;
        if (i11 < dArr.length) {
            System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
        } else {
            double[] dArr2 = new double[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            System.arraycopy(this.f10698i, i10, dArr2, i10 + 1, this.f10699j - i10);
            this.f10698i = dArr2;
        }
        this.f10698i[i10] = dDoubleValue;
        this.f10699j++;
        ((AbstractList) this).modCount++;
    }

    @Override // m7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        h();
        Charset charset = y.f10801a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof m)) {
            return super.addAll(collection);
        }
        m mVar = (m) collection;
        int i10 = mVar.f10699j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f10699j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f10698i;
        if (i12 > dArr.length) {
            this.f10698i = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(mVar.f10698i, 0, this.f10698i, this.f10699j, mVar.f10699j);
        this.f10699j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // m7.y.d
    public final y.d b(int i10) {
        if (i10 >= this.f10699j) {
            return new m(Arrays.copyOf(this.f10698i, i10), this.f10699j);
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
        if (!(obj instanceof m)) {
            return super.equals(obj);
        }
        m mVar = (m) obj;
        if (this.f10699j != mVar.f10699j) {
            return false;
        }
        double[] dArr = mVar.f10698i;
        for (int i10 = 0; i10 < this.f10699j; i10++) {
            if (Double.doubleToLongBits(this.f10698i[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        l(i10);
        return Double.valueOf(this.f10698i[i10]);
    }

    @Override // m7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i10 = 0; i10 < this.f10699j; i10++) {
            iB = (iB * 31) + y.b(Double.doubleToLongBits(this.f10698i[i10]));
        }
        return iB;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int i10 = this.f10699j;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f10698i[i11] == dDoubleValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void k(double d10) {
        h();
        int i10 = this.f10699j;
        double[] dArr = this.f10698i;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[ca.a.c(i10, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f10698i = dArr2;
        }
        double[] dArr3 = this.f10698i;
        int i11 = this.f10699j;
        this.f10699j = i11 + 1;
        dArr3[i11] = d10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f10699j) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    public final String m(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f10699j);
        return sbC.toString();
    }

    @Override // m7.c, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        double[] dArr = this.f10698i;
        double d10 = dArr[i10];
        int i11 = this.f10699j;
        if (i10 < i11 - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (i11 - i10) - 1);
        }
        this.f10699j--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i10, int i11) {
        h();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f10698i;
        System.arraycopy(dArr, i11, dArr, i10, this.f10699j - i11);
        this.f10699j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        l(i10);
        double[] dArr = this.f10698i;
        double d10 = dArr[i10];
        dArr[i10] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10699j;
    }

    public m(double[] dArr, int i10) {
        this.f10698i = dArr;
        this.f10699j = i10;
    }

    @Override // m7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Double) obj).doubleValue());
        return true;
    }
}
