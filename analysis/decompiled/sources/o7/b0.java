package o7;

import com.nike.adapt.SplashScreenActivity;
import com.nike.adapt.analytics.TrackManager;
import n3.o1;

/* JADX INFO: compiled from: SplashScreenActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 implements o1.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SplashScreenActivity f12368h;

    public b0(SplashScreenActivity splashScreenActivity) {
        this.f12368h = splashScreenActivity;
    }

    @Override // n3.o1.c
    public final void U(int i10) {
        if (i10 != 4 || this.f12368h.I == 0) {
            return;
        }
        TrackManager.INSTANCE.isOnboardingVideoCompleted();
        this.f12368h.m0().A();
        this.f12368h.n0();
    }
}
