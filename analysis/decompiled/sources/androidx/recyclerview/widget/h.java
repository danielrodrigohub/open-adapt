package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ n f2631i;

    public h(n nVar, ArrayList arrayList) {
        this.f2631i = nVar;
        this.f2630h = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (RecyclerView.b0 b0Var : this.f2630h) {
            n nVar = this.f2631i;
            Objects.requireNonNull(nVar);
            View view = b0Var.f2453a;
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            nVar.f2684o.add(b0Var);
            viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(nVar.f2478c).setListener(new j(nVar, b0Var, view, viewPropertyAnimatorAnimate)).start();
        }
        this.f2630h.clear();
        this.f2631i.f2681l.remove(this.f2630h);
    }
}
