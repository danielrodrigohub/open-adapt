package j0;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* JADX INFO: compiled from: WindowInsetsControllerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class p0 extends q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsetsController f9233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Window f9234b;

    public p0(Window window) {
        this.f9233a = window.getInsetsController();
        this.f9234b = window;
    }

    @Override // j0.q0
    public final void a(boolean z10) {
        if (z10) {
            Window window = this.f9234b;
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
            }
            this.f9233a.setSystemBarsAppearance(16, 16);
            return;
        }
        Window window2 = this.f9234b;
        if (window2 != null) {
            View decorView2 = window2.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
        }
        this.f9233a.setSystemBarsAppearance(0, 16);
    }

    @Override // j0.q0
    public final void b(boolean z10) {
        if (z10) {
            Window window = this.f9234b;
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(8192 | decorView.getSystemUiVisibility());
            }
            this.f9233a.setSystemBarsAppearance(8, 8);
            return;
        }
        Window window2 = this.f9234b;
        if (window2 != null) {
            View decorView2 = window2.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        this.f9233a.setSystemBarsAppearance(0, 8);
    }
}
