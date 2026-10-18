package jd;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: SafeContinuationJvm.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i<T> implements d<T>, ld.d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Deprecated
    public static final AtomicReferenceFieldUpdater<i<?>, Object> f9513i = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "result");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d<T> f9514h;
    private volatile Object result;

    /* JADX WARN: Multi-variable type inference failed */
    public i(d<? super T> dVar) {
        kd.a aVar = kd.a.UNDECIDED;
        this.f9514h = dVar;
        this.result = aVar;
    }

    public final Object a() throws Throwable {
        boolean z10;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        Object obj = this.result;
        kd.a aVar2 = kd.a.UNDECIDED;
        if (obj == aVar2) {
            AtomicReferenceFieldUpdater<i<?>, Object> atomicReferenceFieldUpdater = f9513i;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, aVar2, aVar)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != aVar2) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                return aVar;
            }
            obj = this.result;
        }
        if (obj == kd.a.RESUMED) {
            return aVar;
        }
        if (obj instanceof fd.f.a) {
            throw ((fd.f.a) obj).f7390h;
        }
        return obj;
    }

    @Override // ld.d
    public final ld.d getCallerFrame() {
        d<T> dVar = this.f9514h;
        if (dVar instanceof ld.d) {
            return (ld.d) dVar;
        }
        return null;
    }

    @Override // jd.d
    public final f getContext() {
        return this.f9514h.getContext();
    }

    @Override // jd.d
    public final void resumeWith(Object obj) {
        while (true) {
            Object obj2 = this.result;
            kd.a aVar = kd.a.UNDECIDED;
            boolean z10 = false;
            if (obj2 == aVar) {
                AtomicReferenceFieldUpdater<i<?>, Object> atomicReferenceFieldUpdater = f9513i;
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, aVar, obj)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == aVar);
                if (z10) {
                    return;
                }
            } else {
                kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
                if (obj2 != aVar2) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater<i<?>, Object> atomicReferenceFieldUpdater2 = f9513i;
                kd.a aVar3 = kd.a.RESUMED;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, aVar2, aVar3)) {
                        z10 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater2.get(this) == aVar2);
                if (z10) {
                    this.f9514h.resumeWith(obj);
                    return;
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SafeContinuation for ");
        sbC.append(this.f9514h);
        return sbC.toString();
    }
}
