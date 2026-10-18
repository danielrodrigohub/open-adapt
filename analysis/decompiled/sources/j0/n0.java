package j0;

import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class n0 extends m0 {
    public n0(Window window, View view) {
        super(window);
    }

    @Override // j0.q0
    public final void b(boolean z10) {
        if (!z10) {
            View decorView = this.f9230a.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8193));
        } else {
            this.f9230a.clearFlags(67108864);
            this.f9230a.addFlags(Integer.MIN_VALUE);
            View decorView2 = this.f9230a.getDecorView();
            decorView2.setSystemUiVisibility(8192 | decorView2.getSystemUiVisibility());
        }
    }
}
