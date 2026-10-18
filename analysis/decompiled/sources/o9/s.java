package o9;

import android.view.View;
import android.view.ViewPropertyAnimator;
import n3.m1;
import n3.x1;

/* JADX INFO: compiled from: ShoeControllerVideoHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12522a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12523b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12524c;

    public final void a(n3.r rVar) {
        if (rVar != null) {
            x1 x1Var = (x1) rVar;
            x1Var.i(false);
            x1Var.j0();
            x1Var.h0();
        }
    }

    public final void b(n3.r rVar, boolean z10) {
        if (rVar != null) {
            boolean z11 = this.f12522a == 3 || this.f12523b == 3;
            e(z10, 3);
            if (z11) {
                return;
            }
            ((x1) rVar).i0(new m1(0.8f));
        }
    }

    public final void c(n3.r rVar, boolean z10, View view) {
        ViewPropertyAnimator viewPropertyAnimatorAnimate;
        ViewPropertyAnimator duration;
        if (rVar != null) {
            if (g(rVar)) {
                e(z10, 1);
                ((x1) rVar).i(false);
            } else {
                if (view == null || (viewPropertyAnimatorAnimate = view.animate()) == null || (duration = viewPropertyAnimatorAnimate.setDuration(1000L)) == null) {
                    return;
                }
                duration.alpha(0.65f);
            }
        }
    }

    public final void d(n3.r rVar, boolean z10) {
        if (rVar != null) {
            e(z10, 2);
            if (this.f12523b == 2 && this.f12522a == 2) {
                ((x1) rVar).i0(new m1(0.4f));
            }
        }
    }

    public final void e(boolean z10, int i10) {
        if (z10) {
            this.f12523b = i10;
        } else {
            this.f12522a = i10;
        }
    }

    public final void f(n3.r rVar, boolean z10, View view) {
        if (rVar != null) {
            e(z10, 2);
            if (!g(rVar) && this.f12523b == 2 && this.f12522a == 2) {
                x1 x1Var = (x1) rVar;
                x1Var.i0(new m1(0.4f));
                x1Var.i(true);
                view.animate().setDuration(500L).alpha(0.65f);
            }
        }
    }

    public final boolean g(n3.r rVar) {
        x1 x1Var = (x1) rVar;
        return x1Var.p() && x1Var.s() == 3;
    }
}
