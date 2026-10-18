package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ n f2625i;

    public f(n nVar, ArrayList arrayList) {
        this.f2625i = nVar;
        this.f2624h = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (n.b bVar : this.f2624h) {
            n nVar = this.f2625i;
            RecyclerView.b0 b0Var = bVar.f2694a;
            int i10 = bVar.f2695b;
            int i11 = bVar.f2696c;
            int i12 = bVar.f2697d;
            int i13 = bVar.f2698e;
            Objects.requireNonNull(nVar);
            View view = b0Var.f2453a;
            int i14 = i12 - i10;
            int i15 = i13 - i11;
            if (i14 != 0) {
                view.animate().translationX(0.0f);
            }
            if (i15 != 0) {
                view.animate().translationY(0.0f);
            }
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            nVar.f2685p.add(b0Var);
            viewPropertyAnimatorAnimate.setDuration(nVar.f2480e).setListener(new k(nVar, b0Var, i14, view, i15, viewPropertyAnimatorAnimate)).start();
        }
        this.f2624h.clear();
        this.f2625i.f2682m.remove(this.f2624h);
    }
}
