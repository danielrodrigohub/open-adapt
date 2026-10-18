package p;

import androidx.lifecycle.k0;

/* JADX INFO: compiled from: LongSparseArray.java */
/* JADX INFO: loaded from: classes.dex */
public final class d<E> implements Cloneable {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Object f12583l = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12584h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long[] f12585i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object[] f12586j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12587k;

    public d() {
        this(10);
    }

    public final void a() {
        int i10 = this.f12587k;
        Object[] objArr = this.f12586j;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f12587k = 0;
        this.f12584h = false;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.f12585i = (long[]) this.f12585i.clone();
            dVar.f12586j = (Object[]) this.f12586j.clone();
            return dVar;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public final void c() {
        int i10 = this.f12587k;
        long[] jArr = this.f12585i;
        Object[] objArr = this.f12586j;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f12583l) {
                if (i12 != i11) {
                    jArr[i11] = jArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        this.f12584h = false;
        this.f12587k = i11;
    }

    public final E d(long j10, E e10) {
        int iF = k0.f(this.f12585i, this.f12587k, j10);
        if (iF >= 0) {
            Object[] objArr = this.f12586j;
            if (objArr[iF] != f12583l) {
                return (E) objArr[iF];
            }
        }
        return e10;
    }

    public final long e(int i10) {
        if (this.f12584h) {
            c();
        }
        return this.f12585i[i10];
    }

    public final void f(long j10, E e10) {
        int iF = k0.f(this.f12585i, this.f12587k, j10);
        if (iF >= 0) {
            this.f12586j[iF] = e10;
            return;
        }
        int i10 = ~iF;
        int i11 = this.f12587k;
        if (i10 < i11) {
            Object[] objArr = this.f12586j;
            if (objArr[i10] == f12583l) {
                this.f12585i[i10] = j10;
                objArr[i10] = e10;
                return;
            }
        }
        if (this.f12584h && i11 >= this.f12585i.length) {
            c();
            i10 = ~k0.f(this.f12585i, this.f12587k, j10);
        }
        int i12 = this.f12587k;
        if (i12 >= this.f12585i.length) {
            int iJ = k0.j(i12 + 1);
            long[] jArr = new long[iJ];
            Object[] objArr2 = new Object[iJ];
            long[] jArr2 = this.f12585i;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f12586j;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f12585i = jArr;
            this.f12586j = objArr2;
        }
        int i13 = this.f12587k;
        if (i13 - i10 != 0) {
            long[] jArr3 = this.f12585i;
            int i14 = i10 + 1;
            System.arraycopy(jArr3, i10, jArr3, i14, i13 - i10);
            Object[] objArr4 = this.f12586j;
            System.arraycopy(objArr4, i10, objArr4, i14, this.f12587k - i10);
        }
        this.f12585i[i10] = j10;
        this.f12586j[i10] = e10;
        this.f12587k++;
    }

    public final int g() {
        if (this.f12584h) {
            c();
        }
        return this.f12587k;
    }

    public final E h(int i10) {
        if (this.f12584h) {
            c();
        }
        return (E) this.f12586j[i10];
    }

    public final String toString() {
        if (g() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f12587k * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f12587k; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(e(i10));
            sb2.append('=');
            E eH = h(i10);
            if (eH != this) {
                sb2.append(eH);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public d(int i10) {
        this.f12584h = false;
        if (i10 == 0) {
            this.f12585i = k0.f2217j;
            this.f12586j = k0.f2218k;
        } else {
            int iJ = k0.j(i10);
            this.f12585i = new long[iJ];
            this.f12586j = new Object[iJ];
        }
    }
}
