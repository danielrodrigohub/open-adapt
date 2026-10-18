package k2;

import java.util.Objects;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f9626a = new b();

    public static void a() {
        Objects.requireNonNull(f9626a);
    }

    public static void b(String str) {
        f9626a.a(str, null);
    }

    public static void c(String str, Throwable th) {
        f9626a.a(str, th);
    }
}
