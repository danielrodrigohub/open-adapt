package kotlinx.coroutines;

import fd.o;
import jd.d;
import jd.e;
import jd.f;
import kd.a;
import zd.c;

/* JADX INFO: compiled from: Delay.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DelayKt {
    public static final Object delay(long j10, d<? super o> dVar) throws Throwable {
        if (j10 <= 0) {
            return o.f7408a;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(androidx.lifecycle.o.t(dVar), 1);
        cancellableContinuationImpl.initCancellability();
        if (j10 < Long.MAX_VALUE) {
            getDelay(cancellableContinuationImpl.getContext()).mo15scheduleResumeAfterDelay(j10, cancellableContinuationImpl);
        }
        Object result = cancellableContinuationImpl.getResult();
        return result == a.COROUTINE_SUSPENDED ? result : o.f7408a;
    }

    /* JADX INFO: renamed from: delay-VtjQ1oo, reason: not valid java name */
    public static final Object m10delayVtjQ1oo(long j10, d<? super o> dVar) throws Throwable {
        Object objDelay = delay(m11toDelayMillisLRDsOJo(j10), dVar);
        return objDelay == a.COROUTINE_SUSPENDED ? objDelay : o.f7408a;
    }

    public static final Delay getDelay(f fVar) {
        int i10 = e.f9509d;
        f.a aVar = fVar.get(e.a.f9510h);
        Delay delay = aVar instanceof Delay ? (Delay) aVar : null;
        return delay == null ? DefaultExecutorKt.getDefaultDelay() : delay;
    }

    /* JADX INFO: renamed from: toDelayMillis-LRDsOJo, reason: not valid java name */
    public static final long m11toDelayMillisLRDsOJo(long j10) {
        zd.a.C0338a c0338a = zd.a.f19479i;
        zd.a.C0338a c0338a2 = zd.a.f19479i;
        if (zd.a.g(j10, 0L) <= 0) {
            return 0L;
        }
        long jP = (((((int) j10) & 1) == 1) && (zd.a.m(j10) ^ true)) ? j10 >> 1 : zd.a.p(j10, c.MILLISECONDS);
        if (jP < 1) {
            return 1L;
        }
        return jP;
    }
}
