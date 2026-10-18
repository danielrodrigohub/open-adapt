package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX INFO: compiled from: PagerSnapHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends x {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ e0 f2616q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(e0 e0Var, Context context) {
        super(context);
        this.f2616q = e0Var;
    }

    @Override // androidx.recyclerview.widget.x, androidx.recyclerview.widget.RecyclerView.x
    public final void e(View view, RecyclerView.y yVar, RecyclerView.x.a aVar) {
        e0 e0Var = this.f2616q;
        int[] iArrB = e0Var.b(e0Var.f2651a.getLayoutManager(), view);
        int i10 = iArrB[0];
        int i11 = iArrB[1];
        int iK = k(Math.max(Math.abs(i10), Math.abs(i11)));
        if (iK > 0) {
            aVar.b(i10, i11, iK, this.f2835j);
        }
    }

    @Override // androidx.recyclerview.widget.x
    public final float j(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.x
    public final int l(int i10) {
        return Math.min(100, super.l(i10));
    }
}
