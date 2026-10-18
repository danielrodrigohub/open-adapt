package m9;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.AdaptRestartActivity;

/* JADX INFO: compiled from: FirmwareUpdateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final j f10875h = new j();

    public j() {
        super(1);
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        p4.h.j(dVar, "it");
        o7.x.f12420a.a("FirmwareUpdateCrumb Firmware Update Restart Second Error: FW_STATS");
        TrackManager.INSTANCE.softwareUpdateErrorThrownSecondTryRestart();
        AdaptRestartActivity.A.a(false, 3000L);
        return fd.o.f7408a;
    }
}
