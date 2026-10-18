package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: PagerSnapHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends k0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b0 f2622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a0 f2623d;

    @Override // androidx.recyclerview.widget.k0
    public final int[] b(RecyclerView.m mVar, View view) {
        int[] iArr = new int[2];
        if (mVar.g()) {
            iArr[0] = d(view, f(mVar));
        } else {
            iArr[0] = 0;
        }
        if (mVar.h()) {
            iArr[1] = d(view, g(mVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    public final int d(View view, c0 c0Var) {
        return ((c0Var.c(view) / 2) + c0Var.e(view)) - ((c0Var.l() / 2) + c0Var.k());
    }

    public final View e(RecyclerView.m mVar, c0 c0Var) {
        int iZ = mVar.z();
        View view = null;
        if (iZ == 0) {
            return null;
        }
        int iL = (c0Var.l() / 2) + c0Var.k();
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < iZ; i11++) {
            View viewY = mVar.y(i11);
            int iAbs = Math.abs(((c0Var.c(viewY) / 2) + c0Var.e(viewY)) - iL);
            if (iAbs < i10) {
                view = viewY;
                i10 = iAbs;
            }
        }
        return view;
    }

    public final c0 f(RecyclerView.m mVar) {
        a0 a0Var = this.f2623d;
        if (a0Var == null || a0Var.f2613a != mVar) {
            this.f2623d = new a0(mVar);
        }
        return this.f2623d;
    }

    public final c0 g(RecyclerView.m mVar) {
        b0 b0Var = this.f2622c;
        if (b0Var == null || b0Var.f2613a != mVar) {
            this.f2622c = new b0(mVar);
        }
        return this.f2622c;
    }
}
