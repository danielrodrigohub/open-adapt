package androidx.recyclerview.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;

/* JADX INFO: compiled from: SnapHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k0 extends RecyclerView.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView f2651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f2652b = new a();

    /* JADX INFO: compiled from: SnapHelper.java */
    public class a extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2653a = false;

        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public final void a(RecyclerView recyclerView, int i10) {
            if (i10 == 0 && this.f2653a) {
                this.f2653a = false;
                k0.this.c();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public final void b(RecyclerView recyclerView, int i10, int i11) {
            if (i10 == 0 && i11 == 0) {
                return;
            }
            this.f2653a = true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$r>] */
    public final void a(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f2651a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            a aVar = this.f2652b;
            ?? r10 = recyclerView2.f2424q0;
            if (r10 != 0) {
                r10.remove(aVar);
            }
            this.f2651a.setOnFlingListener(null);
        }
        this.f2651a = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            this.f2651a.h(this.f2652b);
            this.f2651a.setOnFlingListener(this);
            new Scroller(this.f2651a.getContext(), new DecelerateInterpolator());
            c();
        }
    }

    public abstract int[] b(RecyclerView.m mVar, View view);

    public final void c() {
        RecyclerView.m layoutManager;
        View viewE;
        RecyclerView recyclerView = this.f2651a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        e0 e0Var = (e0) this;
        if (layoutManager.h()) {
            viewE = e0Var.e(layoutManager, e0Var.g(layoutManager));
        } else {
            viewE = layoutManager.g() ? e0Var.e(layoutManager, e0Var.f(layoutManager)) : null;
        }
        if (viewE == null) {
            return;
        }
        int[] iArrB = b(layoutManager, viewE);
        if (iArrB[0] == 0 && iArrB[1] == 0) {
            return;
        }
        this.f2651a.j0(iArrB[0], iArrB[1], false);
    }
}
