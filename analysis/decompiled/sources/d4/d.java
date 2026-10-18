package d4;

import m5.g0;
import s3.u;
import s3.v;

/* JADX INFO: compiled from: WavSeekMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f6036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6038c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f6039d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f6040e;

    public d(b bVar, int i10, long j10, long j11) {
        this.f6036a = bVar;
        this.f6037b = i10;
        this.f6038c = j10;
        long j12 = (j11 - j10) / ((long) bVar.f6031c);
        this.f6039d = j12;
        this.f6040e = a(j12);
    }

    public final long a(long j10) {
        return g0.R(j10 * ((long) this.f6037b), 1000000L, this.f6036a.f6030b);
    }

    @Override // s3.u
    public final boolean f() {
        return true;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        long j11 = g0.j((((long) this.f6036a.f6030b) * j10) / (((long) this.f6037b) * 1000000), 0L, this.f6039d - 1);
        long j12 = (((long) this.f6036a.f6031c) * j11) + this.f6038c;
        long jA = a(j11);
        v vVar = new v(jA, j12);
        if (jA >= j10 || j11 == this.f6039d - 1) {
            return new u.a(vVar, vVar);
        }
        long j13 = j11 + 1;
        return new u.a(vVar, new v(a(j13), (((long) this.f6036a.f6031c) * j13) + this.f6038c));
    }

    @Override // s3.u
    public final long i() {
        return this.f6040e;
    }
}
