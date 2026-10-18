package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.d;
import java.util.concurrent.CancellationException;
import jd.f;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.NonDisposableHandle;
import kotlinx.coroutines.android.HandlerContext;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: HandlerDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerContext extends HandlerDispatcher {
    private volatile HandlerContext _immediate;
    private final Handler handler;
    private final HandlerContext immediate;
    private final boolean invokeImmediately;
    private final String name;

    /* JADX INFO: renamed from: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$1, reason: invalid class name */
    /* JADX INFO: compiled from: HandlerDispatcher.kt */
    public static final class AnonymousClass1 extends o implements l<Throwable, fd.o> {
        public final /* synthetic */ Runnable $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Runnable runnable) {
            super(1);
            this.$block = runnable;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ fd.o invoke(Throwable th) {
            invoke2(th);
            return fd.o.f7408a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            HandlerContext.this.handler.removeCallbacks(this.$block);
        }
    }

    private HandlerContext(Handler handler, String str, boolean z10) {
        super(null);
        this.handler = handler;
        this.name = str;
        this.invokeImmediately = z10;
        this._immediate = z10 ? this : null;
        HandlerContext handlerContext = this._immediate;
        if (handlerContext == null) {
            handlerContext = new HandlerContext(handler, str, true);
            this._immediate = handlerContext;
        }
        this.immediate = handlerContext;
    }

    private final void cancelOnRejection(f fVar, Runnable runnable) {
        JobKt.cancel(fVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        Dispatchers.getIO().mo14dispatch(fVar, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeOnTimeout$lambda-3, reason: not valid java name */
    public static final void m12invokeOnTimeout$lambda3(HandlerContext handlerContext, Runnable runnable) {
        handlerContext.handler.removeCallbacks(runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: dispatch */
    public void mo14dispatch(f fVar, Runnable runnable) {
        if (this.handler.post(runnable)) {
            return;
        }
        cancelOnRejection(fVar, runnable);
    }

    public boolean equals(Object obj) {
        return (obj instanceof HandlerContext) && ((HandlerContext) obj).handler == this.handler;
    }

    public int hashCode() {
        return System.identityHashCode(this.handler);
    }

    @Override // kotlinx.coroutines.android.HandlerDispatcher, kotlinx.coroutines.Delay
    public DisposableHandle invokeOnTimeout(long j10, final Runnable runnable, f fVar) {
        Handler handler = this.handler;
        if (j10 > 4611686018427387903L) {
            j10 = 4611686018427387903L;
        }
        if (handler.postDelayed(runnable, j10)) {
            return new DisposableHandle() { // from class: ae.a
                @Override // kotlinx.coroutines.DisposableHandle
                public final void dispose() {
                    HandlerContext.m12invokeOnTimeout$lambda3(this.f618h, runnable);
                }
            };
        }
        cancelOnRejection(fVar, runnable);
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(f fVar) {
        return (this.invokeImmediately && h.c(Looper.myLooper(), this.handler.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.Delay
    /* JADX INFO: renamed from: scheduleResumeAfterDelay */
    public void mo15scheduleResumeAfterDelay(long j10, final CancellableContinuation<? super fd.o> cancellableContinuation) {
        Runnable runnable = new Runnable() { // from class: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                cancellableContinuation.resumeUndispatched(this, fd.o.f7408a);
            }
        };
        Handler handler = this.handler;
        if (j10 > 4611686018427387903L) {
            j10 = 4611686018427387903L;
        }
        if (handler.postDelayed(runnable, j10)) {
            cancellableContinuation.invokeOnCancellation(new AnonymousClass1(runnable));
        } else {
            cancelOnRejection(cancellableContinuation.getContext(), runnable);
        }
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        String stringInternalImpl = toStringInternalImpl();
        if (stringInternalImpl != null) {
            return stringInternalImpl;
        }
        String string = this.name;
        if (string == null) {
            string = this.handler.toString();
        }
        return this.invokeImmediately ? d.c(string, ".immediate") : string;
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher
    public HandlerContext getImmediate() {
        return this.immediate;
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i10, rd.h hVar) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public HandlerContext(Handler handler, String str) {
        this(handler, str, false);
    }
}
