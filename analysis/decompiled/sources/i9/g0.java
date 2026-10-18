package i9;

import com.nike.adapt.analytics.TrackManager;

/* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final g0 f8913h = new g0();

    public g0() {
        super(1);
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        p4.h.j(dVar, "it");
        o7.x.f12420a.a("Welcome - Pressed: Logout");
        TrackManager.INSTANCE.isPairingLogout();
        s9.m mVar = s9.m.f15208a;
        s9.m.b(true, false, 6);
        return fd.o.f7408a;
    }
}
