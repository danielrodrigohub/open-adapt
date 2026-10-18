package m9;

/* JADX INFO: compiled from: FirmwareUpdateAvailableFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ o f10907h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(o oVar) {
        super(1);
        this.f10907h = oVar;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        dVar2.dismiss();
        o7.l.f12400a.b(this.f10907h.d0());
        return fd.o.f7408a;
    }
}
