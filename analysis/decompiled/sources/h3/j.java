package h3;

/* JADX INFO: compiled from: ThumbnailRequestCoordinator.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements e, d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f8166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile d f8168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile d f8169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8170e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8171f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f8172g;

    public j(Object obj, e eVar) {
        this.f8167b = obj;
        this.f8166a = eVar;
    }

    @Override // h3.e
    public final boolean a(d dVar) {
        boolean z10;
        synchronized (this.f8167b) {
            e eVar = this.f8166a;
            z10 = false;
            if ((eVar == null || eVar.a(this)) && dVar.equals(this.f8168c) && !d()) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // h3.e
    public final e b() {
        e eVarB;
        synchronized (this.f8167b) {
            e eVar = this.f8166a;
            eVarB = eVar != null ? eVar.b() : this;
        }
        return eVarB;
    }

    @Override // h3.d
    public final void c() {
        synchronized (this.f8167b) {
            if (!g2.e.a(this.f8171f)) {
                this.f8171f = 2;
                this.f8169d.c();
            }
            if (!g2.e.a(this.f8170e)) {
                this.f8170e = 2;
                this.f8168c.c();
            }
        }
    }

    @Override // h3.d
    public final void clear() {
        synchronized (this.f8167b) {
            this.f8172g = false;
            this.f8170e = 3;
            this.f8171f = 3;
            this.f8169d.clear();
            this.f8168c.clear();
        }
    }

    @Override // h3.e, h3.d
    public final boolean d() {
        boolean z10;
        synchronized (this.f8167b) {
            z10 = this.f8169d.d() || this.f8168c.d();
        }
        return z10;
    }

    @Override // h3.d
    public final boolean e() {
        boolean z10;
        synchronized (this.f8167b) {
            z10 = this.f8170e == 3;
        }
        return z10;
    }

    @Override // h3.d
    public final void f() {
        synchronized (this.f8167b) {
            this.f8172g = true;
            try {
                if (this.f8170e != 4 && this.f8171f != 1) {
                    this.f8171f = 1;
                    this.f8169d.f();
                }
                if (this.f8172g && this.f8170e != 1) {
                    this.f8170e = 1;
                    this.f8168c.f();
                }
                this.f8172g = false;
            } catch (Throwable th) {
                this.f8172g = false;
                throw th;
            }
        }
    }

    @Override // h3.e
    public final void g(d dVar) {
        synchronized (this.f8167b) {
            if (dVar.equals(this.f8169d)) {
                this.f8171f = 4;
                return;
            }
            this.f8170e = 4;
            e eVar = this.f8166a;
            if (eVar != null) {
                eVar.g(this);
            }
            if (!g2.e.a(this.f8171f)) {
                this.f8169d.clear();
            }
        }
    }

    @Override // h3.d
    public final boolean h(d dVar) {
        if (!(dVar instanceof j)) {
            return false;
        }
        j jVar = (j) dVar;
        if (this.f8168c == null) {
            if (jVar.f8168c != null) {
                return false;
            }
        } else if (!this.f8168c.h(jVar.f8168c)) {
            return false;
        }
        if (this.f8169d == null) {
            if (jVar.f8169d != null) {
                return false;
            }
        } else if (!this.f8169d.h(jVar.f8169d)) {
            return false;
        }
        return true;
    }

    @Override // h3.d
    public final boolean i() {
        boolean z10;
        synchronized (this.f8167b) {
            z10 = this.f8170e == 4;
        }
        return z10;
    }

    @Override // h3.d
    public final boolean isRunning() {
        boolean z10;
        synchronized (this.f8167b) {
            z10 = true;
            if (this.f8170e != 1) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // h3.e
    public final boolean j(d dVar) {
        boolean z10;
        synchronized (this.f8167b) {
            e eVar = this.f8166a;
            z10 = false;
            if ((eVar == null || eVar.j(this)) && (dVar.equals(this.f8168c) || this.f8170e != 4)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // h3.e
    public final boolean k(d dVar) {
        boolean z10;
        synchronized (this.f8167b) {
            e eVar = this.f8166a;
            z10 = false;
            if ((eVar == null || eVar.k(this)) && dVar.equals(this.f8168c) && this.f8170e != 2) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // h3.e
    public final void l(d dVar) {
        synchronized (this.f8167b) {
            if (!dVar.equals(this.f8168c)) {
                this.f8171f = 5;
                return;
            }
            this.f8170e = 5;
            e eVar = this.f8166a;
            if (eVar != null) {
                eVar.l(this);
            }
        }
    }
}
