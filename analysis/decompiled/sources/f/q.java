package f;

import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: ResourcesFlusher.java */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Field f6889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f6890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f6891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f6892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Field f6893e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f6894f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Field f6895g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static boolean f6896h;

    /* JADX INFO: compiled from: ResourcesFlusher.java */
    public static class a {
        public static void a(LongSparseArray longSparseArray) {
            longSparseArray.clear();
        }
    }

    public static void a(Object obj) {
        if (!f6892d) {
            try {
                f6891c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e10) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e10);
            }
            f6892d = true;
        }
        Class<?> cls = f6891c;
        if (cls == null) {
            return;
        }
        if (!f6894f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f6893e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e11);
            }
            f6894f = true;
        }
        Field field = f6893e;
        if (field == null) {
            return;
        }
        LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e12) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e12);
        }
        if (longSparseArray != null) {
            a.a(longSparseArray);
        }
    }
}
