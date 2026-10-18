package androidx.recyclerview.widget;

/* JADX INFO: compiled from: SimpleItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class j0 extends RecyclerView.j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2644g = true;

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public final boolean a(RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2, RecyclerView.j.c cVar, RecyclerView.j.c cVar2) {
        int i10;
        int i11;
        int i12 = cVar.f2482a;
        int i13 = cVar.f2483b;
        if (b0Var2.x()) {
            int i14 = cVar.f2482a;
            i11 = cVar.f2483b;
            i10 = i14;
        } else {
            i10 = cVar2.f2482a;
            i11 = cVar2.f2483b;
        }
        n nVar = (n) this;
        if (b0Var == b0Var2) {
            return nVar.h(b0Var, i12, i13, i10, i11);
        }
        float translationX = b0Var.f2453a.getTranslationX();
        float translationY = b0Var.f2453a.getTranslationY();
        float alpha = b0Var.f2453a.getAlpha();
        nVar.m(b0Var);
        b0Var.f2453a.setTranslationX(translationX);
        b0Var.f2453a.setTranslationY(translationY);
        b0Var.f2453a.setAlpha(alpha);
        nVar.m(b0Var2);
        b0Var2.f2453a.setTranslationX(-((int) ((i10 - i12) - translationX)));
        b0Var2.f2453a.setTranslationY(-((int) ((i11 - i13) - translationY)));
        b0Var2.f2453a.setAlpha(0.0f);
        nVar.f2680k.add(new n.a(b0Var, b0Var2, i12, i13, i10, i11));
        return true;
    }

    public abstract boolean h(RecyclerView.b0 b0Var, int i10, int i11, int i12, int i13);
}
