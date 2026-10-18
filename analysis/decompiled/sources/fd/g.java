package fd;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: LazyJVM.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g<T> implements d<T>, Serializable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater<g<?>, Object> f7391j = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "i");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile qd.a<? extends T> f7392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile Object f7393i;

    public g(qd.a<? extends T> aVar) {
        p4.h.j(aVar, "initializer");
        this.f7392h = aVar;
        this.f7393i = p4.h.f13011h;
    }

    @Override // fd.d
    public final T getValue() {
        boolean z10;
        T t10 = (T) this.f7393i;
        p4.h hVar = p4.h.f13011h;
        if (t10 != hVar) {
            return t10;
        }
        qd.a<? extends T> aVar = this.f7392h;
        if (aVar != null) {
            T tInvoke = aVar.invoke();
            AtomicReferenceFieldUpdater<g<?>, Object> atomicReferenceFieldUpdater = f7391j;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, hVar, tInvoke)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != hVar) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                this.f7392h = null;
                return tInvoke;
            }
        }
        return (T) this.f7393i;
    }

    public final String toString() {
        return this.f7393i != p4.h.f13011h ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
