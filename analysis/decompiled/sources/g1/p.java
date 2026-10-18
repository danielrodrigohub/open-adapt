package g1;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi23.java */
/* JADX INFO: loaded from: classes.dex */
public class p extends o {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f7559g = true;

    @Override // androidx.transition.j
    @SuppressLint({"NewApi"})
    public void a(View view, int i10) {
        if (Build.VERSION.SDK_INT == 28) {
            super.a(view, i10);
        } else if (f7559g) {
            try {
                view.setTransitionVisibility(i10);
            } catch (NoSuchMethodError unused) {
                f7559g = false;
            }
        }
    }
}
