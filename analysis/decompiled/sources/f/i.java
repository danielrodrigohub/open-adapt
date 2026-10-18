package f;

import android.view.View;
import j0.a0;
import j0.l0;

/* JADX INFO: compiled from: AppCompatDelegateImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements j0.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f6868a;

    public i(h hVar) {
        this.f6868a = hVar;
    }

    @Override // j0.q
    public final l0 a(View view, l0 l0Var) {
        int iF = l0Var.f();
        int iV = this.f6868a.V(l0Var);
        if (iF != iV) {
            l0Var = l0Var.i(l0Var.d(), iV, l0Var.e(), l0Var.c());
        }
        return a0.k(view, l0Var);
    }
}
