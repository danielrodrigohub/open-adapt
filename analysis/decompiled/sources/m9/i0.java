package m9;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.settings.ShoeProfileActivity;

/* JADX INFO: compiled from: ShoeProfileActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ShoeProfileActivity f10874h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(ShoeProfileActivity shoeProfileActivity) {
        super(0);
        this.f10874h = shoeProfileActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        TrackManager.INSTANCE.gestureFirmwareUpdateToastSelected();
        new h9.n(true, false).e(this.f10874h);
        return fd.o.f7408a;
    }
}
