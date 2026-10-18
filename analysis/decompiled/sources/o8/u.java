package o8;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.service.AdaptAuthenticationService;
import com.nike.adapt.ui.PairingActivity;
import h9.g0;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12483h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(PairingActivity pairingActivity) {
        super(1);
        this.f12483h = pairingActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        TrackManager.INSTANCE.pairingConnectionErrorGetHelp();
        new g0(g0.f8326f.a(), false).e(this.f12483h);
        dVar2.dismiss();
        AdaptAuthenticationService adaptAuthenticationService = this.f12483h.G;
        if (adaptAuthenticationService != null) {
            adaptAuthenticationService.stopSelf();
        }
        return fd.o.f7408a;
    }
}
