package n3;

/* JADX INFO: compiled from: DefaultLivePlaybackSpeedControl.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f11435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f11436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f11437d = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f11438e = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f11440g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f11441h = -9223372036854775807L;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f11444k = 0.97f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11443j = 1.03f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f11445l = 1.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f11446m = -9223372036854775807L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f11439f = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f11442i = -9223372036854775807L;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f11447n = -9223372036854775807L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f11448o = -9223372036854775807L;

    public j(long j10, long j11, float f10) {
        this.f11434a = j10;
        this.f11435b = j11;
        this.f11436c = f10;
    }

    public final void a() {
        long j10 = this.f11437d;
        if (j10 != -9223372036854775807L) {
            long j11 = this.f11438e;
            if (j11 != -9223372036854775807L) {
                j10 = j11;
            }
            long j12 = this.f11440g;
            if (j12 != -9223372036854775807L && j10 < j12) {
                j10 = j12;
            }
            long j13 = this.f11441h;
            if (j13 != -9223372036854775807L && j10 > j13) {
                j10 = j13;
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f11439f == j10) {
            return;
        }
        this.f11439f = j10;
        this.f11442i = j10;
        this.f11447n = -9223372036854775807L;
        this.f11448o = -9223372036854775807L;
        this.f11446m = -9223372036854775807L;
    }
}
