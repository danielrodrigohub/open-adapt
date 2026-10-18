package w9;

import java.util.Objects;
import v9.z5;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i1 extends rd.o implements qd.l<ya.b, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a f17289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ z5 f17290i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(a aVar, z5 z5Var) {
        super(1);
        this.f17289h = aVar;
        this.f17290i = z5Var;
    }

    @Override // qd.l
    public final fd.o invoke(ya.b bVar) {
        ya.b bVar2 = bVar;
        p4.h.j(bVar2, "$this$null");
        v9.a aVar = this.f17289h.f17253h;
        Objects.requireNonNull(this.f17290i);
        bVar2.z(aVar);
        return fd.o.f7408a;
    }
}
