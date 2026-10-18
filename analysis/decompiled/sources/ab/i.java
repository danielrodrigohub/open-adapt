package ab;

import ea.p;
import ea.x;
import java.util.List;
import qd.l;
import rd.o;
import v9.p0;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends o implements l<List<? extends va.d>, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ p0<p, ea.o> f580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ v9.a f581i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(p0<p, ea.o> p0Var, v9.a aVar) {
        super(1);
        this.f580h = p0Var;
        this.f581i = aVar;
    }

    @Override // qd.l
    public final fd.o invoke(List<? extends va.d> list) {
        List<? extends va.d> list2 = list;
        p4.h.j(list2, "it");
        v9.d.a.a(d3.e.j(), "AdaptKitPairedDevicesRepositoryImpl", "getPairedDevices about to send " + list2 + " in onResult pushedChanges=true", null, 4, null);
        this.f580h.a(new x(this.f581i, p4.h.y(b.f555b.h().c(false))));
        return fd.o.f7408a;
    }
}
