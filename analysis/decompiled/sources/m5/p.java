package m5;

import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.r0;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: Log.java */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f10428a = new Object();

    @Pure
    public static String a(String str, Throwable th) {
        boolean z10;
        String strReplace;
        synchronized (f10428a) {
            try {
                if (th == null) {
                    strReplace = null;
                } else {
                    Throwable cause = th;
                    while (true) {
                        if (cause == null) {
                            z10 = false;
                            break;
                        }
                        if (cause instanceof UnknownHostException) {
                            z10 = true;
                            break;
                        }
                        cause = cause.getCause();
                    }
                    strReplace = z10 ? "UnknownHostException (no network)" : Log.getStackTraceString(th).trim().replace("\t", "    ");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (TextUtils.isEmpty(strReplace)) {
            return str;
        }
        StringBuilder sbH = r0.h(str, "\n  ");
        sbH.append(strReplace.replace("\n", "\n  "));
        sbH.append('\n');
        return sbH.toString();
    }

    @Pure
    public static void b(String str, String str2) {
        synchronized (f10428a) {
            Log.d(str, str2);
        }
    }

    @Pure
    public static void c(String str, String str2) {
        synchronized (f10428a) {
            Log.e(str, str2);
        }
    }

    @Pure
    public static void d(String str, String str2, Throwable th) {
        c(str, a(str2, th));
    }

    @Pure
    public static void e(String str, String str2) {
        synchronized (f10428a) {
            Log.i(str, str2);
        }
    }

    @Pure
    public static void f(String str, Throwable th) {
        e("BundleUtil", a(str, th));
    }

    @Pure
    public static void g(String str, String str2) {
        synchronized (f10428a) {
            Log.w(str, str2);
        }
    }

    @Pure
    public static void h(String str, String str2, Throwable th) {
        g(str, a(str2, th));
    }
}
