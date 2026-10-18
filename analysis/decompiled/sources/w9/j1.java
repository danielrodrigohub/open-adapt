package w9;

import java.util.Objects;
import v9.e6;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j1 extends rd.o implements qd.l<ya.b, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ e6 f17294h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ a f17295i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j1(e6 e6Var, a aVar) {
        super(1);
        this.f17294h = e6Var;
        this.f17295i = aVar;
    }

    @Override // qd.l
    public final fd.o invoke(ya.b bVar) {
        ya.b bVar2 = bVar;
        p4.h.j(bVar2, "$this$null");
        Objects.requireNonNull(this.f17294h);
        bVar2.W(this.f17295i.f17253h);
        return fd.o.f7408a;
    }
}
