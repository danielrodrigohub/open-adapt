package kotlinx.coroutines.internal;

import androidx.recyclerview.widget.d;
import fd.b;
import fd.o;
import jd.f;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: compiled from: MainDispatchers.kt */
/* JADX INFO: loaded from: classes.dex */
final class MissingMainCoroutineDispatcher extends MainCoroutineDispatcher implements Delay {
    private final Throwable cause;
    private final String errorHint;

    public MissingMainCoroutineDispatcher(Throwable th, String str) {
        this.cause = th;
        this.errorHint = str;
    }

    private final Void missing() {
        String strC;
        if (this.cause == null) {
            MainDispatchersKt.throwMissingMainDispatcherException();
            throw new b();
        }
        StringBuilder sbC = a0.b.c("Module with the Main dispatcher had failed to initialize");
        String str = this.errorHint;
        if (str == null || (strC = d.c(". ", str)) == null) {
            strC = "";
        }
        sbC.append(strC);
        throw new IllegalStateException(sbC.toString(), this.cause);
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher
    public MainCoroutineDispatcher getImmediate() {
        return this;
    }

    @Override // kotlinx.coroutines.Delay
    public DisposableHandle invokeOnTimeout(long j10, Runnable runnable, f fVar) {
        missing();
        throw new b();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(f fVar) {
        missing();
        throw new b();
    }

    @Override // kotlinx.coroutines.Delay
    /* JADX INFO: renamed from: scheduleResumeAfterDelay, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ void mo15scheduleResumeAfterDelay(long j10, CancellableContinuation cancellableContinuation) {
        scheduleResumeAfterDelay(j10, (CancellableContinuation<? super o>) cancellableContinuation);
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        String string;
        StringBuilder sbC = a0.b.c("Dispatchers.Main[missing");
        if (this.cause != null) {
            StringBuilder sbC2 = a0.b.c(", cause=");
            sbC2.append(this.cause);
            string = sbC2.toString();
        } else {
            string = "";
        }
        return a0.d.d(sbC, string, ']');
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: dispatch, reason: merged with bridge method [inline-methods] */
    public Void mo14dispatch(f fVar, Runnable runnable) {
        missing();
        throw new b();
    }

    public Void scheduleResumeAfterDelay(long j10, CancellableContinuation<? super o> cancellableContinuation) {
        missing();
        throw new b();
    }
}
