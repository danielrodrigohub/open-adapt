package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: EventLoop.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class EventLoopImplPlatform extends EventLoop {
    public abstract Thread getThread();

    public void reschedule(long j10, EventLoopImplBase.DelayedTask delayedTask) {
        DefaultExecutor.INSTANCE.schedule(j10, delayedTask);
    }

    public final void unpark() {
        Thread thread = getThread();
        if (Thread.currentThread() != thread) {
            AbstractTimeSourceKt.getTimeSource();
            LockSupport.unpark(thread);
        }
    }
}
