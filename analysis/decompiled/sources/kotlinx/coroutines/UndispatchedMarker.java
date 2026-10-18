package kotlinx.coroutines;

import jd.f;
import p4.h;
import qd.p;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes.dex */
final class UndispatchedMarker implements f.a, f.b<UndispatchedMarker> {
    public static final UndispatchedMarker INSTANCE = new UndispatchedMarker();

    private UndispatchedMarker() {
    }

    @Override // jd.f
    public <R> R fold(R r10, p<? super R, ? super f.a, ? extends R> pVar) {
        h.j(pVar, "operation");
        return pVar.invoke(r10, this);
    }

    @Override // jd.f.a, jd.f
    public <E extends f.a> E get(f.b<E> bVar) {
        return (E) f.a.C0183a.a(this, bVar);
    }

    @Override // jd.f.a
    public f.b<?> getKey() {
        return this;
    }

    @Override // jd.f
    public f minusKey(f.b<?> bVar) {
        return f.a.C0183a.b(this, bVar);
    }

    @Override // jd.f
    public f plus(f fVar) {
        return f.a.C0183a.c(this, fVar);
    }
}
