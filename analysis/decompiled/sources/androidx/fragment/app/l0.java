package androidx.fragment.app;

/* JADX INFO: compiled from: FragmentViewLifecycleOwner.java */
/* JADX INFO: loaded from: classes.dex */
public final class l0 implements androidx.lifecycle.g, b1.d, androidx.lifecycle.o0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final androidx.lifecycle.n0 f1962h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.lifecycle.r f1963i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public b1.c f1964j = null;

    public l0(androidx.lifecycle.n0 n0Var) {
        this.f1962h = n0Var;
    }

    @Override // androidx.lifecycle.o0
    public final androidx.lifecycle.n0 P() {
        c();
        return this.f1962h;
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.i a() {
        c();
        return this.f1963i;
    }

    public final void b(androidx.lifecycle.i.b bVar) {
        this.f1963i.f(bVar);
    }

    public final void c() {
        if (this.f1963i == null) {
            this.f1963i = new androidx.lifecycle.r(this);
            this.f1964j = b1.c.a(this);
        }
    }

    @Override // b1.d
    public final b1.b f() {
        c();
        return this.f1964j.f3165b;
    }
}
