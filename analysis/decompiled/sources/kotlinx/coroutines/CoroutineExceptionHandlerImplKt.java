package kotlinx.coroutines;

import d3.e;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import jd.f;
import p4.h;
import xd.g;
import xd.j;

/* JADX INFO: compiled from: CoroutineExceptionHandlerImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CoroutineExceptionHandlerImplKt {
    private static final List<CoroutineExceptionHandler> handlers = g.n(j.l(ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator()));

    public static final void handleCoroutineExceptionImpl(f fVar, Throwable th) {
        Iterator<CoroutineExceptionHandler> it = handlers.iterator();
        while (it.hasNext()) {
            try {
                it.next().handleException(fVar, th);
            } catch (Throwable th2) {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, CoroutineExceptionHandlerKt.handlerException(th, th2));
            }
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        try {
            h.b(th, new DiagnosticCoroutineContextException(fVar));
        } catch (Throwable th3) {
            e.g(th3);
        }
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }
}
