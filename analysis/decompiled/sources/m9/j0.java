package m9;

import com.nike.adapt.analytics.TrackManager;

/* JADX INFO: compiled from: ShoeProfileActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final j0 f10876h = new j0();

    public j0() {
        super(1);
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "dialog");
        TrackManager.INSTANCE.multipairConnectedCancel();
        dVar2.dismiss();
        return fd.o.f7408a;
    }
}
