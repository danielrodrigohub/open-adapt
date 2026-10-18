package w6;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
import t6.h;
import t6.n;

/* JADX INFO: compiled from: Ints.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends android.support.v4.media.a {
    public static int a(long j10) {
        int i10 = (int) j10;
        if (((long) i10) == j10) {
            return i10;
        }
        throw new IllegalArgumentException(n.a("Out of range: %s", Long.valueOf(j10)));
    }

    public static int b(int i10, int i11) {
        if (i11 <= 1073741823) {
            return Math.min(Math.max(i10, i11), 1073741823);
        }
        throw new IllegalArgumentException(n.a("min (%s) must be less than or equal to max (%s)", Integer.valueOf(i11), 1073741823));
    }

    public static int c(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static int[] d(Collection<? extends Number> collection) {
        if (collection instanceof C0302a) {
            C0302a c0302a = (C0302a) collection;
            return Arrays.copyOfRange(c0302a.f17230h, c0302a.f17231i, c0302a.f17232j);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = array[i10];
            Objects.requireNonNull(obj);
            iArr[i10] = ((Number) obj).intValue();
        }
        return iArr;
    }

    /* JADX INFO: renamed from: w6.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Ints.java */
    public static class C0302a extends AbstractList<Integer> implements RandomAccess, Serializable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f17230h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f17231i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f17232j;

        public C0302a(int[] iArr) {
            int length = iArr.length;
            this.f17230h = iArr;
            this.f17231i = 0;
            this.f17232j = length;
        }

        /* JADX WARN: Code duplicated, block: B:13:0x001e A[RETURN, SYNTHETIC] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(@CheckForNull Object obj) {
            if (obj instanceof Integer) {
                int[] iArr = this.f17230h;
                int iIntValue = ((Integer) obj).intValue();
                int i10 = this.f17231i;
                int i11 = this.f17232j;
                while (i10 < i11) {
                    if (iArr[i10] != iIntValue) {
                        i10++;
                    } else if (i10 != -1) {
                        return true;
                    }
                }
                i10 = -1;
                if (i10 != -1) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0302a)) {
                return super.equals(obj);
            }
            C0302a c0302a = (C0302a) obj;
            int i10 = this.f17232j - this.f17231i;
            if (c0302a.f17232j - c0302a.f17231i != i10) {
                return false;
            }
            for (int i11 = 0; i11 < i10; i11++) {
                if (this.f17230h[this.f17231i + i11] != c0302a.f17230h[c0302a.f17231i + i11]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i10) {
            h.c(i10, this.f17232j - this.f17231i);
            return Integer.valueOf(this.f17230h[this.f17231i + i10]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            int i10 = 1;
            for (int i11 = this.f17231i; i11 < this.f17232j; i11++) {
                i10 = (i10 * 31) + this.f17230h[i11];
            }
            return i10;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x001e  */
        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(@CheckForNull Object obj) {
            if (obj instanceof Integer) {
                int[] iArr = this.f17230h;
                int iIntValue = ((Integer) obj).intValue();
                int i10 = this.f17231i;
                int i11 = this.f17232j;
                while (i10 < i11) {
                    if (iArr[i10] != iIntValue) {
                        i10++;
                    } else if (i10 >= 0) {
                        return i10 - this.f17231i;
                    }
                }
                i10 = -1;
                if (i10 >= 0) {
                    return i10 - this.f17231i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x001f  */
        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(@CheckForNull Object obj) {
            if (obj instanceof Integer) {
                int[] iArr = this.f17230h;
                int iIntValue = ((Integer) obj).intValue();
                int i10 = this.f17231i;
                int i11 = this.f17232j - 1;
                while (i11 >= i10) {
                    if (iArr[i11] != iIntValue) {
                        i11--;
                    } else if (i11 >= 0) {
                        return i11 - this.f17231i;
                    }
                }
                i11 = -1;
                if (i11 >= 0) {
                    return i11 - this.f17231i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i10, Object obj) {
            Integer num = (Integer) obj;
            h.c(i10, this.f17232j - this.f17231i);
            int[] iArr = this.f17230h;
            int i11 = this.f17231i + i10;
            int i12 = iArr[i11];
            Objects.requireNonNull(num);
            iArr[i11] = num.intValue();
            return Integer.valueOf(i12);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f17232j - this.f17231i;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List<Integer> subList(int i10, int i11) {
            h.f(i10, i11, this.f17232j - this.f17231i);
            if (i10 == i11) {
                return Collections.emptyList();
            }
            int[] iArr = this.f17230h;
            int i12 = this.f17231i;
            return new C0302a(iArr, i10 + i12, i12 + i11);
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            StringBuilder sb2 = new StringBuilder((this.f17232j - this.f17231i) * 5);
            sb2.append('[');
            sb2.append(this.f17230h[this.f17231i]);
            int i10 = this.f17231i;
            while (true) {
                i10++;
                if (i10 >= this.f17232j) {
                    sb2.append(']');
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.f17230h[i10]);
            }
        }

        public C0302a(int[] iArr, int i10, int i11) {
            this.f17230h = iArr;
            this.f17231i = i10;
            this.f17232j = i11;
        }
    }
}
