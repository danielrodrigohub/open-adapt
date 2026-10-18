package m9;

import androidx.appcompat.widget.SwitchCompat;
import com.nike.adapt.analytics.TrackManager;

/* JADX INFO: compiled from: SettingsNotificationsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f10834h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(SwitchCompat switchCompat) {
        super(1);
        this.f10834h = switchCompat;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        TrackManager.INSTANCE.allowNotificationsDismissSelected();
        dVar2.dismiss();
        this.f10834h.setChecked(false);
        return fd.o.f7408a;
    }
}
