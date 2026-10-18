package n8;

import com.nike.adapt.service.FirmwareUpdateService;
import java.util.Timer;
import java.util.TimerTask;
import o7.x;

/* JADX INFO: compiled from: FirmwareUpdateService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n extends TimerTask {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateService f12022h;

    public n(FirmwareUpdateService firmwareUpdateService) {
        this.f12022h = firmwareUpdateService;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        x.f12420a.a("FirmwareUpdateCrumb " + this.f12022h.f5689h + " startRequestConnectionTimer 30000 milliseconds has passed");
        FirmwareUpdateService firmwareUpdateService = this.f12022h;
        Timer timer = firmwareUpdateService.f5695n;
        if (timer != null) {
            timer.cancel();
        }
        firmwareUpdateService.f5695n = null;
        Timer timer2 = new Timer("fw_upgrade_connection_timeout_timer");
        timer2.schedule(new m(firmwareUpdateService), 90000L);
        firmwareUpdateService.f5695n = timer2;
    }
}
