package z3;

import m5.g0;
import m5.q;
import s3.u;
import s3.v;

/* JADX INFO: compiled from: IndexSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f19254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q f19255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f19256c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f19257d;

    public b(long j10, long j11, long j12) {
        this.f19257d = j10;
        this.f19254a = j12;
        q qVar = new q();
        this.f19255b = qVar;
        q qVar2 = new q();
        this.f19256c = qVar2;
        qVar.a(0L);
        qVar2.a(j11);
    }

    public final boolean a(long j10) {
        q qVar = this.f19255b;
        return j10 - qVar.b(qVar.f10429a - 1) < 100000;
    }

    @Override // z3.e
    public final long c(long j10) {
        return this.f19255b.b(g0.d(this.f19256c, j10));
    }

    @Override // z3.e
    public final long d() {
        return this.f19254a;
    }

    @Override // s3.u
    public final boolean f() {
        return true;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        int iD = g0.d(this.f19255b, j10);
        long jB = this.f19255b.b(iD);
        v vVar = new v(jB, this.f19256c.b(iD));
        if (jB != j10) {
            q qVar = this.f19255b;
            if (iD != qVar.f10429a - 1) {
                int i10 = iD + 1;
                return new u.a(vVar, new v(qVar.b(i10), this.f19256c.b(i10)));
            }
        }
        return new u.a(vVar, vVar);
    }

    @Override // s3.u
    public final long i() {
        return this.f19257d;
    }
}
