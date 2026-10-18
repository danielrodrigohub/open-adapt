package k2;

import android.util.Log;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: LogcatLogger.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set<String> f9625a = new HashSet();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
    public final void a(String str, Throwable th) {
        ?? r10 = f9625a;
        if (r10.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th);
        r10.add(str);
    }
}
