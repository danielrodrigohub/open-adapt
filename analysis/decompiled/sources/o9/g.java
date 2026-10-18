package o9;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12507h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(ShoeControllerActivity shoeControllerActivity) {
        super(0);
        this.f12507h = shoeControllerActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        TrackManager.gestureEnabledToastSelected$default(TrackManager.INSTANCE, null, 1, null);
        h9.o.f8346c.e(this.f12507h);
        return fd.o.f7408a;
    }
}
