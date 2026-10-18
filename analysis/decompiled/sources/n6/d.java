package n6;

import com.google.android.material.snackbar.BaseTransientBottomBar;

/* JADX INFO: compiled from: BaseTransientBottomBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11995h;

    public d(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11995h = baseTransientBottomBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11995h.e();
    }
}
