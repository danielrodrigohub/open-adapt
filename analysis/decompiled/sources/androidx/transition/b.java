package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: Fade.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends l {

    /* JADX INFO: compiled from: Fade.java */
    public class a extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f2905a;

        public a(View view) {
            this.f2905a = view;
        }

        @Override // androidx.transition.f.d
        public final void e(f fVar) {
            g1.l.c(this.f2905a, 1.0f);
            Objects.requireNonNull(g1.l.f7553a);
            fVar.v(this);
        }
    }

    /* JADX INFO: renamed from: androidx.transition.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Fade.java */
    public static class C0040b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f2906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2907b = false;

        public C0040b(View view) {
            this.f2906a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            g1.l.c(this.f2906a, 1.0f);
            if (this.f2907b) {
                this.f2906a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            View view = this.f2906a;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            if (a0.d.h(view) && this.f2906a.getLayerType() == 0) {
                this.f2907b = true;
                this.f2906a.setLayerType(2, null);
            }
        }
    }

    public b(int i10) {
        if ((i10 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.E = i10;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    @Override // androidx.transition.l
    public final Animator J(View view, g1.g gVar) {
        Float f10;
        Objects.requireNonNull(g1.l.f7553a);
        return K(view, (gVar == null || (f10 = (Float) gVar.f7543a.get("android:fade:transitionAlpha")) == null) ? 1.0f : f10.floatValue(), 0.0f);
    }

    public final Animator K(View view, float f10, float f11) {
        if (f10 == f11) {
            return null;
        }
        g1.l.c(view, f10);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, g1.l.f7554b, f11);
        objectAnimatorOfFloat.addListener(new C0040b(view));
        a(new a(view));
        return objectAnimatorOfFloat;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // androidx.transition.f
    public final void g(g1.g gVar) {
        H(gVar);
        gVar.f7543a.put("android:fade:transitionAlpha", Float.valueOf(g1.l.a(gVar.f7544b)));
    }

    public b() {
    }
}
