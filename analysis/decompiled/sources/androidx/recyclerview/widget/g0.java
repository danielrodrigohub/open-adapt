package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: RecyclerView.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements a.InterfaceC0032a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2629a;

    public g0(RecyclerView recyclerView) {
        this.f2629a = recyclerView;
    }

    public final void a(a.b bVar) {
        int i10 = bVar.f2603a;
        if (i10 == 1) {
            this.f2629a.f2429t.d0(bVar.f2604b, bVar.f2606d);
            return;
        }
        if (i10 == 2) {
            this.f2629a.f2429t.g0(bVar.f2604b, bVar.f2606d);
        } else if (i10 == 4) {
            this.f2629a.f2429t.h0(bVar.f2604b, bVar.f2606d);
        } else {
            if (i10 != 8) {
                return;
            }
            this.f2629a.f2429t.f0(bVar.f2604b, bVar.f2606d);
        }
    }

    public final RecyclerView.b0 b(int i10) {
        RecyclerView recyclerView = this.f2629a;
        int iH = recyclerView.f2413l.h();
        RecyclerView.b0 b0Var = null;
        for (int i11 = 0; i11 < iH; i11++) {
            RecyclerView.b0 b0VarK = RecyclerView.K(recyclerView.f2413l.g(i11));
            if (b0VarK != null && !b0VarK.p() && b0VarK.f2455c == i10) {
                if (!recyclerView.f2413l.k(b0VarK.f2453a)) {
                    b0Var = b0VarK;
                    break;
                }
                b0Var = b0VarK;
            }
        }
        if (b0Var == null || this.f2629a.f2413l.k(b0Var.f2453a)) {
            return null;
        }
        return b0Var;
    }

    public final void c(int i10, int i11, Object obj) {
        int i12;
        int i13;
        RecyclerView recyclerView = this.f2629a;
        int iH = recyclerView.f2413l.h();
        int i14 = i11 + i10;
        for (int i15 = 0; i15 < iH; i15++) {
            View viewG = recyclerView.f2413l.g(i15);
            RecyclerView.b0 b0VarK = RecyclerView.K(viewG);
            if (b0VarK != null && !b0VarK.x() && (i13 = b0VarK.f2455c) >= i10 && i13 < i14) {
                b0VarK.d(2);
                b0VarK.c(obj);
                ((RecyclerView.n) viewG.getLayoutParams()).f2510c = true;
            }
        }
        RecyclerView.t tVar = recyclerView.f2407i;
        int size = tVar.f2520c.size();
        while (true) {
            size--;
            if (size < 0) {
                this.f2629a.f2428s0 = true;
                return;
            }
            RecyclerView.b0 b0Var = tVar.f2520c.get(size);
            if (b0Var != null && (i12 = b0Var.f2455c) >= i10 && i12 < i14) {
                b0Var.d(2);
                tVar.f(size);
            }
        }
    }

    public final void d(int i10, int i11) {
        RecyclerView recyclerView = this.f2629a;
        int iH = recyclerView.f2413l.h();
        for (int i12 = 0; i12 < iH; i12++) {
            RecyclerView.b0 b0VarK = RecyclerView.K(recyclerView.f2413l.g(i12));
            if (b0VarK != null && !b0VarK.x() && b0VarK.f2455c >= i10) {
                b0VarK.t(i11, false);
                recyclerView.f2420o0.f2548f = true;
            }
        }
        RecyclerView.t tVar = recyclerView.f2407i;
        int size = tVar.f2520c.size();
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView.b0 b0Var = tVar.f2520c.get(i13);
            if (b0Var != null && b0Var.f2455c >= i10) {
                b0Var.t(i11, false);
            }
        }
        recyclerView.requestLayout();
        this.f2629a.f2426r0 = true;
    }

    public final void e(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        RecyclerView recyclerView = this.f2629a;
        int iH = recyclerView.f2413l.h();
        int i19 = -1;
        if (i10 < i11) {
            i13 = i10;
            i12 = i11;
            i14 = -1;
        } else {
            i12 = i10;
            i13 = i11;
            i14 = 1;
        }
        for (int i20 = 0; i20 < iH; i20++) {
            RecyclerView.b0 b0VarK = RecyclerView.K(recyclerView.f2413l.g(i20));
            if (b0VarK != null && (i18 = b0VarK.f2455c) >= i13 && i18 <= i12) {
                if (i18 == i10) {
                    b0VarK.t(i11 - i10, false);
                } else {
                    b0VarK.t(i14, false);
                }
                recyclerView.f2420o0.f2548f = true;
            }
        }
        RecyclerView.t tVar = recyclerView.f2407i;
        if (i10 < i11) {
            i16 = i10;
            i15 = i11;
        } else {
            i15 = i10;
            i16 = i11;
            i19 = 1;
        }
        int size = tVar.f2520c.size();
        for (int i21 = 0; i21 < size; i21++) {
            RecyclerView.b0 b0Var = tVar.f2520c.get(i21);
            if (b0Var != null && (i17 = b0Var.f2455c) >= i16 && i17 <= i15) {
                if (i17 == i10) {
                    b0Var.t(i11 - i10, false);
                } else {
                    b0Var.t(i19, false);
                }
            }
        }
        recyclerView.requestLayout();
        this.f2629a.f2426r0 = true;
    }
}
