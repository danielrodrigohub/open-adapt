package w9;

import java.util.UUID;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k0 extends rd.o implements qd.l<ya.b, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ x f17297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ a f17298i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(x xVar, a aVar) {
        super(1);
        this.f17297h = xVar;
        this.f17298i = aVar;
    }

    @Override // qd.l
    public final fd.o invoke(ya.b bVar) {
        ya.b bVar2 = bVar;
        p4.h.j(bVar2, "$this$null");
        x xVar = this.f17297h;
        ea.m mVar = xVar.f17392l;
        ea.b bVar3 = mVar.f6667k;
        String string = UUID.randomUUID().toString();
        p4.h.i(string, "toString()");
        ea.b bVarA = ea.b.a(bVar3, string, null, 0, false, 55);
        ea.b bVar4 = mVar.f6668l;
        String string2 = UUID.randomUUID().toString();
        p4.h.i(string2, "toString()");
        xVar.updatePair(ea.m.a(mVar, null, false, bVarA, ea.b.a(bVar4, string2, null, 0, false, 55), null, null, null, System.currentTimeMillis(), false, 6119));
        bVar2.q(this.f17298i.f17253h);
        return fd.o.f7408a;
    }
}
