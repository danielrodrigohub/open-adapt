package g1;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi21.java */
/* JADX INFO: loaded from: classes.dex */
public class n extends m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f7556d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f7557e = true;

    @SuppressLint({"NewApi"})
    public void d(View view, Matrix matrix) {
        if (f7556d) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f7556d = false;
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void e(View view, Matrix matrix) {
        if (f7557e) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f7557e = false;
            }
        }
    }
}
