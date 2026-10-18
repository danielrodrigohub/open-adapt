package m9;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.settings.FirmwareUpdateActivity;

/* JADX INFO: compiled from: FirmwareUpdateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateActivity f10873h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(FirmwareUpdateActivity firmwareUpdateActivity) {
        super(1);
        this.f10873h = firmwareUpdateActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        o7.x.f12420a.a("FirmwareUpdateCrumb Firmware Update Get Help: FW_STATS");
        dVar2.dismiss();
        TrackManager.INSTANCE.isSoftwareUpdateErrorThrownSecondTryGetHelp();
        new h9.g0(h9.g0.f8326f.a(), false).e(this.f10873h);
        this.f10873h.G(s9.z.CHECK_FOR_UPDATE);
        return fd.o.f7408a;
    }
}
