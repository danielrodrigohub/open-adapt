package kotlinx.coroutines;

import d3.e;
import fd.f;
import jd.d;
import kotlinx.coroutines.internal.DispatchedContinuation;

/* JADX INFO: compiled from: DebugStrings.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DebugStringsKt {
    public static final String getClassSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String getHexAddress(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String toDebugString(d<?> dVar) {
        Object objG;
        if (dVar instanceof DispatchedContinuation) {
            return dVar.toString();
        }
        try {
            objG = dVar + '@' + getHexAddress(dVar);
        } catch (Throwable th) {
            objG = e.g(th);
        }
        if (f.a(objG) != null) {
            objG = dVar.getClass().getName() + '@' + getHexAddress(dVar);
        }
        return (String) objG;
    }
}
