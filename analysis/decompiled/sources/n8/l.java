package n8;

import com.nike.adapt.service.FirmwareUpdateService;
import java.util.TimerTask;

/* JADX INFO: compiled from: FirmwareUpdateService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l extends TimerTask {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f12018h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateService f12019i;

    public l(FirmwareUpdateService firmwareUpdateService) {
        this.f12019i = firmwareUpdateService;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        float f10 = this.f12018h;
        FirmwareUpdateService firmwareUpdateService = this.f12019i;
        float f11 = firmwareUpdateService.f5697p;
        if ((f10 == f11) || f11 < 0.01f) {
            FirmwareUpdateService.b(firmwareUpdateService, "Firmware not progressing timeout");
            FirmwareUpdateService.a(this.f12019i, "FW_PROGRESS_ERROR");
            cancel();
        }
        this.f12018h = this.f12019i.f5697p;
    }
}
