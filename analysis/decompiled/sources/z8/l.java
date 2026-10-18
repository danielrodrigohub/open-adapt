package z8;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import rd.o;

/* JADX INFO: compiled from: LightPacksActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ LightPacksActivity f19417h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(LightPacksActivity lightPacksActivity) {
        super(0);
        this.f19417h = lightPacksActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        new h9.n(true, false).e(this.f19417h);
        TrackManager.INSTANCE.lightPacksUpdateFirmwareToastNotificationsSelected();
        return fd.o.f7408a;
    }
}
