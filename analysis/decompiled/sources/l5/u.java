package l5;

import com.newrelic.agent.android.crash.CrashSender;
import com.newrelic.agent.android.harvest.HarvestTimer;
import java.io.FileNotFoundException;
import java.io.IOException;
import n3.i1;

/* JADX INFO: compiled from: DefaultLoadErrorHandlingPolicy.java */
/* JADX INFO: loaded from: classes.dex */
public final class u implements c0 {
    @Override // l5.c0
    public final c0.b a(c0.a aVar, c0.c cVar) {
        int i10;
        IOException iOException = cVar.f9983a;
        if (!((iOException instanceof z) && ((i10 = ((z) iOException).f10153k) == 403 || i10 == 404 || i10 == 410 || i10 == 416 || i10 == 500 || i10 == 503))) {
            return null;
        }
        if (aVar.a(1)) {
            return new c0.b(1, 300000L);
        }
        if (aVar.a(2)) {
            return new c0.b(2, HarvestTimer.DEFAULT_HARVEST_PERIOD);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x002f  */
    @Override // l5.c0
    public final long b(c0.c cVar) {
        boolean z10;
        Throwable cause = cVar.f9983a;
        if (!(cause instanceof i1) && !(cause instanceof FileNotFoundException) && !(cause instanceof w) && !(cause instanceof d0.g)) {
            int i10 = k.f10055i;
            while (cause != null) {
                if ((cause instanceof k) && ((k) cause).f10056h == 2008) {
                    z10 = true;
                    if (!z10) {
                        return Math.min((cVar.f9984b - 1) * 1000, CrashSender.CRASH_COLLECTOR_TIMEOUT);
                    }
                } else {
                    cause = cause.getCause();
                }
            }
            z10 = false;
            if (!z10) {
                return Math.min((cVar.f9984b - 1) * 1000, CrashSender.CRASH_COLLECTOR_TIMEOUT);
            }
        }
        return -9223372036854775807L;
    }

    @Override // l5.c0
    public final int c(int i10) {
        return i10 == 7 ? 6 : 3;
    }
}
