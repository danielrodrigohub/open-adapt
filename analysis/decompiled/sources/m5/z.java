package m5;

import n3.m1;

/* JADX INFO: compiled from: StandaloneMediaClock.java */
/* JADX INFO: loaded from: classes.dex */
public final class z implements r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c f10487h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f10488i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f10489j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f10490k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public m1 f10491l = m1.f11538k;

    public z(c cVar) {
        this.f10487h = cVar;
    }

    public final void a(long j10) {
        this.f10489j = j10;
        if (this.f10488i) {
            this.f10490k = this.f10487h.d();
        }
    }

    public final void b() {
        if (this.f10488i) {
            return;
        }
        this.f10490k = this.f10487h.d();
        this.f10488i = true;
    }

    @Override // m5.r
    public final m1 d() {
        return this.f10491l;
    }

    @Override // m5.r
    public final void f(m1 m1Var) {
        if (this.f10488i) {
            a(w());
        }
        this.f10491l = m1Var;
    }

    @Override // m5.r
    public final long w() {
        long j10 = this.f10489j;
        if (!this.f10488i) {
            return j10;
        }
        long jD = this.f10487h.d() - this.f10490k;
        m1 m1Var = this.f10491l;
        return j10 + (m1Var.f11539h == 1.0f ? g0.L(jD) : jD * ((long) m1Var.f11541j));
    }
}
