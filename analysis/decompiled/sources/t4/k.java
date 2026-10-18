package t4;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;
import m5.g0;
import n3.s0;

/* JADX INFO: compiled from: SegmentBase.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f15500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15502c;

    /* JADX INFO: compiled from: SegmentBase.java */
    public static abstract class a extends k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f15503d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f15504e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List<d> f15505f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f15506g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f15507h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f15508i;

        public a(i iVar, long j10, long j11, long j12, long j13, List<d> list, long j14, long j15, long j16) {
            super(iVar, j10, j11);
            this.f15503d = j12;
            this.f15504e = j13;
            this.f15505f = list;
            this.f15508i = j14;
            this.f15506g = j15;
            this.f15507h = j16;
        }

        public final long b(long j10, long j11) {
            long jD = d(j10);
            return jD != -1 ? jD : (int) (f((j11 - this.f15507h) + this.f15508i, j10) - c(j10, j11));
        }

        public final long c(long j10, long j11) {
            if (d(j10) == -1) {
                long j12 = this.f15506g;
                if (j12 != -9223372036854775807L) {
                    return Math.max(this.f15503d, f((j11 - this.f15507h) - j12, j10));
                }
            }
            return this.f15503d;
        }

        public abstract long d(long j10);

        public final long e(long j10, long j11) {
            List<d> list = this.f15505f;
            if (list != null) {
                return (list.get((int) (j10 - this.f15503d)).f15514b * 1000000) / this.f15501b;
            }
            long jD = d(j11);
            return (jD == -1 || j10 != (this.f15503d + jD) - 1) ? (this.f15504e * 1000000) / this.f15501b : j11 - g(j10);
        }

        public final long f(long j10, long j11) {
            long j12 = this.f15503d;
            long jD = d(j11);
            if (jD == 0) {
                return j12;
            }
            if (this.f15505f == null) {
                long j13 = (j10 / ((this.f15504e * 1000000) / this.f15501b)) + this.f15503d;
                if (j13 < j12) {
                    return j12;
                }
                return jD == -1 ? j13 : Math.min(j13, (j12 + jD) - 1);
            }
            long j14 = (jD + j12) - 1;
            long j15 = j12;
            while (j15 <= j14) {
                long j16 = ((j14 - j15) / 2) + j15;
                long jG = g(j16);
                if (jG < j10) {
                    j15 = j16 + 1;
                } else {
                    if (jG <= j10) {
                        return j16;
                    }
                    j14 = j16 - 1;
                }
            }
            return j15 == j12 ? j15 : j14;
        }

        public final long g(long j10) {
            List<d> list = this.f15505f;
            return g0.R(list != null ? list.get((int) (j10 - this.f15503d)).f15513a - this.f15502c : (j10 - this.f15503d) * this.f15504e, 1000000L, this.f15501b);
        }

        public abstract i h(j jVar, long j10);

        public boolean i() {
            return this.f15505f != null;
        }
    }

    /* JADX INFO: compiled from: SegmentBase.java */
    public static final class b extends a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final List<i> f15509j;

        public b(i iVar, long j10, long j11, long j12, long j13, List<d> list, long j14, List<i> list2, long j15, long j16) {
            super(iVar, j10, j11, j12, j13, list, j14, j15, j16);
            this.f15509j = list2;
        }

        @Override // t4.k.a
        public final long d(long j10) {
            return this.f15509j.size();
        }

        @Override // t4.k.a
        public final i h(j jVar, long j10) {
            return this.f15509j.get((int) (j10 - this.f15503d));
        }

        @Override // t4.k.a
        public final boolean i() {
            return true;
        }
    }

    /* JADX INFO: compiled from: SegmentBase.java */
    public static final class c extends a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final m f15510j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final m f15511k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final long f15512l;

        public c(i iVar, long j10, long j11, long j12, long j13, long j14, List<d> list, long j15, m mVar, m mVar2, long j16, long j17) {
            super(iVar, j10, j11, j12, j14, list, j15, j16, j17);
            this.f15510j = mVar;
            this.f15511k = mVar2;
            this.f15512l = j13;
        }

        @Override // t4.k
        public final i a(j jVar) {
            m mVar = this.f15510j;
            if (mVar == null) {
                return this.f15500a;
            }
            s0 s0Var = jVar.f15489a;
            return new i(mVar.a(s0Var.f11676h, 0L, s0Var.f11683o, 0L), 0L, -1L);
        }

        @Override // t4.k.a
        public final long d(long j10) {
            List<d> list = this.f15505f;
            if (list != null) {
                return list.size();
            }
            long j11 = this.f15512l;
            if (j11 != -1) {
                return (j11 - this.f15503d) + 1;
            }
            if (j10 == -9223372036854775807L) {
                return -1L;
            }
            BigInteger bigIntegerMultiply = BigInteger.valueOf(j10).multiply(BigInteger.valueOf(this.f15501b));
            BigInteger bigIntegerMultiply2 = BigInteger.valueOf(this.f15504e).multiply(BigInteger.valueOf(1000000L));
            RoundingMode roundingMode = RoundingMode.CEILING;
            int i10 = v6.a.f16360a;
            return new BigDecimal(bigIntegerMultiply).divide(new BigDecimal(bigIntegerMultiply2), 0, roundingMode).toBigIntegerExact().longValue();
        }

        @Override // t4.k.a
        public final i h(j jVar, long j10) {
            List<d> list = this.f15505f;
            long j11 = list != null ? list.get((int) (j10 - this.f15503d)).f15513a : (j10 - this.f15503d) * this.f15504e;
            m mVar = this.f15511k;
            s0 s0Var = jVar.f15489a;
            return new i(mVar.a(s0Var.f11676h, j10, s0Var.f11683o, j11), 0L, -1L);
        }
    }

    /* JADX INFO: compiled from: SegmentBase.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15513a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15514b;

        public d(long j10, long j11) {
            this.f15513a = j10;
            this.f15514b = j11;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f15513a == dVar.f15513a && this.f15514b == dVar.f15514b;
        }

        public final int hashCode() {
            return (((int) this.f15513a) * 31) + ((int) this.f15514b);
        }
    }

    public k(i iVar, long j10, long j11) {
        this.f15500a = iVar;
        this.f15501b = j10;
        this.f15502c = j11;
    }

    public i a(j jVar) {
        return this.f15500a;
    }

    /* JADX INFO: compiled from: SegmentBase.java */
    public static class e extends k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f15515d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f15516e;

        public e() {
            super(null, 1L, 0L);
            this.f15515d = 0L;
            this.f15516e = 0L;
        }

        public e(i iVar, long j10, long j11, long j12, long j13) {
            super(iVar, j10, j11);
            this.f15515d = j12;
            this.f15516e = j13;
        }
    }
}
