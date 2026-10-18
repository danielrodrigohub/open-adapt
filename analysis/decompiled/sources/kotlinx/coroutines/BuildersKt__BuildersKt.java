package kotlinx.coroutines;

import jd.d;
import jd.e;
import jd.f;
import jd.h;
import qd.p;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class BuildersKt__BuildersKt {
    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    public static final <T> T runBlocking(f fVar, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar) throws InterruptedException {
        EventLoop eventLoopCurrentOrNull$kotlinx_coroutines_core;
        f fVarNewCoroutineContext;
        Thread threadCurrentThread = Thread.currentThread();
        int i10 = e.f9509d;
        e eVar = (e) fVar.get(e.a.f9510h);
        if (eVar == null) {
            eventLoopCurrentOrNull$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
            fVarNewCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, fVar.plus(eventLoopCurrentOrNull$kotlinx_coroutines_core));
        } else {
            EventLoop eventLoop = eVar instanceof EventLoop ? (EventLoop) eVar : null;
            if (eventLoop == null) {
                eventLoopCurrentOrNull$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.currentOrNull$kotlinx_coroutines_core();
            } else {
                EventLoop eventLoop2 = eventLoop.shouldBeProcessedFromContext() ? eventLoop : null;
                if (eventLoop2 == null) {
                    eventLoopCurrentOrNull$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.currentOrNull$kotlinx_coroutines_core();
                } else {
                    eventLoopCurrentOrNull$kotlinx_coroutines_core = eventLoop2;
                }
            }
            fVarNewCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, fVar);
        }
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(fVarNewCoroutineContext, threadCurrentThread, eventLoopCurrentOrNull$kotlinx_coroutines_core);
        blockingCoroutine.start(CoroutineStart.DEFAULT, blockingCoroutine, pVar);
        return (T) blockingCoroutine.joinBlocking();
    }

    public static /* synthetic */ Object runBlocking$default(f fVar, p pVar, int i10, Object obj) throws InterruptedException {
        if ((i10 & 1) != 0) {
            fVar = h.f9512h;
        }
        return BuildersKt.runBlocking(fVar, pVar);
    }
}
