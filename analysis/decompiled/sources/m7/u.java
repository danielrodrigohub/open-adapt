package m7;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: FloatArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public final class u extends c<Float> implements RandomAccess, y0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float[] f10781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10782j;

    static {
        new u(new float[0], 0).f10622h = false;
    }

    public u() {
        this(new float[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        float fFloatValue = ((Float) obj).floatValue();
        h();
        if (i10 < 0 || i10 > (i11 = this.f10782j)) {
            throw new IndexOutOfBoundsException(m(i10));
        }
        float[] fArr = this.f10781i;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
        } else {
            float[] fArr2 = new float[ca.a.c(i11, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.f10781i, i10, fArr2, i10 + 1, this.f10782j - i10);
            this.f10781i = fArr2;
        }
        this.f10781i[i10] = fFloatValue;
        this.f10782j++;
        ((AbstractList) this).modCount++;
    }

    @Override // m7.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        h();
        Charset charset = y.f10801a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof u)) {
            return super.addAll(collection);
        }
        u uVar = (u) collection;
        int i10 = uVar.f10782j;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f10782j;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f10781i;
        if (i12 > fArr.length) {
            this.f10781i = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(uVar.f10781i, 0, this.f10781i, this.f10782j, uVar.f10782j);
        this.f10782j = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // m7.y.d
    public final y.d b(int i10) {
        if (i10 >= this.f10782j) {
            return new u(Arrays.copyOf(this.f10781i, i10), this.f10782j);
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
        if (!(obj instanceof u)) {
            return super.equals(obj);
        }
        u uVar = (u) obj;
        if (this.f10782j != uVar.f10782j) {
            return false;
        }
        float[] fArr = uVar.f10781i;
        for (int i10 = 0; i10 < this.f10782j; i10++) {
            if (Float.floatToIntBits(this.f10781i[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        l(i10);
        return Float.valueOf(this.f10781i[i10]);
    }

    @Override // m7.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.f10782j; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f10781i[i10]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i10 = this.f10782j;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f10781i[i11] == fFloatValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void k(float f10) {
        h();
        int i10 = this.f10782j;
        float[] fArr = this.f10781i;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[ca.a.c(i10, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f10781i = fArr2;
        }
        float[] fArr3 = this.f10781i;
        int i11 = this.f10782j;
        this.f10782j = i11 + 1;
        fArr3[i11] = f10;
    }

    public final void l(int i10) {
        if (i10 < 0 || i10 >= this.f10782j) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    public final String m(int i10) {
        StringBuilder sbC = androidx.appcompat.widget.y0.c("Index:", i10, ", Size:");
        sbC.append(this.f10782j);
        return sbC.toString();
    }

    @Override // m7.c, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        h();
        l(i10);
        float[] fArr = this.f10781i;
        float f10 = fArr[i10];
        int i11 = this.f10782j;
        if (i10 < i11 - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (i11 - i10) - 1);
        }
        this.f10782j--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i10, int i11) {
        h();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f10781i;
        System.arraycopy(fArr, i11, fArr, i10, this.f10782j - i11);
        this.f10782j -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        h();
        l(i10);
        float[] fArr = this.f10781i;
        float f10 = fArr[i10];
        fArr[i10] = fFloatValue;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10782j;
    }

    public u(float[] fArr, int i10) {
        this.f10781i = fArr;
        this.f10782j = i10;
    }

    @Override // m7.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        k(((Float) obj).floatValue());
        return true;
    }
}
