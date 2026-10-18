package ab;

import ea.p;
import qd.l;
import rd.o;
import v9.p0;

/* JADX INFO: compiled from: AdaptKitPairedDevicesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends o implements l<Throwable, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ p0<p, ea.o> f571h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ v9.a f572i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(p0<p, ea.o> p0Var, v9.a aVar) {
        super(1);
        this.f571h = p0Var;
        this.f572i = aVar;
    }

    @Override // qd.l
    public final fd.o invoke(Throwable th) {
        Throwable th2 = th;
        p4.h.j(th2, "it");
        this.f571h.b(new ea.o(this.f572i, th2));
        return fd.o.f7408a;
    }
}
