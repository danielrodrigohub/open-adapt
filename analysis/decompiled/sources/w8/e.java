package w8;

import android.app.Activity;
import com.nike.adapt.analytics.TrackManager;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: GestureKtx.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends o implements l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Activity f17245h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Activity activity) {
        super(1);
        this.f17245h = activity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "alertDialog");
        h9.o.f8346c.e(this.f17245h);
        dVar2.dismiss();
        TrackManager.INSTANCE.gesturesErrorUserSelectsSettings();
        return fd.o.f7408a;
    }
}
