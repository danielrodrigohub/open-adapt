package w9;

import java.util.concurrent.atomic.AtomicBoolean;
import v9.h2;
import v9.y1;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q1 extends rd.o implements qd.l<h2<y1>, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f17346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ v9.a f17347i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ jd.d<ba.e> f17348j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public q1(AtomicBoolean atomicBoolean, v9.a aVar, jd.d<? super ba.e> dVar) {
        super(1);
        this.f17346h = atomicBoolean;
        this.f17347i = aVar;
        this.f17348j = dVar;
    }

    @Override // qd.l
    public final fd.o invoke(h2<y1> h2Var) {
        h2<y1> h2Var2 = h2Var;
        p4.h.j(h2Var2, "$this$null");
        h2Var2.f16583c = new p1(this.f17346h, this.f17347i, this.f17348j);
        return fd.o.f7408a;
    }
}
