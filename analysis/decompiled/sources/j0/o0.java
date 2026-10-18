package j0;

import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class o0 extends n0 {
    public o0(Window window, View view) {
        super(window, view);
    }

    @Override // j0.q0
    public final void a(boolean z10) {
        if (!z10) {
            View decorView = this.f9230a.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-17));
        } else {
            this.f9230a.clearFlags(134217728);
            this.f9230a.addFlags(Integer.MIN_VALUE);
            View decorView2 = this.f9230a.getDecorView();
            decorView2.setSystemUiVisibility(16 | decorView2.getSystemUiVisibility());
        }
    }
}
