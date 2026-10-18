package m9;

import com.nike.adapt.ui.settings.FirmwareUpdateActivity;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: compiled from: FirmwareUpdateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateActivity f10889h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(FirmwareUpdateActivity firmwareUpdateActivity) {
        super(1);
        this.f10889h = firmwareUpdateActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        p4.h.j(dVar, "it");
        o7.x.f12420a.a("FirmwareUpdateCrumb Firmware Update Restart Retry : FW_STATS");
        FirmwareUpdateActivity firmwareUpdateActivity = this.f10889h;
        FirmwareUpdateActivity.a aVar = FirmwareUpdateActivity.Q;
        BuildersKt__Builders_commonKt.launch$default(firmwareUpdateActivity.A, null, null, new l(firmwareUpdateActivity, null), 3, null);
        return fd.o.f7408a;
    }
}
