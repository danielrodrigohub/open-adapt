package w9;

import java.util.concurrent.atomic.AtomicBoolean;
import v9.w1;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r1 extends rd.o implements qd.l<w1, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f17351h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ v9.a f17352i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ jd.d<ba.e> f17353j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public r1(AtomicBoolean atomicBoolean, v9.a aVar, jd.d<? super ba.e> dVar) {
        super(1);
        this.f17351h = atomicBoolean;
        this.f17352i = aVar;
        this.f17353j = dVar;
    }

    @Override // qd.l
    public final fd.o invoke(w1 w1Var) {
        w1 w1Var2 = w1Var;
        p4.h.j(w1Var2, "$this$null");
        if (!this.f17351h.getAndSet(true) && p4.h.c(w1Var2.f16894o, this.f17352i)) {
            this.f17353j.resumeWith(null);
        }
        return fd.o.f7408a;
    }
}
