package w9;

import java.util.concurrent.atomic.AtomicBoolean;
import v9.g2;
import v9.w1;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s1 extends rd.o implements qd.l<g2<w1>, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f17356h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ v9.a f17357i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ jd.d<ba.e> f17358j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public s1(AtomicBoolean atomicBoolean, v9.a aVar, jd.d<? super ba.e> dVar) {
        super(1);
        this.f17356h = atomicBoolean;
        this.f17357i = aVar;
        this.f17358j = dVar;
    }

    @Override // qd.l
    public final fd.o invoke(g2<w1> g2Var) {
        g2<w1> g2Var2 = g2Var;
        p4.h.j(g2Var2, "$this$null");
        g2Var2.f16565b = new r1(this.f17356h, this.f17357i, this.f17358j);
        return fd.o.f7408a;
    }
}
