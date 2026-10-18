package w9;

import java.util.Objects;
import v9.w5;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h1 extends rd.o implements qd.l<ya.b, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a f17284h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ w5 f17285i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(a aVar, w5 w5Var) {
        super(1);
        this.f17284h = aVar;
        this.f17285i = w5Var;
    }

    @Override // qd.l
    public final fd.o invoke(ya.b bVar) {
        ya.b bVar2 = bVar;
        p4.h.j(bVar2, "$this$null");
        v9.a aVar = this.f17284h.f17253h;
        Objects.requireNonNull(this.f17285i);
        bVar2.E(aVar);
        return fd.o.f7408a;
    }
}
