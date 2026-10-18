package g1;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi22.java */
/* JADX INFO: loaded from: classes.dex */
public class o extends n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f7558f = true;

    @SuppressLint({"NewApi"})
    public void f(View view, int i10, int i11, int i12, int i13) {
        if (f7558f) {
            try {
                view.setLeftTopRightBottom(i10, i11, i12, i13);
            } catch (NoSuchMethodError unused) {
                f7558f = false;
            }
        }
    }
}
