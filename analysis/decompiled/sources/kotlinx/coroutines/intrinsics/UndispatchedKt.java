package kotlinx.coroutines.intrinsics;

import d3.e;
import jd.d;
import jd.f;
import kd.a;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import p4.h;
import qd.p;
import rd.b0;

/* JADX INFO: compiled from: Undispatched.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UndispatchedKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> void startCoroutineUndispatched(p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar) {
        h.j(dVar, "completion");
        try {
            f context = dVar.getContext();
            Object objUpdateThreadContext = ThreadContextKt.updateThreadContext(context, null);
            try {
                b0.c(pVar);
                Object objInvoke = pVar.invoke(r10, dVar);
                ThreadContextKt.restoreThreadContext(context, objUpdateThreadContext);
                if (objInvoke != a.COROUTINE_SUSPENDED) {
                    dVar.resumeWith(objInvoke);
                }
            } catch (Throwable th) {
                ThreadContextKt.restoreThreadContext(context, objUpdateThreadContext);
                throw th;
            }
        } catch (Throwable th2) {
            dVar.resumeWith(e.g(th2));
        }
    }

    public static final <T, R> Object startUndispatchedOrReturn(ScopeCoroutine<? super T> scopeCoroutine, R r10, p<? super R, ? super d<? super T>, ? extends Object> pVar) throws Throwable {
        Object completedExceptionally;
        Object objMakeCompletingOnce$kotlinx_coroutines_core;
        try {
            b0.c(pVar);
            completedExceptionally = pVar.invoke(r10, scopeCoroutine);
        } catch (Throwable th) {
            completedExceptionally = new CompletedExceptionally(th, false, 2, null);
        }
        a aVar = a.COROUTINE_SUSPENDED;
        if (completedExceptionally == aVar || (objMakeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(completedExceptionally)) == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            return aVar;
        }
        if (objMakeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) objMakeCompletingOnce$kotlinx_coroutines_core).cause;
        }
        return JobSupportKt.unboxState(objMakeCompletingOnce$kotlinx_coroutines_core);
    }

    public static final <T, R> Object startUndispatchedOrReturnIgnoreTimeout(ScopeCoroutine<? super T> scopeCoroutine, R r10, p<? super R, ? super d<? super T>, ? extends Object> pVar) throws Throwable {
        Object completedExceptionally;
        Object objMakeCompletingOnce$kotlinx_coroutines_core;
        try {
            b0.c(pVar);
            completedExceptionally = pVar.invoke(r10, scopeCoroutine);
        } catch (Throwable th) {
            completedExceptionally = new CompletedExceptionally(th, false, 2, null);
        }
        a aVar = a.COROUTINE_SUSPENDED;
        if (completedExceptionally == aVar || (objMakeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(completedExceptionally)) == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            return aVar;
        }
        if (objMakeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            Throwable th2 = ((CompletedExceptionally) objMakeCompletingOnce$kotlinx_coroutines_core).cause;
            if (((th2 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th2).coroutine == scopeCoroutine) ? false : true) {
                throw th2;
            }
            if (completedExceptionally instanceof CompletedExceptionally) {
                throw ((CompletedExceptionally) completedExceptionally).cause;
            }
        } else {
            completedExceptionally = JobSupportKt.unboxState(objMakeCompletingOnce$kotlinx_coroutines_core);
        }
        return completedExceptionally;
    }
}
