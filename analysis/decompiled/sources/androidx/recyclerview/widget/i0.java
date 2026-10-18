package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: ScrollbarHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class i0 {
    public static int a(RecyclerView.y yVar, c0 c0Var, View view, View view2, RecyclerView.m mVar, boolean z10) {
        if (mVar.z() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z10) {
            return Math.abs(mVar.O(view) - mVar.O(view2)) + 1;
        }
        return Math.min(c0Var.l(), c0Var.b(view2) - c0Var.e(view));
    }

    public static int b(RecyclerView.y yVar, c0 c0Var, View view, View view2, RecyclerView.m mVar, boolean z10, boolean z11) {
        if (mVar.z() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z11 ? Math.max(0, (yVar.b() - Math.max(mVar.O(view), mVar.O(view2))) - 1) : Math.max(0, Math.min(mVar.O(view), mVar.O(view2)));
        if (z10) {
            return Math.round((iMax * (Math.abs(c0Var.b(view2) - c0Var.e(view)) / (Math.abs(mVar.O(view) - mVar.O(view2)) + 1))) + (c0Var.k() - c0Var.e(view)));
        }
        return iMax;
    }

    public static int c(RecyclerView.y yVar, c0 c0Var, View view, View view2, RecyclerView.m mVar, boolean z10) {
        if (mVar.z() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z10) {
            return yVar.b();
        }
        return (int) (((c0Var.b(view2) - c0Var.e(view)) / (Math.abs(mVar.O(view) - mVar.O(view2)) + 1)) * yVar.b());
    }
}
