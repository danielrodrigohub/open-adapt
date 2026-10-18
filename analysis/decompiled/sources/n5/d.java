package n5;

import java.util.Arrays;

/* JADX INFO: compiled from: FixedFrameRateEstimator.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11872c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11874e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f11870a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f11871b = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f11873d = -9223372036854775807L;

    /* JADX INFO: compiled from: FixedFrameRateEstimator.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f11875a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f11876b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f11877c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f11878d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f11879e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f11880f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean[] f11881g = new boolean[15];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f11882h;

        public final boolean a() {
            return this.f11878d > 15 && this.f11882h == 0;
        }

        public final void b(long j10) {
            long j11 = this.f11878d;
            if (j11 == 0) {
                this.f11875a = j10;
            } else if (j11 == 1) {
                long j12 = j10 - this.f11875a;
                this.f11876b = j12;
                this.f11880f = j12;
                this.f11879e = 1L;
            } else {
                long j13 = j10 - this.f11877c;
                int i10 = (int) (j11 % 15);
                if (Math.abs(j13 - this.f11876b) <= 1000000) {
                    this.f11879e++;
                    this.f11880f += j13;
                    boolean[] zArr = this.f11881g;
                    if (zArr[i10]) {
                        zArr[i10] = false;
                        this.f11882h--;
                    }
                } else {
                    boolean[] zArr2 = this.f11881g;
                    if (!zArr2[i10]) {
                        zArr2[i10] = true;
                        this.f11882h++;
                    }
                }
            }
            this.f11878d++;
            this.f11877c = j10;
        }

        public final void c() {
            this.f11878d = 0L;
            this.f11879e = 0L;
            this.f11880f = 0L;
            this.f11882h = 0;
            Arrays.fill(this.f11881g, false);
        }
    }

    public final boolean a() {
        return this.f11870a.a();
    }
}
