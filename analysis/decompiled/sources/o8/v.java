package o8;

import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.PairingActivity;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12484h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(PairingActivity pairingActivity) {
        super(1);
        this.f12484h = pairingActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        TrackManager.INSTANCE.pairingConnectionErrorReconnect();
        PairingActivity pairingActivity = this.f12484h;
        int i10 = PairingActivity.Y;
        pairingActivity.q0();
        dVar2.dismiss();
        return fd.o.f7408a;
    }
}
