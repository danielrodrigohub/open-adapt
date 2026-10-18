package n8;

import com.nike.adapt.service.FirmwareUpdateService;
import java.util.TimerTask;
import o7.x;

/* JADX INFO: compiled from: FirmwareUpdateService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends TimerTask {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateService f12020h;

    /* JADX INFO: compiled from: FirmwareUpdateService.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ FirmwareUpdateService f12021h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(FirmwareUpdateService firmwareUpdateService) {
            super(0);
            this.f12021h = firmwareUpdateService;
        }

        @Override // qd.a
        public final fd.o invoke() {
            FirmwareUpdateService firmwareUpdateService = this.f12021h;
            FirmwareUpdateService.a aVar = FirmwareUpdateService.f5688s;
            firmwareUpdateService.f(3);
            return fd.o.f7408a;
        }
    }

    public m(FirmwareUpdateService firmwareUpdateService) {
        this.f12020h = firmwareUpdateService;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        x.f12420a.a("FirmwareUpdateCrumb " + this.f12020h.f5689h + " startRequestConnectionTimeoutTimer handleComplete");
        FirmwareUpdateService firmwareUpdateService = this.f12020h;
        firmwareUpdateService.d(new a(firmwareUpdateService));
    }
}
