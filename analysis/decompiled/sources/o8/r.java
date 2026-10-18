package o8;

import com.nike.adapt.service.AdaptAuthenticationService;
import com.nike.adapt.ui.PairingActivity;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PairingActivity f12479h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ n3.r f12480i;

    public r(PairingActivity pairingActivity, n3.r rVar) {
        this.f12479h = pairingActivity;
        this.f12480i = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int iA = q.g.a(this.f12479h.O);
        if (iA == 0) {
            PairingActivity pairingActivity = this.f12479h;
            if (pairingActivity.Q > 30) {
                pairingActivity.Q = 0;
                pairingActivity.p0();
                PairingActivity pairingActivity2 = this.f12479h;
                AdaptAuthenticationService adaptAuthenticationService = pairingActivity2.G;
                pairingActivity2.r0();
            } else if (this.f12480i.b0() > 8800) {
                this.f12479h.Q++;
                this.f12480i.R(7500L);
            }
        } else if (iA == 1 && this.f12480i.b0() > 16360) {
            this.f12480i.R(13200L);
        }
        this.f12479h.U.post(this);
    }
}
