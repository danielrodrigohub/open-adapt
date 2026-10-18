package jd;

import java.io.Serializable;
import qd.p;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h implements f, Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final h f9512h = new h();

    @Override // jd.f
    public final <R> R fold(R r10, p<? super R, ? super f.a, ? extends R> pVar) {
        p4.h.j(pVar, "operation");
        return r10;
    }

    @Override // jd.f
    public final <E extends f.a> E get(f.b<E> bVar) {
        p4.h.j(bVar, "key");
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // jd.f
    public final f minusKey(f.b<?> bVar) {
        p4.h.j(bVar, "key");
        return this;
    }

    @Override // jd.f
    public final f plus(f fVar) {
        p4.h.j(fVar, "context");
        return fVar;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
