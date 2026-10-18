package u6;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: CompactHashing.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static Object a(int i10) {
        if (i10 >= 2 && i10 <= 1073741824 && Integer.highestOneBit(i10) == i10) {
            if (i10 <= 256) {
                return new byte[i10];
            }
            return i10 <= 65536 ? new short[i10] : new int[i10];
        }
        StringBuilder sb2 = new StringBuilder(52);
        sb2.append("must be power of 2 between 2^1 and 2^30: ");
        sb2.append(i10);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int b(@CheckForNull Object obj, @CheckForNull Object obj2, int i10, Object obj3, int[] iArr, Object[] objArr, @CheckForNull Object[] objArr2) {
        int iB = s.b(obj);
        int i11 = iB & i10;
        int iC = c(obj3, i11);
        if (iC == 0) {
            return -1;
        }
        int i12 = ~i10;
        int i13 = iB & i12;
        int i14 = -1;
        while (true) {
            int i15 = iC - 1;
            int i16 = iArr[i15];
            if ((i16 & i12) == i13 && t6.f.a(obj, objArr[i15]) && (objArr2 == null || t6.f.a(obj2, objArr2[i15]))) {
                int i17 = i16 & i10;
                if (i14 == -1) {
                    d(obj3, i11, i17);
                } else {
                    iArr[i14] = (i17 & i10) | (iArr[i14] & i12);
                }
                return i15;
            }
            int i18 = i16 & i10;
            if (i18 == 0) {
                return -1;
            }
            i14 = i15;
            iC = i18;
        }
    }

    public static int c(Object obj, int i10) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i10] & 255;
        }
        return obj instanceof short[] ? ((short[]) obj)[i10] & 65535 : ((int[]) obj)[i10];
    }

    public static void d(Object obj, int i10, int i11) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i10] = (byte) i11;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i10] = (short) i11;
        } else {
            ((int[]) obj)[i10] = i11;
        }
    }
}
