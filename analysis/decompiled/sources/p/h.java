package p;

import androidx.lifecycle.k0;

/* JADX INFO: compiled from: SparseArrayCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class h<E> implements Cloneable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f12615k = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f12616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object[] f12617i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12618j;

    public h() {
        int i10 = k0.i(10);
        this.f12616h = new int[i10];
        this.f12617i = new Object[i10];
    }

    public final void a(int i10, E e10) {
        int i11 = this.f12618j;
        if (i11 != 0 && i10 <= this.f12616h[i11 - 1]) {
            f(i10, e10);
            return;
        }
        if (i11 >= this.f12616h.length) {
            int i12 = k0.i(i11 + 1);
            int[] iArr = new int[i12];
            Object[] objArr = new Object[i12];
            int[] iArr2 = this.f12616h;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f12617i;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f12616h = iArr;
            this.f12617i = objArr;
        }
        this.f12616h[i11] = i10;
        this.f12617i[i11] = e10;
        this.f12618j = i11 + 1;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final h<E> clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.f12616h = (int[]) this.f12616h.clone();
            hVar.f12617i = (Object[]) this.f12617i.clone();
            return hVar;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public final E c(int i10, E e10) {
        int iE = k0.e(this.f12616h, this.f12618j, i10);
        if (iE >= 0) {
            Object[] objArr = this.f12617i;
            if (objArr[iE] != f12615k) {
                return (E) objArr[iE];
            }
        }
        return e10;
    }

    public final int d(E e10) {
        for (int i10 = 0; i10 < this.f12618j; i10++) {
            if (this.f12617i[i10] == e10) {
                return i10;
            }
        }
        return -1;
    }

    public final int e(int i10) {
        return this.f12616h[i10];
    }

    public final void f(int i10, E e10) {
        int iE = k0.e(this.f12616h, this.f12618j, i10);
        if (iE >= 0) {
            this.f12617i[iE] = e10;
            return;
        }
        int i11 = ~iE;
        int i12 = this.f12618j;
        if (i11 < i12) {
            Object[] objArr = this.f12617i;
            if (objArr[i11] == f12615k) {
                this.f12616h[i11] = i10;
                objArr[i11] = e10;
                return;
            }
        }
        if (i12 >= this.f12616h.length) {
            int i13 = k0.i(i12 + 1);
            int[] iArr = new int[i13];
            Object[] objArr2 = new Object[i13];
            int[] iArr2 = this.f12616h;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f12617i;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f12616h = iArr;
            this.f12617i = objArr2;
        }
        int i14 = this.f12618j - i11;
        if (i14 != 0) {
            int[] iArr3 = this.f12616h;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14);
            Object[] objArr4 = this.f12617i;
            System.arraycopy(objArr4, i11, objArr4, i15, this.f12618j - i11);
        }
        this.f12616h[i11] = i10;
        this.f12617i[i11] = e10;
        this.f12618j++;
    }

    public final int g() {
        return this.f12618j;
    }

    public final E h(int i10) {
        return (E) this.f12617i[i10];
    }

    public final String toString() {
        if (g() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f12618j * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f12618j; i10++) {
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
}
