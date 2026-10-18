package j5;

import android.os.SystemClock;
import l5.c0;

/* JADX INFO: compiled from: TrackSelectionUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {
    public static c0.a a(l lVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = lVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (lVar.c(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        return new c0.a(1, 0, length, i10);
    }
}
