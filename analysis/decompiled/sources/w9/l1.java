package w9;

import java.util.Objects;
import v9.l6;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l1 extends rd.o implements qd.l<ya.b, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a f17304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ l6 f17305i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l1(a aVar, l6 l6Var) {
        super(1);
        this.f17304h = aVar;
        this.f17305i = l6Var;
    }

    @Override // qd.l
    public final fd.o invoke(ya.b bVar) {
        ya.b bVar2 = bVar;
        p4.h.j(bVar2, "$this$null");
        v9.a aVar = this.f17304h.f17253h;
        Objects.requireNonNull(this.f17305i);
        bVar2.G(aVar);
        return fd.o.f7408a;
    }
}
