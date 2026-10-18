package m7;

/* JADX INFO: compiled from: Android.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class<?> f10625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f10626b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f10625a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f10626b = cls2 != null;
    }

    public static boolean a() {
        return (f10625a == null || f10626b) ? false : true;
    }
}
