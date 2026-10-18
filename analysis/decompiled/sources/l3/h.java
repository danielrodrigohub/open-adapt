package l3;

import android.os.SystemClock;

/* JADX INFO: compiled from: LogTime.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final double f9934a = 1.0d / Math.pow(10.0d, 6.0d);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f9935b = 0;

    public static double a(long j10) {
        return (SystemClock.elapsedRealtimeNanos() - j10) * f9934a;
    }
}
