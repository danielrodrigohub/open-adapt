package m9;

/* JADX INFO: compiled from: FirmwareCheckForUpdatesFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ e f10864h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e eVar) {
        super(0);
        this.f10864h = eVar;
    }

    @Override // qd.a
    public final fd.o invoke() {
        androidx.fragment.app.p pVarI = this.f10864h.i();
        if (pVarI != null) {
            pVarI.finish();
        }
        return fd.o.f7408a;
    }
}
