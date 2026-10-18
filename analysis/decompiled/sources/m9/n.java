package m9;

import com.nike.adapt.ui.settings.FirmwareUpdateActivity;

/* JADX INFO: compiled from: FirmwareUpdateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateActivity f10891h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(FirmwareUpdateActivity firmwareUpdateActivity) {
        super(1);
        this.f10891h = firmwareUpdateActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        dVar2.dismiss();
        this.f10891h.G(s9.z.CHECK_FOR_UPDATE);
        return fd.o.f7408a;
    }
}
