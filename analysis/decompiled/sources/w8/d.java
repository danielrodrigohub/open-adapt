package w8;

import com.nike.adapt.analytics.TrackManager;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: GestureKtx.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends o implements l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f17244h = new d();

    public d() {
        super(1);
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "alertDialog");
        dVar2.dismiss();
        TrackManager.INSTANCE.gesturesErrorUserSelectsOk();
        return fd.o.f7408a;
    }
}
