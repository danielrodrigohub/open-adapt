package m5;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* JADX INFO: compiled from: SystemClock.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 implements c {
    @Override // m5.c
    public final long a() {
        return SystemClock.uptimeMillis();
    }

    @Override // m5.c
    public final l b(Looper looper, Handler.Callback callback) {
        return new b0(new Handler(looper, callback));
    }

    @Override // m5.c
    public final void c() {
    }

    @Override // m5.c
    public final long d() {
        return SystemClock.elapsedRealtime();
    }
}
