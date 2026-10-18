package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Animation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c.b f1880c;

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            f fVar = f.this;
            fVar.f1878a.endViewTransition(fVar.f1879b);
            f.this.f1880c.a();
        }
    }

    public f(ViewGroup viewGroup, View view, c.b bVar) {
        this.f1878a = viewGroup;
        this.f1879b = view;
        this.f1880c = bVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f1878a.post(new a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
