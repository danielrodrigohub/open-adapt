package gd;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: _Arrays.kt */
/* JADX INFO: loaded from: classes.dex */
public class i extends g {
    public static final <T> List<T> p(T[] tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            if (t10 != null) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public static final <T> T q(T[] tArr) {
        if (tArr.length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        return tArr[0];
    }

    public static final int r(float[] fArr) {
        p4.h.j(fArr, "<this>");
        return fArr.length - 1;
    }

    public static final <T> int s(T[] tArr) {
        p4.h.j(tArr, "<this>");
        return tArr.length - 1;
    }

    public static final <T> int t(T[] tArr, T t10) {
        p4.h.j(tArr, "<this>");
        int i10 = 0;
        if (t10 == null) {
            int length = tArr.length;
            while (i10 < length) {
                if (tArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i10 < length2) {
            if (p4.h.c(t10, tArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final char u(char[] cArr) {
        p4.h.j(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static final <T> List<T> v(T[] tArr) {
        p4.h.j(tArr, "<this>");
        int length = tArr.length;
        if (length != 0) {
            return length != 1 ? w(tArr) : androidx.lifecycle.o.y(tArr[0]);
        }
        return p.f8070h;
    }

    public static final <T> List<T> w(T[] tArr) {
        p4.h.j(tArr, "<this>");
        return new ArrayList(new e(tArr, false));
    }
}
