package p;

import androidx.lifecycle.k0;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: compiled from: SimpleArrayMap.java */
/* JADX INFO: loaded from: classes.dex */
public class g<K, V> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Object[] f12608k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f12609l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static Object[] f12610m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f12611n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f12612h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object[] f12613i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12614j;

    public g() {
        this.f12612h = k0.f2216i;
        this.f12613i = k0.f2218k;
        this.f12614j = 0;
    }

    private void a(int i10) {
        if (i10 == 8) {
            synchronized (g.class) {
                Object[] objArr = f12610m;
                if (objArr != null) {
                    this.f12613i = objArr;
                    f12610m = (Object[]) objArr[0];
                    this.f12612h = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f12611n--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (g.class) {
                Object[] objArr2 = f12608k;
                if (objArr2 != null) {
                    this.f12613i = objArr2;
                    f12608k = (Object[]) objArr2[0];
                    this.f12612h = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f12609l--;
                    return;
                }
            }
        }
        this.f12612h = new int[i10];
        this.f12613i = new Object[i10 << 1];
    }

    public static void c(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (g.class) {
                if (f12611n < 10) {
                    objArr[0] = f12610m;
                    objArr[1] = iArr;
                    for (int i11 = (i10 << 1) - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    f12610m = objArr;
                    f12611n++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (g.class) {
                if (f12609l < 10) {
                    objArr[0] = f12608k;
                    objArr[1] = iArr;
                    for (int i12 = (i10 << 1) - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f12608k = objArr;
                    f12609l++;
                }
            }
        }
    }

    public final void b(int i10) {
        int i11 = this.f12614j;
        int[] iArr = this.f12612h;
        if (iArr.length < i10) {
            Object[] objArr = this.f12613i;
            a(i10);
            if (this.f12614j > 0) {
                System.arraycopy(iArr, 0, this.f12612h, 0, i11);
                System.arraycopy(objArr, 0, this.f12613i, 0, i11 << 1);
            }
            c(iArr, objArr, i11);
        }
        if (this.f12614j != i11) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i10 = this.f12614j;
        if (i10 > 0) {
            int[] iArr = this.f12612h;
            Object[] objArr = this.f12613i;
            this.f12612h = k0.f2216i;
            this.f12613i = k0.f2218k;
            this.f12614j = 0;
            c(iArr, objArr, i10);
        }
        if (this.f12614j > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(Object obj) {
        return e(obj) >= 0;
    }

    public final boolean containsValue(Object obj) {
        return g(obj) >= 0;
    }

    final int d(Object obj, int i10) {
        int i11 = this.f12614j;
        if (i11 == 0) {
            return -1;
        }
        try {
            int iE = k0.e(this.f12612h, i11, i10);
            if (iE < 0 || obj.equals(this.f12613i[iE << 1])) {
                return iE;
            }
            int i12 = iE + 1;
            while (i12 < i11 && this.f12612h[i12] == i10) {
                if (obj.equals(this.f12613i[i12 << 1])) {
                    return i12;
                }
                i12++;
            }
            for (int i13 = iE - 1; i13 >= 0 && this.f12612h[i13] == i10; i13--) {
                if (obj.equals(this.f12613i[i13 << 1])) {
                    return i13;
                }
            }
            return ~i12;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final int e(Object obj) {
        return obj == null ? f() : d(obj, obj.hashCode());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (this.f12614j != gVar.f12614j) {
                return false;
            }
            for (int i10 = 0; i10 < this.f12614j; i10++) {
                try {
                    K kI = i(i10);
                    V vM = m(i10);
                    Object orDefault = gVar.getOrDefault(kI, null);
                    if (vM == null) {
                        if (orDefault != null || !gVar.containsKey(kI)) {
                            return false;
                        }
                    } else if (!vM.equals(orDefault)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f12614j != map.size()) {
                return false;
            }
            for (int i11 = 0; i11 < this.f12614j; i11++) {
                try {
                    K kI2 = i(i11);
                    V vM2 = m(i11);
                    Object obj2 = map.get(kI2);
                    if (vM2 == null) {
                        if (obj2 != null || !map.containsKey(kI2)) {
                            return false;
                        }
                    } else if (!vM2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        int i10 = this.f12614j;
        if (i10 == 0) {
            return -1;
        }
        try {
            int iE = k0.e(this.f12612h, i10, 0);
            if (iE < 0 || this.f12613i[iE << 1] == null) {
                return iE;
            }
            int i11 = iE + 1;
            while (i11 < i10 && this.f12612h[i11] == 0) {
                if (this.f12613i[i11 << 1] == null) {
                    return i11;
                }
                i11++;
            }
            for (int i12 = iE - 1; i12 >= 0 && this.f12612h[i12] == 0; i12--) {
                if (this.f12613i[i12 << 1] == null) {
                    return i12;
                }
            }
            return ~i11;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final int g(Object obj) {
        int i10 = this.f12614j * 2;
        Object[] objArr = this.f12613i;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (obj.equals(objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public final V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public final V getOrDefault(Object obj, V v10) {
        int iE = e(obj);
        return iE >= 0 ? (V) this.f12613i[(iE << 1) + 1] : v10;
    }

    public int hashCode() {
        int[] iArr = this.f12612h;
        Object[] objArr = this.f12613i;
        int i10 = this.f12614j;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    public final K i(int i10) {
        return (K) this.f12613i[i10 << 1];
    }

    public final boolean isEmpty() {
        return this.f12614j <= 0;
    }

    public void j(g<? extends K, ? extends V> gVar) {
        int i10 = gVar.f12614j;
        b(this.f12614j + i10);
        if (this.f12614j != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                put(gVar.i(i11), gVar.m(i11));
            }
        } else if (i10 > 0) {
            System.arraycopy(gVar.f12612h, 0, this.f12612h, 0, i10);
            System.arraycopy(gVar.f12613i, 0, this.f12613i, 0, i10 << 1);
            this.f12614j = i10;
        }
    }

    public V k(int i10) {
        Object[] objArr = this.f12613i;
        int i11 = i10 << 1;
        V v10 = (V) objArr[i11 + 1];
        int i12 = this.f12614j;
        int i13 = 0;
        if (i12 <= 1) {
            c(this.f12612h, objArr, i12);
            this.f12612h = k0.f2216i;
            this.f12613i = k0.f2218k;
        } else {
            int i14 = i12 - 1;
            int[] iArr = this.f12612h;
            if (iArr.length <= 8 || i12 >= iArr.length / 3) {
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    int i16 = i14 - i10;
                    System.arraycopy(iArr, i15, iArr, i10, i16);
                    Object[] objArr2 = this.f12613i;
                    System.arraycopy(objArr2, i15 << 1, objArr2, i11, i16 << 1);
                }
                Object[] objArr3 = this.f12613i;
                int i17 = i14 << 1;
                objArr3[i17] = null;
                objArr3[i17 + 1] = null;
            } else {
                a(i12 > 8 ? i12 + (i12 >> 1) : 8);
                if (i12 != this.f12614j) {
                    throw new ConcurrentModificationException();
                }
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f12612h, 0, i10);
                    System.arraycopy(objArr, 0, this.f12613i, 0, i11);
                }
                if (i10 < i14) {
                    int i18 = i10 + 1;
                    int i19 = i14 - i10;
                    System.arraycopy(iArr, i18, this.f12612h, i10, i19);
                    System.arraycopy(objArr, i18 << 1, this.f12613i, i11, i19 << 1);
                }
            }
            i13 = i14;
        }
        if (i12 != this.f12614j) {
            throw new ConcurrentModificationException();
        }
        this.f12614j = i13;
        return v10;
    }

    public V l(int i10, V v10) {
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.f12613i;
        V v11 = (V) objArr[i11];
        objArr[i11] = v10;
        return v11;
    }

    public final V m(int i10) {
        return (V) this.f12613i[(i10 << 1) + 1];
    }

    public V put(K k10, V v10) {
        int i10;
        int iD;
        int i11 = this.f12614j;
        if (k10 == null) {
            iD = f();
            i10 = 0;
        } else {
            int iHashCode = k10.hashCode();
            i10 = iHashCode;
            iD = d(k10, iHashCode);
        }
        if (iD >= 0) {
            int i12 = (iD << 1) + 1;
            Object[] objArr = this.f12613i;
            V v11 = (V) objArr[i12];
            objArr[i12] = v10;
            return v11;
        }
        int i13 = ~iD;
        int[] iArr = this.f12612h;
        if (i11 >= iArr.length) {
            int i14 = 4;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 >= 4) {
                i14 = 8;
            }
            Object[] objArr2 = this.f12613i;
            a(i14);
            if (i11 != this.f12614j) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f12612h;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f12613i, 0, objArr2.length);
            }
            c(iArr, objArr2, i11);
        }
        if (i13 < i11) {
            int[] iArr3 = this.f12612h;
            int i15 = i13 + 1;
            System.arraycopy(iArr3, i13, iArr3, i15, i11 - i13);
            Object[] objArr3 = this.f12613i;
            System.arraycopy(objArr3, i13 << 1, objArr3, i15 << 1, (this.f12614j - i13) << 1);
        }
        int i16 = this.f12614j;
        if (i11 == i16) {
            int[] iArr4 = this.f12612h;
            if (i13 < iArr4.length) {
                iArr4[i13] = i10;
                Object[] objArr4 = this.f12613i;
                int i17 = i13 << 1;
                objArr4[i17] = k10;
                objArr4[i17 + 1] = v10;
                this.f12614j = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final V putIfAbsent(K k10, V v10) {
        V orDefault = getOrDefault(k10, null);
        return orDefault == null ? put(k10, v10) : orDefault;
    }

    public final V remove(Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return k(iE);
        }
        return null;
    }

    public final V replace(K k10, V v10) {
        int iE = e(k10);
        if (iE >= 0) {
            return l(iE, v10);
        }
        return null;
    }

    public final int size() {
        return this.f12614j;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f12614j * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f12614j; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            K kI = i(i10);
            if (kI != this) {
                sb2.append(kI);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            V vM = m(i10);
            if (vM != this) {
                sb2.append(vM);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public final boolean remove(Object obj, Object obj2) {
        int iE = e(obj);
        if (iE < 0) {
            return false;
        }
        V vM = m(iE);
        if (obj2 != vM && (obj2 == null || !obj2.equals(vM))) {
            return false;
        }
        k(iE);
        return true;
    }

    public final boolean replace(K k10, V v10, V v11) {
        int iE = e(k10);
        if (iE < 0) {
            return false;
        }
        V vM = m(iE);
        if (vM != v10 && (v10 == null || !v10.equals(vM))) {
            return false;
        }
        l(iE, v11);
        return true;
    }

    public g(int i10) {
        if (i10 == 0) {
            this.f12612h = k0.f2216i;
            this.f12613i = k0.f2218k;
        } else {
            a(i10);
        }
        this.f12614j = 0;
    }
}
