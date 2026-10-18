package ya;

import java.util.concurrent.CompletableFuture;

/* JADX INFO: compiled from: BigfootCommand.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class h0<Response> implements nc.a<Response>, Comparable<h0<?>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CompletableFuture<Boolean> f19031h = new CompletableFuture<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f19032i = 20;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f19033j = System.currentTimeMillis();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f19034k;

    @Override // lc.b
    public void j(Response response) {
        if (this.f19034k) {
            this.f19034k = false;
            v9.d.a.a(d3.e.j(), "BigfootCommand", t() + " response: " + response, null, 4, null);
            w(response);
            this.f19031h.complete(Boolean.TRUE);
        }
    }

    @Override // lc.b
    public final void k(Throwable th) {
        p4.h.j(th, "throwable");
        if (this.f19034k) {
            this.f19034k = false;
            v9.d.a.a(d3.e.j(), "BigfootCommand", a0.b.a(t(), " error: ", th.getClass().getSimpleName(), " message: ", th.getMessage()), null, 4, null);
            if (!m(th)) {
                s(th);
            }
            this.f19031h.complete(Boolean.TRUE);
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final int compareTo(h0<?> h0Var) {
        p4.h.j(h0Var, "other");
        return p4.h.l(androidx.appcompat.widget.e0.a(u()), androidx.appcompat.widget.e0.a(h0Var.u()));
    }

    public abstract boolean m(Throwable th);

    public abstract v9.a n();

    public abstract qd.a<fd.o> o();

    public abstract String p();

    public long q() {
        return this.f19032i;
    }

    public abstract void s(Throwable th);

    public final String t() {
        return p() + " " + n() + " identityHash: " + System.identityHashCode(this);
    }

    public int u() {
        return 2;
    }

    public abstract void w(Response response);
}
