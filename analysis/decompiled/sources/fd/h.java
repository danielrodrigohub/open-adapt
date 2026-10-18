package fd;

import java.io.Serializable;

/* JADX INFO: compiled from: LazyJVM.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h<T> implements d<T>, Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public qd.a<? extends T> f7394h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile Object f7395i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f7396j;

    public h(qd.a aVar) {
        p4.h.j(aVar, "initializer");
        this.f7394h = aVar;
        this.f7395i = p4.h.f13011h;
        this.f7396j = this;
    }

    @Override // fd.d
    public final T getValue() {
        T tInvoke;
        T t10 = (T) this.f7395i;
        p4.h hVar = p4.h.f13011h;
        if (t10 != hVar) {
            return t10;
        }
        synchronized (this.f7396j) {
            tInvoke = (T) this.f7395i;
            if (tInvoke == hVar) {
                qd.a<? extends T> aVar = this.f7394h;
                p4.h.g(aVar);
                tInvoke = aVar.invoke();
                this.f7395i = tInvoke;
                this.f7394h = null;
            }
        }
        return tInvoke;
    }

    public final String toString() {
        return this.f7395i != p4.h.f13011h ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
