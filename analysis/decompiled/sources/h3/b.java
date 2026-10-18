package h3;

/* JADX INFO: compiled from: ErrorRequestCoordinator.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements e, d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f8134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f8135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile d f8136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile d f8137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8138e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8139f = 3;

    public b(Object obj, e eVar) {
        this.f8134a = obj;
        this.f8135b = eVar;
    }

    @Override // h3.e
    public final boolean a(d dVar) {
        boolean z10;
        synchronized (this.f8134a) {
            e eVar = this.f8135b;
            z10 = false;
            if ((eVar == null || eVar.a(this)) && m(dVar)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // h3.e
    public final e b() {
        e eVarB;
        synchronized (this.f8134a) {
            e eVar = this.f8135b;
            eVarB = eVar != null ? eVar.b() : this;
        }
        return eVarB;
    }

    @Override // h3.d
    public final void c() {
        synchronized (this.f8134a) {
            if (this.f8138e == 1) {
                this.f8138e = 2;
                this.f8136c.c();
            }
            if (this.f8139f == 1) {
                this.f8139f = 2;
                this.f8137d.c();
            }
        }
    }

    @Override // h3.d
    public final void clear() {
        synchronized (this.f8134a) {
            this.f8138e = 3;
            this.f8136c.clear();
            if (this.f8139f != 3) {
                this.f8139f = 3;
                this.f8137d.clear();
            }
        }
    }

    @Override // h3.e, h3.d
    public final boolean d() {
        boolean z10;
        synchronized (this.f8134a) {
            z10 = this.f8136c.d() || this.f8137d.d();
        }
        return z10;
    }

    @Override // h3.d
    public final boolean e() {
        boolean z10;
        synchronized (this.f8134a) {
            z10 = this.f8138e == 3 && this.f8139f == 3;
        }
        return z10;
    }

    @Override // h3.d
    public final void f() {
        synchronized (this.f8134a) {
            if (this.f8138e != 1) {
                this.f8138e = 1;
                this.f8136c.f();
            }
        }
    }

    @Override // h3.e
    public final void g(d dVar) {
        synchronized (this.f8134a) {
            if (dVar.equals(this.f8136c)) {
                this.f8138e = 4;
            } else if (dVar.equals(this.f8137d)) {
                this.f8139f = 4;
            }
            e eVar = this.f8135b;
            if (eVar != null) {
                eVar.g(this);
            }
        }
    }

    @Override // h3.d
    public final boolean h(d dVar) {
        if (!(dVar instanceof b)) {
            return false;
        }
        b bVar = (b) dVar;
        return this.f8136c.h(bVar.f8136c) && this.f8137d.h(bVar.f8137d);
    }

    @Override // h3.d
    public final boolean i() {
        boolean z10;
        synchronized (this.f8134a) {
            z10 = this.f8138e == 4 || this.f8139f == 4;
        }
        return z10;
    }

    @Override // h3.d
    public final boolean isRunning() {
        boolean z10;
        synchronized (this.f8134a) {
            z10 = true;
            if (this.f8138e != 1 && this.f8139f != 1) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // h3.e
    public final boolean j(d dVar) {
        boolean z10;
        synchronized (this.f8134a) {
            e eVar = this.f8135b;
            z10 = false;
            if ((eVar == null || eVar.j(this)) && m(dVar)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // h3.e
    public final boolean k(d dVar) {
        boolean z10;
        synchronized (this.f8134a) {
            e eVar = this.f8135b;
            z10 = false;
            if ((eVar == null || eVar.k(this)) && m(dVar)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // h3.e
    public final void l(d dVar) {
        synchronized (this.f8134a) {
            if (dVar.equals(this.f8137d)) {
                this.f8139f = 5;
                e eVar = this.f8135b;
                if (eVar != null) {
                    eVar.l(this);
                }
                return;
            }
            this.f8138e = 5;
            if (this.f8139f != 1) {
                this.f8139f = 1;
                this.f8137d.f();
            }
        }
    }

    public final boolean m(d dVar) {
        return dVar.equals(this.f8136c) || (this.f8138e == 5 && dVar.equals(this.f8137d));
    }
}
