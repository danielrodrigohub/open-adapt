package kotlinx.coroutines;

import fd.o;
import jd.d;
import jd.e;
import jd.f;
import jd.h;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import qd.p;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class BuildersKt__Builders_commonKt {
    public static final <T> Deferred<T> async(CoroutineScope coroutineScope, f fVar, CoroutineStart coroutineStart, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar) {
        f fVarNewCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, fVar);
        DeferredCoroutine lazyDeferredCoroutine = coroutineStart.isLazy() ? new LazyDeferredCoroutine(fVarNewCoroutineContext, pVar) : new DeferredCoroutine(fVarNewCoroutineContext, true);
        ((AbstractCoroutine) lazyDeferredCoroutine).start(coroutineStart, lazyDeferredCoroutine, pVar);
        return (Deferred<T>) lazyDeferredCoroutine;
    }

    public static /* synthetic */ Deferred async$default(CoroutineScope coroutineScope, f fVar, CoroutineStart coroutineStart, p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fVar = h.f9512h;
        }
        if ((i10 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return BuildersKt.async(coroutineScope, fVar, coroutineStart, pVar);
    }

    public static final Job launch(CoroutineScope coroutineScope, f fVar, CoroutineStart coroutineStart, p<? super CoroutineScope, ? super d<? super o>, ? extends Object> pVar) {
        f fVarNewCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, fVar);
        AbstractCoroutine lazyStandaloneCoroutine = coroutineStart.isLazy() ? new LazyStandaloneCoroutine(fVarNewCoroutineContext, pVar) : new StandaloneCoroutine(fVarNewCoroutineContext, true);
        lazyStandaloneCoroutine.start(coroutineStart, lazyStandaloneCoroutine, pVar);
        return lazyStandaloneCoroutine;
    }

    public static /* synthetic */ Job launch$default(CoroutineScope coroutineScope, f fVar, CoroutineStart coroutineStart, p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fVar = h.f9512h;
        }
        if ((i10 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return BuildersKt.launch(coroutineScope, fVar, coroutineStart, pVar);
    }

    public static final <T> Object withContext(f fVar, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar, d<? super T> dVar) throws Throwable {
        f context = dVar.getContext();
        f fVarNewCoroutineContext = CoroutineContextKt.newCoroutineContext(context, fVar);
        JobKt.ensureActive(fVarNewCoroutineContext);
        if (fVarNewCoroutineContext == context) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(fVarNewCoroutineContext, dVar);
            return UndispatchedKt.startUndispatchedOrReturn(scopeCoroutine, scopeCoroutine, pVar);
        }
        int i10 = e.f9509d;
        e.a aVar = e.a.f9510h;
        if (!p4.h.c(fVarNewCoroutineContext.get(aVar), context.get(aVar))) {
            DispatchedCoroutine dispatchedCoroutine = new DispatchedCoroutine(fVarNewCoroutineContext, dVar);
            CancellableKt.startCoroutineCancellable$default(pVar, dispatchedCoroutine, dispatchedCoroutine, null, 4, null);
            return dispatchedCoroutine.getResult();
        }
        UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(fVarNewCoroutineContext, dVar);
        Object objUpdateThreadContext = ThreadContextKt.updateThreadContext(fVarNewCoroutineContext, null);
        try {
            return UndispatchedKt.startUndispatchedOrReturn(undispatchedCoroutine, undispatchedCoroutine, pVar);
        } finally {
            ThreadContextKt.restoreThreadContext(fVarNewCoroutineContext, objUpdateThreadContext);
        }
    }
}
