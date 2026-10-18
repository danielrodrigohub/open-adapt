package kotlinx.coroutines.internal;

import androidx.appcompat.widget.e0;

/* JADX INFO: compiled from: LimitedDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LimitedDispatcherKt {
    public static final void checkParallelism(int i10) {
        if (!(i10 >= 1)) {
            throw new IllegalArgumentException(e0.d("Expected positive parallelism level, but got ", i10).toString());
        }
    }
}
