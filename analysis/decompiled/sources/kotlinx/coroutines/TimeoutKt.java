package kotlinx.coroutines;

import jd.d;
import kd.a;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import ld.c;
import ld.e;
import p4.h;
import qd.p;
import rd.w;

/* JADX INFO: compiled from: Timeout.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TimeoutKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1, reason: invalid class name */
    /* JADX INFO: compiled from: Timeout.kt */
    @e(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", l = {100}, m = "withTimeoutOrNull")
    public static final class AnonymousClass1<T> extends c {
        public long J$0;
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(d<? super AnonymousClass1> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TimeoutKt.withTimeoutOrNull(0L, null, this);
        }
    }

    public static final TimeoutCancellationException TimeoutCancellationException(long j10, Job job) {
        return new TimeoutCancellationException("Timed out waiting for " + j10 + " ms", job);
    }

    private static final <U, T extends U> Object setupTimeout(TimeoutCoroutine<U, ? super T> timeoutCoroutine, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar) {
        JobKt.disposeOnCompletion(timeoutCoroutine, DelayKt.getDelay(timeoutCoroutine.uCont.getContext()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine, timeoutCoroutine.getContext()));
        return UndispatchedKt.startUndispatchedOrReturnIgnoreTimeout(timeoutCoroutine, timeoutCoroutine, pVar);
    }

    public static final <T> Object withTimeout(long j10, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar, d<? super T> dVar) {
        if (j10 <= 0) {
            throw new TimeoutCancellationException("Timed out immediately");
        }
        Object obj = setupTimeout(new TimeoutCoroutine(j10, dVar), pVar);
        if (obj == a.COROUTINE_SUSPENDED) {
            h.j(dVar, "frame");
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0068 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.TimeoutCoroutine] */
    public static final <T> Object withTimeoutOrNull(long j10, p<? super CoroutineScope, ? super d<? super T>, ? extends Object> pVar, d<? super T> dVar) throws Throwable {
        AnonymousClass1 anonymousClass1;
        w wVar;
        if (dVar instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) dVar;
            int i10 = anonymousClass1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i10 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(dVar);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(dVar);
        }
        Object obj = anonymousClass1.result;
        a aVar = a.COROUTINE_SUSPENDED;
        int i11 = anonymousClass1.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            wVar = (w) anonymousClass1.L$1;
            try {
                d3.e.p(obj);
            } catch (TimeoutCancellationException e10) {
                e = e10;
                if (e.coroutine == wVar.f14795h) {
                    return null;
                }
                throw e;
            }
        }
        d3.e.p(obj);
        if (j10 <= 0) {
            return null;
        }
        w wVar2 = new w();
        try {
            anonymousClass1.L$0 = pVar;
            anonymousClass1.L$1 = wVar2;
            anonymousClass1.J$0 = j10;
            anonymousClass1.label = 1;
            ?? r10 = (T) new TimeoutCoroutine(j10, anonymousClass1);
            wVar2.f14795h = r10;
            obj = setupTimeout(r10, pVar);
            return obj == aVar ? aVar : obj;
        } catch (TimeoutCancellationException e11) {
            e = e11;
            wVar = wVar2;
            if (e.coroutine == wVar.f14795h) {
                return null;
            }
            throw e;
        }
    }
}
