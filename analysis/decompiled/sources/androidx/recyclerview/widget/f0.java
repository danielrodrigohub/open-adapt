package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: RecyclerView.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements e.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2626a;

    public f0(RecyclerView recyclerView) {
        this.f2626a = recyclerView;
    }

    public final View a(int i10) {
        return this.f2626a.getChildAt(i10);
    }

    public final int b() {
        return this.f2626a.getChildCount();
    }

    public final int c(View view) {
        return this.f2626a.indexOfChild(view);
    }

    public final void d(int i10) {
        View childAt = this.f2626a.getChildAt(i10);
        if (childAt != null) {
            this.f2626a.p(childAt);
            childAt.clearAnimation();
        }
        this.f2626a.removeViewAt(i10);
    }
}
