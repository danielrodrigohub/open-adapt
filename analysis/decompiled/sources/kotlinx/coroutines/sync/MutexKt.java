package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: compiled from: Mutex.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MutexKt {
    private static final Empty EMPTY_LOCKED;
    private static final Empty EMPTY_UNLOCKED;
    private static final Symbol LOCKED;
    private static final Symbol UNLOCKED;
    private static final Symbol LOCK_FAIL = new Symbol("LOCK_FAIL");
    private static final Symbol UNLOCK_FAIL = new Symbol("UNLOCK_FAIL");

    static {
        Symbol symbol = new Symbol("LOCKED");
        LOCKED = symbol;
        Symbol symbol2 = new Symbol("UNLOCKED");
        UNLOCKED = symbol2;
        EMPTY_LOCKED = new Empty(symbol);
        EMPTY_UNLOCKED = new Empty(symbol2);
    }

    public static final Mutex Mutex(boolean z10) {
        return new MutexImpl(z10);
    }

    public static /* synthetic */ Mutex Mutex$default(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return Mutex(z10);
    }
}
