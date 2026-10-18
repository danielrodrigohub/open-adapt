package ud;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import p4.h;

/* JADX INFO: compiled from: PlatformThreadLocalRandom.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends td.a {
    @Override // td.a
    public final Random c() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        h.i(threadLocalRandomCurrent, "current()");
        return threadLocalRandomCurrent;
    }
}
