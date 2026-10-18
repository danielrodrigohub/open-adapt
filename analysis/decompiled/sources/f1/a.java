package f1;

import android.annotation.SuppressLint;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: Trace.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f6960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f6961b;

    @SuppressLint({"NewApi"})
    public static boolean a() {
        try {
            if (f6961b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (f6961b == null) {
                f6960a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f6961b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f6961b.invoke(null, Long.valueOf(f6960a))).booleanValue();
        } catch (Exception e10) {
            if (!(e10 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e10);
                return false;
            }
            Throwable cause = e10.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }
}
