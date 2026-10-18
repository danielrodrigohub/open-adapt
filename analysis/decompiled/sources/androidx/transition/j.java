package androidx.transition;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: ViewUtilsBase.java */
/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Field f2951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f2952b;

    public void a(View view, int i10) {
        if (!f2952b) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f2951a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtilsBase", "fetchViewFlagsField: ");
            }
            f2952b = true;
        }
        Field field = f2951a;
        if (field != null) {
            try {
                f2951a.setInt(view, i10 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }
}
