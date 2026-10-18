package g6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;

/* JADX INFO: compiled from: StateListAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList<b> f7746a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f7747b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ValueAnimator f7748c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f7749d = new a();

    /* JADX INFO: compiled from: StateListAnimator.java */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            j jVar = j.this;
            if (jVar.f7748c == animator) {
                jVar.f7748c = null;
            }
        }
    }

    /* JADX INFO: compiled from: StateListAnimator.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f7751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ValueAnimator f7752b;

        public b(int[] iArr, ValueAnimator valueAnimator) {
            this.f7751a = iArr;
            this.f7752b = valueAnimator;
        }
    }

    public final void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f7749d);
        this.f7746a.add(bVar);
    }
}
