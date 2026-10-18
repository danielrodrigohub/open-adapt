package t2;

import r2.m;
import r2.w;

/* JADX INFO: compiled from: LruResourceCache.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends l3.i<p2.f, w<?>> implements h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public h.a f15397d;

    public g(long j10) {
        super(j10);
    }

    @Override // l3.i
    public final int b(w<?> wVar) {
        w<?> wVar2 = wVar;
        if (wVar2 == null) {
            return 1;
        }
        return wVar2.a();
    }

    @Override // l3.i
    public final void c(p2.f fVar, w<?> wVar) {
        w<?> wVar2 = wVar;
        h.a aVar = this.f15397d;
        if (aVar == null || wVar2 == null) {
            return;
        }
        ((m) aVar).f14310e.a(wVar2, true);
    }
}
