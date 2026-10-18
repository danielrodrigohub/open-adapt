package w9;

import java.util.Objects;
import v9.s6;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m1 extends rd.o implements qd.l<ya.b, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a f17326h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ s6 f17327i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m1(a aVar, s6 s6Var) {
        super(1);
        this.f17326h = aVar;
        this.f17327i = s6Var;
    }

    @Override // qd.l
    public final fd.o invoke(ya.b bVar) {
        ya.b bVar2 = bVar;
        p4.h.j(bVar2, "$this$null");
        v9.a aVar = this.f17326h.f17253h;
        Objects.requireNonNull(this.f17327i);
        bVar2.p(aVar);
        return fd.o.f7408a;
    }
}
