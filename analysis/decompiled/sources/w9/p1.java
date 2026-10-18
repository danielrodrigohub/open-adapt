package w9;

import java.util.concurrent.atomic.AtomicBoolean;
import v9.y1;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p1 extends rd.o implements qd.p<y1, u1, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f17340h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ v9.a f17341i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ jd.d<ba.e> f17342j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public p1(AtomicBoolean atomicBoolean, v9.a aVar, jd.d<? super ba.e> dVar) {
        super(2);
        this.f17340h = atomicBoolean;
        this.f17341i = aVar;
        this.f17342j = dVar;
    }

    @Override // qd.p
    public final fd.o invoke(y1 y1Var, u1 u1Var) {
        y1 y1Var2 = y1Var;
        p4.h.j(y1Var2, "result");
        p4.h.j(u1Var, "<anonymous parameter 1>");
        if (!this.f17340h.getAndSet(true) && p4.h.c(y1Var2.f16927m, this.f17341i)) {
            this.f17342j.resumeWith(y1Var2.f16928n);
        }
        return fd.o.f7408a;
    }
}
