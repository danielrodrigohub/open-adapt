package gd;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: _ArraysJvm.kt */
/* JADX INFO: loaded from: classes.dex */
public class g extends i0.b {
    public static final <T> List<T> i(T[] tArr) {
        p4.h.j(tArr, "<this>");
        List<T> listAsList = Arrays.asList(tArr);
        p4.h.i(listAsList, "asList(this)");
        return listAsList;
    }

    public static final byte[] j(byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        p4.h.j(bArr, "<this>");
        p4.h.j(bArr2, "destination");
        System.arraycopy(bArr, i11, bArr2, i10, i12 - i11);
        return bArr2;
    }

    public static final <T> T[] k(T[] tArr, T[] tArr2, int i10, int i11, int i12) {
        p4.h.j(tArr, "<this>");
        p4.h.j(tArr2, "destination");
        System.arraycopy(tArr, i11, tArr2, i10, i12 - i11);
        return tArr2;
    }

    public static /* synthetic */ Object[] l(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        k(objArr, objArr2, i10, i11, i12);
        return objArr2;
    }

    public static final byte[] m(byte[] bArr, int i10, int i11) {
        p4.h.j(bArr, "<this>");
        i0.b.f(i11, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i10, i11);
        p4.h.i(bArrCopyOfRange, "copyOfRange(this, fromIndex, toIndex)");
        return bArrCopyOfRange;
    }

    public static final void n(Object[] objArr, int i10, int i11) {
        p4.h.j(objArr, "<this>");
        Arrays.fill(objArr, i10, i11, (Object) null);
    }

    public static final byte[] o(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int length2 = bArr2.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, length + length2);
        System.arraycopy(bArr2, 0, bArrCopyOf, length, length2);
        p4.h.i(bArrCopyOf, "result");
        return bArrCopyOf;
    }
}
