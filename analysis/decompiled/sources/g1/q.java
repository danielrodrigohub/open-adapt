package g1;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi29.java */
/* JADX INFO: loaded from: classes.dex */
public final class q extends p {
    @Override // g1.p, androidx.transition.j
    public final void a(View view, int i10) {
        view.setTransitionVisibility(i10);
    }

    @Override // g1.m
    public final float b(View view) {
        return view.getTransitionAlpha();
    }

    @Override // g1.m
    public final void c(View view, float f10) {
        view.setTransitionAlpha(f10);
    }

    @Override // g1.n
    public final void d(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // g1.n
    public final void e(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // g1.o
    public final void f(View view, int i10, int i11, int i12, int i13) {
        view.setLeftTopRightBottom(i10, i11, i12, i13);
    }
}
