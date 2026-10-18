package androidx.recyclerview.widget;

/* JADX INFO: compiled from: AdapterListUpdateCallback.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RecyclerView.e f2607a;

    public b(RecyclerView.e eVar) {
        this.f2607a = eVar;
    }

    @Override // androidx.recyclerview.widget.y
    public final void a(int i10, int i11) {
        this.f2607a.f2473a.f(i10, i11);
    }

    @Override // androidx.recyclerview.widget.y
    public final void b(int i10, int i11) {
        this.f2607a.f2473a.c(i10, i11);
    }

    @Override // androidx.recyclerview.widget.y
    public final void c(int i10, int i11) {
        this.f2607a.f2473a.e(i10, i11);
    }

    @Override // androidx.recyclerview.widget.y
    public final void d(int i10, int i11, Object obj) {
        this.f2607a.f2473a.d(i10, i11, obj);
    }
}
