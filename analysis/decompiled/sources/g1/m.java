package g1;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi19.java */
/* JADX INFO: loaded from: classes.dex */
public class m extends androidx.transition.j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f7555c = true;

    @SuppressLint({"NewApi"})
    public float b(View view) {
        if (f7555c) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f7555c = false;
            }
        }
        return view.getAlpha();
    }

    @SuppressLint({"NewApi"})
    public void c(View view, float f10) {
        if (f7555c) {
            try {
                view.setTransitionAlpha(f10);
                return;
            } catch (NoSuchMethodError unused) {
                f7555c = false;
            }
        }
        view.setAlpha(f10);
    }
}
