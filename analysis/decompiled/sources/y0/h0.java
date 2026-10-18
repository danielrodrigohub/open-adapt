package y0;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SharedSQLiteStatement.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f18228a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d0 f18229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile d1.g f18230c;

    public h0(d0 d0Var) {
        this.f18229b = d0Var;
    }

    public final d1.g a() {
        this.f18229b.a();
        if (!this.f18228a.compareAndSet(false, true)) {
            return b();
        }
        if (this.f18230c == null) {
            this.f18230c = b();
        }
        return this.f18230c;
    }

    public final d1.g b() {
        String strC = c();
        d0 d0Var = this.f18229b;
        d0Var.a();
        d0Var.b();
        return d0Var.f18157c.X().q(strC);
    }

    public abstract String c();

    public final void d(d1.g gVar) {
        if (gVar == this.f18230c) {
            this.f18228a.set(false);
        }
    }
}
