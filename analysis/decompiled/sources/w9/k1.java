package w9;

import java.util.Objects;
import v9.i6;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k1 extends rd.o implements qd.l<ya.b, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a f17299h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ i6 f17300i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k1(a aVar, i6 i6Var) {
        super(1);
        this.f17299h = aVar;
        this.f17300i = i6Var;
    }

    @Override // qd.l
    public final fd.o invoke(ya.b bVar) {
        ya.b bVar2 = bVar;
        p4.h.j(bVar2, "$this$null");
        v9.a aVar = this.f17299h.f17253h;
        Objects.requireNonNull(this.f17300i);
        bVar2.w(aVar);
        return fd.o.f7408a;
    }
}
