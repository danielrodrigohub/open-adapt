package fd;

import java.io.Serializable;

/* JADX INFO: compiled from: Lazy.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p<T> implements d<T>, Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public qd.a<? extends T> f7409h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f7410i;

    public p(qd.a<? extends T> aVar) {
        p4.h.j(aVar, "initializer");
        this.f7409h = aVar;
        this.f7410i = p4.h.f13011h;
    }

    @Override // fd.d
    public final T getValue() {
        if (this.f7410i == p4.h.f13011h) {
            qd.a<? extends T> aVar = this.f7409h;
            p4.h.g(aVar);
            this.f7410i = aVar.invoke();
            this.f7409h = null;
        }
        return (T) this.f7410i;
    }

    public final String toString() {
        return this.f7410i != p4.h.f13011h ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
