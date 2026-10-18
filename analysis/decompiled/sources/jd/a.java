package jd;

import qd.p;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements f.a {
    private final f.b<?> key;

    public a(f.b<?> bVar) {
        p4.h.j(bVar, "key");
        this.key = bVar;
    }

    @Override // jd.f
    public <R> R fold(R r10, p<? super R, ? super f.a, ? extends R> pVar) {
        p4.h.j(pVar, "operation");
        return pVar.invoke(r10, this);
    }

    @Override // jd.f.a, jd.f
    public <E extends f.a> E get(f.b<E> bVar) {
        return (E) f.a.C0183a.a(this, bVar);
    }

    @Override // jd.f.a
    public f.b<?> getKey() {
        return this.key;
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
