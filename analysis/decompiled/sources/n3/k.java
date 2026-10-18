package n3;

import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.crash.CrashSender;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;

/* JADX INFO: compiled from: DefaultLoadControl.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l5.n f11452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f11453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f11454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f11455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f11456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f11457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f11458g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f11460i;

    public k() {
        l5.n nVar = new l5.n();
        j(2500, 0, "bufferForPlaybackMs", AgentConfiguration.DEFAULT_DEVICE_UUID);
        j(CrashSender.CRASH_COLLECTOR_TIMEOUT, 0, "bufferForPlaybackAfterRebufferMs", AgentConfiguration.DEFAULT_DEVICE_UUID);
        j(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        j(50000, CrashSender.CRASH_COLLECTOR_TIMEOUT, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        j(50000, 50000, "maxBufferMs", "minBufferMs");
        j(0, 0, "backBufferDurationMs", AgentConfiguration.DEFAULT_DEVICE_UUID);
        this.f11452a = nVar;
        long j10 = 50000;
        this.f11453b = m5.g0.L(j10);
        this.f11454c = m5.g0.L(j10);
        this.f11455d = m5.g0.L(2500);
        this.f11456e = m5.g0.L(CrashSender.CRASH_COLLECTOR_TIMEOUT);
        this.f11457f = -1;
        this.f11459h = 13107200;
        this.f11458g = m5.g0.L(0);
    }

    public static void j(int i10, int i11, String str, String str2) {
        m5.a.b(i10 >= i11, str + " cannot be less than " + str2);
    }

    @Override // n3.x0
    public final boolean a() {
        return false;
    }

    @Override // n3.x0
    public final boolean b(long j10, float f10) {
        int i10;
        l5.n nVar = this.f11452a;
        synchronized (nVar) {
            i10 = nVar.f10084d * nVar.f10082b;
        }
        boolean z10 = i10 >= this.f11459h;
        long jMin = this.f11453b;
        if (f10 > 1.0f) {
            jMin = Math.min(m5.g0.w(jMin, f10), this.f11454c);
        }
        if (j10 < Math.max(jMin, 500000L)) {
            boolean z11 = z10 ? false : true;
            this.f11460i = z11;
            if (!z11 && j10 < 500000) {
                m5.p.g("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j10 >= this.f11454c || z10) {
            this.f11460i = false;
        }
        return this.f11460i;
    }

    @Override // n3.x0
    public final void c() {
        k(true);
    }

    @Override // n3.x0
    public final boolean d(long j10, float f10, boolean z10, long j11) {
        int i10;
        long jA = m5.g0.A(j10, f10);
        long jMin = z10 ? this.f11456e : this.f11455d;
        if (j11 != -9223372036854775807L) {
            jMin = Math.min(j11 / 2, jMin);
        }
        if (jMin > 0 && jA < jMin) {
            l5.n nVar = this.f11452a;
            synchronized (nVar) {
                i10 = nVar.f10084d * nVar.f10082b;
            }
            if (i10 < this.f11459h) {
                return false;
            }
        }
        return true;
    }

    @Override // n3.x0
    public final l5.b e() {
        return this.f11452a;
    }

    @Override // n3.x0
    public final void f() {
        k(true);
    }

    @Override // n3.x0
    public final long g() {
        return this.f11458g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // n3.x0
    public final void h(s1[] s1VarArr, j5.l[] lVarArr) {
        int iMax = this.f11457f;
        if (iMax == -1) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int i12 = 13107200;
                if (i10 < s1VarArr.length) {
                    if (lVarArr[i10] != null) {
                        switch (s1VarArr[i10].u()) {
                            case -2:
                                i12 = 0;
                                i11 += i12;
                                break;
                            case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                            default:
                                throw new IllegalArgumentException();
                            case 0:
                                i12 = 144310272;
                                i11 += i12;
                                break;
                            case 1:
                                i11 += i12;
                                break;
                            case 2:
                                i12 = 131072000;
                                i11 += i12;
                                break;
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                i12 = 131072;
                                i11 += i12;
                                break;
                        }
                    }
                    i10++;
                } else {
                    iMax = Math.max(13107200, i11);
                }
            }
        }
        this.f11459h = iMax;
        l5.n nVar = this.f11452a;
        synchronized (nVar) {
            boolean z10 = iMax < nVar.f10083c;
            nVar.f10083c = iMax;
            if (z10) {
                nVar.a();
            }
        }
    }

    @Override // n3.x0
    public final void i() {
        k(false);
    }

    public final void k(boolean z10) {
        int i10 = this.f11457f;
        if (i10 == -1) {
            i10 = 13107200;
        }
        this.f11459h = i10;
        this.f11460i = false;
        if (z10) {
            l5.n nVar = this.f11452a;
            synchronized (nVar) {
                if (nVar.f10081a) {
                    synchronized (nVar) {
                        boolean z11 = nVar.f10083c > 0;
                        nVar.f10083c = 0;
                        if (z11) {
                            nVar.a();
                        }
                    }
                }
            }
        }
    }
}
