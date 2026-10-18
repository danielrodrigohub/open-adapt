package n3;

import java.util.Objects;

/* JADX INFO: compiled from: DefaultMediaClock.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements m5.r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m5.z f11507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f11508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public s1 f11509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public m5.r f11510k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f11511l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f11512m;

    /* JADX INFO: compiled from: DefaultMediaClock.java */
    public interface a {
    }

    public l(a aVar, m5.c cVar) {
        this.f11508i = aVar;
        this.f11507h = new m5.z(cVar);
    }

    @Override // m5.r
    public final m1 d() {
        m5.r rVar = this.f11510k;
        return rVar != null ? rVar.d() : this.f11507h.f10491l;
    }

    @Override // m5.r
    public final void f(m1 m1Var) {
        m5.r rVar = this.f11510k;
        if (rVar != null) {
            rVar.f(m1Var);
            m1Var = this.f11510k.d();
        }
        this.f11507h.f(m1Var);
    }

    @Override // m5.r
    public final long w() {
        if (this.f11511l) {
            return this.f11507h.w();
        }
        m5.r rVar = this.f11510k;
        Objects.requireNonNull(rVar);
        return rVar.w();
    }
}
