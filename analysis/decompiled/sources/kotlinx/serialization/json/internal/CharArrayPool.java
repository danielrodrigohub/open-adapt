package kotlinx.serialization.json.internal;

import d3.e;
import gd.f;
import p4.h;
import yd.n;

/* JADX INFO: compiled from: CharArrayPool.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CharArrayPool {
    private static final int MAX_CHARS_IN_POOL;
    private static int charsTotal;
    public static final CharArrayPool INSTANCE = new CharArrayPool();
    private static final f<char[]> arrays = new f<>();

    static {
        Object objG;
        try {
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            h.i(property, "getProperty(\"kotlinx.serialization.json.pool.size\")");
            objG = n.W(property);
        } catch (Throwable th) {
            objG = e.g(th);
        }
        if (objG instanceof fd.f.a) {
            objG = null;
        }
        Integer num = (Integer) objG;
        MAX_CHARS_IN_POOL = num == null ? 1048576 : num.intValue();
    }

    private CharArrayPool() {
    }

    public final void release(char[] cArr) {
        h.j(cArr, "array");
        synchronized (this) {
            int i10 = charsTotal;
            if (cArr.length + i10 < MAX_CHARS_IN_POOL) {
                charsTotal = i10 + cArr.length;
                arrays.n(cArr);
            }
        }
    }

    public final char[] take() {
        char[] cArr;
        synchronized (this) {
            f<char[]> fVar = arrays;
            cArr = null;
            char[] cArrV = fVar.isEmpty() ? null : fVar.v();
            if (cArrV != null) {
                charsTotal -= cArrV.length;
                cArr = cArrV;
            }
        }
        return cArr == null ? new char[128] : cArr;
    }
}
