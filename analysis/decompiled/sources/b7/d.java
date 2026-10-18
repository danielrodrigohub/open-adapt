package b7;

/* JADX INFO: compiled from: Android.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class<?> f3379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f3380b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f3379a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f3380b = cls2 != null;
    }

    public static boolean a() {
        return (f3379a == null || f3380b) ? false : true;
    }
}
