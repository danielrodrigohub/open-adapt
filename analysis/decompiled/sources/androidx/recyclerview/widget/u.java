package androidx.recyclerview.widget;

/* JADX INFO: compiled from: ItemTouchHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class u implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ t.f f2821h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f2822i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ t f2823j;

    public u(t tVar, t.f fVar, int i10) {
        this.f2823j = tVar;
        this.f2821h = fVar;
        this.f2822i = i10;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.t$f>] */
    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView = this.f2823j.f2789r;
        if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
            return;
        }
        t.f fVar = this.f2821h;
        if (fVar.f2818k || fVar.f2812e.g() == -1) {
            return;
        }
        RecyclerView.j itemAnimator = this.f2823j.f2789r.getItemAnimator();
        if (itemAnimator == null || !itemAnimator.g()) {
            t tVar = this.f2823j;
            int size = tVar.f2787p.size();
            boolean z10 = false;
            for (int i10 = 0; i10 < size; i10++) {
                if (!((t.f) tVar.f2787p.get(i10)).f2819l) {
                    z10 = true;
                    break;
                }
            }
            if (!z10) {
                this.f2823j.f2784m.j(this.f2821h.f2812e);
                return;
            }
        }
        this.f2823j.f2789r.post(this);
    }
}
