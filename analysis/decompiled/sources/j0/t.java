package j0;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;

/* JADX INFO: compiled from: OneShotPreDrawListener.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f9235h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ViewTreeObserver f9236i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Runnable f9237j;

    public t(View view, Runnable runnable) {
        this.f9235h = view;
        this.f9236i = view.getViewTreeObserver();
        this.f9237j = runnable;
    }

    public static t a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        Objects.requireNonNull(runnable, "runnable == null");
        t tVar = new t(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(tVar);
        view.addOnAttachStateChangeListener(tVar);
        return tVar;
    }

    public final void b() {
        if (this.f9236i.isAlive()) {
            this.f9236i.removeOnPreDrawListener(this);
        } else {
            this.f9235h.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f9235h.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        b();
        this.f9237j.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f9236i = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        b();
    }
}
