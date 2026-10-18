package n8;

import com.nike.adapt.service.FirmwareUpdateService;
import x.s;

/* JADX INFO: compiled from: FirmwareUpdateService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateService f12017h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(FirmwareUpdateService firmwareUpdateService) {
        super(0);
        this.f12017h = firmwareUpdateService;
    }

    @Override // qd.a
    public final fd.o invoke() {
        FirmwareUpdateService firmwareUpdateService = this.f12017h;
        if (firmwareUpdateService.f5698q) {
            s sVar = firmwareUpdateService.f5699r;
            if (sVar == null) {
                p4.h.C("notificationManager");
                throw null;
            }
            sVar.f17676b.cancel(null, 42069);
        } else {
            firmwareUpdateService.f(4);
        }
        return fd.o.f7408a;
    }
}
