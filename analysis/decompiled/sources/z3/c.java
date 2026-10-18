package z3;

import android.util.Pair;
import m5.g0;
import s3.u;
import s3.v;

/* JADX INFO: compiled from: MlltSeeker.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f19258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f19259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f19260c;

    public c(long[] jArr, long[] jArr2, long j10) {
        this.f19258a = jArr;
        this.f19259b = jArr2;
        this.f19260c = j10 == -9223372036854775807L ? g0.L(jArr2[jArr2.length - 1]) : j10;
    }

    public static Pair<Long, Long> a(long j10, long[] jArr, long[] jArr2) {
        int iF = g0.f(jArr, j10, true);
        long j11 = jArr[iF];
        long j12 = jArr2[iF];
        int i10 = iF + 1;
        if (i10 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i10];
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) ((j13 == j11 ? 0.0d : (j10 - j11) / (j13 - j11)) * (jArr2[i10] - j12))) + j12));
    }

    @Override // z3.e
    public final long c(long j10) {
        return g0.L(((Long) a(j10, this.f19258a, this.f19259b).second).longValue());
    }

    @Override // z3.e
    public final long d() {
        return -1L;
    }

    @Override // s3.u
    public final boolean f() {
        return true;
    }

    @Override // s3.u
    public final u.a h(long j10) {
        Pair<Long, Long> pairA = a(g0.X(g0.j(j10, 0L, this.f19260c)), this.f19259b, this.f19258a);
        v vVar = new v(g0.L(((Long) pairA.first).longValue()), ((Long) pairA.second).longValue());
        return new u.a(vVar, vVar);
    }

    @Override // s3.u
    public final long i() {
        return this.f19260c;
    }
}
