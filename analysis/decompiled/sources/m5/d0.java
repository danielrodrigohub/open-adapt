package m5;

import java.util.Objects;

/* JADX INFO: compiled from: TimestampAdjuster.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f10373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f10374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f10375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ThreadLocal<Long> f10376d = new ThreadLocal<>();

    public d0(long j10) {
        e(j10);
    }

    public final synchronized long a(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f10374b == -9223372036854775807L) {
            long jLongValue = this.f10373a;
            if (jLongValue == 9223372036854775806L) {
                Long l10 = this.f10376d.get();
                Objects.requireNonNull(l10);
                jLongValue = l10.longValue();
            }
            this.f10374b = jLongValue - j10;
            notifyAll();
        }
        this.f10375c = j10;
        return j10 + this.f10374b;
    }

    public final synchronized long b(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = this.f10375c;
        if (j11 != -9223372036854775807L) {
            long j12 = (j11 * 90000) / 1000000;
            long j13 = (4294967296L + j12) / 8589934592L;
            long j14 = ((j13 - 1) * 8589934592L) + j10;
            j10 += j13 * 8589934592L;
            if (Math.abs(j14 - j12) < Math.abs(j10 - j12)) {
                j10 = j14;
            }
        }
        return a((j10 * 1000000) / 90000);
    }

    public final synchronized long c() {
        long j10;
        j10 = this.f10373a;
        if (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) {
            j10 = -9223372036854775807L;
        }
        return j10;
    }

    public final synchronized long d() {
        return this.f10374b;
    }

    public final synchronized void e(long j10) {
        this.f10373a = j10;
        this.f10374b = j10 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f10375c = -9223372036854775807L;
    }
}
