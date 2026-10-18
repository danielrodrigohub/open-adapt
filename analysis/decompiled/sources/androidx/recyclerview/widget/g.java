package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2627h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ n f2628i;

    public g(n nVar, ArrayList arrayList) {
        this.f2628i = nVar;
        this.f2627h = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (n.a aVar : this.f2627h) {
            n nVar = this.f2628i;
            Objects.requireNonNull(nVar);
            RecyclerView.b0 b0Var = aVar.f2688a;
            View view = b0Var == null ? null : b0Var.f2453a;
            RecyclerView.b0 b0Var2 = aVar.f2689b;
            View view2 = b0Var2 != null ? b0Var2.f2453a : null;
            if (view != null) {
                ViewPropertyAnimator duration = view.animate().setDuration(nVar.f2481f);
                nVar.f2687r.add(aVar.f2688a);
                duration.translationX(aVar.f2692e - aVar.f2690c);
                duration.translationY(aVar.f2693f - aVar.f2691d);
                duration.alpha(0.0f).setListener(new l(nVar, aVar, duration, view)).start();
            }
            if (view2 != null) {
                ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
                nVar.f2687r.add(aVar.f2689b);
                viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(nVar.f2481f).alpha(1.0f).setListener(new m(nVar, aVar, viewPropertyAnimatorAnimate, view2)).start();
            }
        }
        this.f2627h.clear();
        this.f2628i.f2683n.remove(this.f2627h);
    }
}
