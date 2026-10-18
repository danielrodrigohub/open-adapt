package o8;

import android.content.Intent;
import com.nike.adapt.service.AdaptAuthenticationService;
import com.nike.adapt.ui.PairingActivity;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12486h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(PairingActivity pairingActivity) {
        super(1);
        this.f12486h = pairingActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        o7.x.f12420a.a("Pairing Reset - Pressed: Settings");
        dVar2.dismiss();
        AdaptAuthenticationService adaptAuthenticationService = this.f12486h.G;
        if (adaptAuthenticationService != null) {
            adaptAuthenticationService.stopSelf();
        }
        this.f12486h.startActivityForResult(new Intent("android.settings.BLUETOOTH_SETTINGS"), 212);
        return fd.o.f7408a;
    }
}
