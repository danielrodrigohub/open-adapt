package p4;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import n3.b2;

/* JADX INFO: compiled from: BaseMediaSource.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements x {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList<x.c> f12916h = new ArrayList<>(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashSet<x.c> f12917i = new HashSet<>(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final e0.a f12918j = new e0.a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r3.k.a f12919k = new r3.k.a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Looper f12920l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b2 f12921m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o3.v0 f12922n;

    @Override // p4.x
    public final void c(x.c cVar, l5.j0 j0Var, o3.v0 v0Var) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f12920l;
        m5.a.a(looper == null || looper == looperMyLooper);
        this.f12922n = v0Var;
        b2 b2Var = this.f12921m;
        this.f12916h.add(cVar);
        if (this.f12920l == null) {
            this.f12920l = looperMyLooper;
            this.f12917i.add(cVar);
            v(j0Var);
        } else if (b2Var != null) {
            o(cVar);
            cVar.a(this, b2Var);
        }
    }

    @Override // p4.x
    public final void f(Handler handler, e0 e0Var) {
        e0.a aVar = this.f12918j;
        Objects.requireNonNull(aVar);
        aVar.f12970c.add(new e0.a.C0229a(handler, e0Var));
    }

    @Override // p4.x
    public final void g(x.c cVar) {
        this.f12916h.remove(cVar);
        if (!this.f12916h.isEmpty()) {
            l(cVar);
            return;
        }
        this.f12920l = null;
        this.f12921m = null;
        this.f12922n = null;
        this.f12917i.clear();
        x();
    }

    @Override // p4.x
    public final void j(e0 e0Var) {
        e0.a aVar = this.f12918j;
        for (e0.a.C0229a c0229a : aVar.f12970c) {
            if (c0229a.f12973b == e0Var) {
                aVar.f12970c.remove(c0229a);
            }
        }
    }

    @Override // p4.x
    public final void l(x.c cVar) {
        boolean z10 = !this.f12917i.isEmpty();
        this.f12917i.remove(cVar);
        if (z10 && this.f12917i.isEmpty()) {
            t();
        }
    }

    @Override // p4.x
    public final void n(r3.k kVar) {
        r3.k.a aVar = this.f12919k;
        for (r3.k.a.C0249a c0249a : aVar.f14504c) {
            if (c0249a.f14506b == kVar) {
                aVar.f14504c.remove(c0249a);
            }
        }
    }

    @Override // p4.x
    public final void o(x.c cVar) {
        Objects.requireNonNull(this.f12920l);
        boolean zIsEmpty = this.f12917i.isEmpty();
        this.f12917i.add(cVar);
        if (zIsEmpty) {
            u();
        }
    }

    @Override // p4.x
    public final void p(Handler handler, r3.k kVar) {
        r3.k.a aVar = this.f12919k;
        Objects.requireNonNull(aVar);
        aVar.f14504c.add(new r3.k.a.C0249a(handler, kVar));
    }

    public final r3.k.a r(x.b bVar) {
        return this.f12919k.g(0, bVar);
    }

    public final e0.a s(x.b bVar) {
        return this.f12918j.r(0, bVar, 0L);
    }

    public void t() {
    }

    public void u() {
    }

    public abstract void v(l5.j0 j0Var);

    public final void w(b2 b2Var) {
        this.f12921m = b2Var;
        Iterator<x.c> it = this.f12916h.iterator();
        while (it.hasNext()) {
            it.next().a(this, b2Var);
        }
    }

    public abstract void x();
}
