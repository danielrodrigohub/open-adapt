package g6;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: compiled from: ViewUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ View f7775h;

    public p(View view) {
        this.f7775h = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((InputMethodManager) this.f7775h.getContext().getSystemService("input_method")).showSoftInput(this.f7775h, 1);
    }
}
