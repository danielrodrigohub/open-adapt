package b7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: FloatArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class v extends c<Float> implements RandomAccess, z0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float[] f3545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3546j;

    static {
        new v(new float[0], 0).f3372h = false;
    }

    public v() {
        this(new float[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        float fFloatValue = ((Float) obj).floatValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f3546j)) {
            throw new IndexOutOfBoundsException(m(i10));
        }
        float[] fArr = this.f3545i;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
        } else {
            float[] fArr2 = new float[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.f3545i, i10, fArr2, i10 + 1, this.f3546j - i10);
            this.f3545i = fArr2;
        }
        this.f3545i[i10] = fFloatValue;
        this.f3546j++;
        ((AbstractList) this).modCount++;
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        h();
        Charset charset = z.f3564a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof v)) {
            return super.addAll(collection);
        }
        v vVar = (v) collection;
        int i10 = vVar.f3546j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f3546j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f3545i;
        if (i12 > fArr.length) {
            this.f3545i = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(vVar.f3545i, 0, this.f3545i, this.f3546j, vVar.f3546j);
        this.f3546j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // b7.z.c
    public final z.c b(int i10) {
        if (i10 >= this.f3546j) {
            return new v(Arrays.copyOf(this.f3545i, i10), this.f3546j);
        }
        throw new IllegalArgumentException();
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return super.equals(obj);
        }
        v vVar = (v) obj;
        if (this.f3546j != vVar.f3546j) {
            return false;
        }
        float[] fArr = vVar.f3545i;
        for (int i10 = 0; i10 < this.f3546j; i10++) {
            if (Float.floatToIntBits(this.f3545i[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        l(i10);
        return Float.valueOf(this.f3545i[i10]);
    }

    @Override // b7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.f3546j; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f3545i[i10]);
        }
        return iFloatToIntBits;
    }

    public final void k(float f10) {
        h();
        int i10 = this.f3546j;
        float[] fArr = this.f3545i;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[ca.a.c(i10, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f3545i = fArr2;
        }
        float[] fArr3 = this.f3545i;
        int i11 = this.f3546j;
        this.f3546j = i11 + 1;
        fArr3[i11] = f10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f3546j) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    public final String m(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f3546j);
        return sbC.toString();
    }

    @Override // b7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int i10 = 0; i10 < this.f3546j; i10++) {
            if (obj.equals(Float.valueOf(this.f3545i[i10]))) {
                float[] fArr = this.f3545i;
                System.arraycopy(fArr, i10 + 1, fArr, i10, (this.f3546j - i10) - 1);
                this.f3546j--;
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
        float[] fArr = this.f3545i;
        System.arraycopy(fArr, i11, fArr, i10, this.f3546j - i11);
        this.f3546j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        h();
        l(i10);
        float[] fArr = this.f3545i;
        float f10 = fArr[i10];
        fArr[i10] = fFloatValue;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3546j;
    }

    public v(float[] fArr, int i10) {
        this.f3545i = fArr;
        this.f3546j = i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        float[] fArr = this.f3545i;
        float f10 = fArr[i10];
        int i11 = this.f3546j;
        if (i10 < i11 - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (i11 - i10) - 1);
        }
        this.f3546j--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // b7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Float) obj).floatValue());
        return true;
    }
}
