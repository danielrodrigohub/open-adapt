package w9;

import java.util.Objects;
import v9.s5;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g1 extends rd.o implements qd.l<ya.b, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a f17280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ s5 f17281i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(a aVar, s5 s5Var) {
        super(1);
        this.f17280h = aVar;
        this.f17281i = s5Var;
    }

    @Override // qd.l
    public final fd.o invoke(ya.b bVar) {
        ya.b bVar2 = bVar;
        p4.h.j(bVar2, "$this$null");
        v9.a aVar = this.f17280h.f17253h;
        Objects.requireNonNull(this.f17281i);
        bVar2.X(aVar);
        return fd.o.f7408a;
    }
}
