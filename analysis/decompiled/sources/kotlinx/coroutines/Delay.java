package kotlinx.coroutines;

import fd.o;
import jd.f;

/* JADX INFO: compiled from: Delay.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Delay {

    /* JADX INFO: compiled from: Delay.kt */
    public static final class DefaultImpls {
        public static DisposableHandle invokeOnTimeout(Delay delay, long j10, Runnable runnable, f fVar) {
            return DefaultExecutorKt.getDefaultDelay().invokeOnTimeout(j10, runnable, fVar);
        }
    }

    DisposableHandle invokeOnTimeout(long j10, Runnable runnable, f fVar);

    /* JADX INFO: renamed from: scheduleResumeAfterDelay */
    void mo15scheduleResumeAfterDelay(long j10, CancellableContinuation<? super o> cancellableContinuation);
}
