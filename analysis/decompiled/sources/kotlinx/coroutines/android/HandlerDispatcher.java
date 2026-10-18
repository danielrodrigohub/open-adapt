package kotlinx.coroutines.android;

import jd.f;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.MainCoroutineDispatcher;
import rd.h;

/* JADX INFO: compiled from: HandlerDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class HandlerDispatcher extends MainCoroutineDispatcher implements Delay {
    private HandlerDispatcher() {
    }

    public /* synthetic */ HandlerDispatcher(h hVar) {
        this();
    }

    public DisposableHandle invokeOnTimeout(long j10, Runnable runnable, f fVar) {
        return Delay.DefaultImpls.invokeOnTimeout(this, j10, runnable, fVar);
    }
}
