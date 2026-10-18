package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ k0 f1919h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ View f1920i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Rect f1921j;

    public i(k0 k0Var, View view, Rect rect) {
        this.f1919h = k0Var;
        this.f1920i = view;
        this.f1921j = rect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1919h.g(this.f1920i, this.f1921j);
    }
}
