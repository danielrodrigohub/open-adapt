package m9;

import androidx.appcompat.widget.SwitchCompat;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.settings.SettingsNotificationsActivity;

/* JADX INFO: compiled from: SettingsNotificationsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f10836h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SettingsNotificationsActivity f10837i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(SwitchCompat switchCompat, SettingsNotificationsActivity settingsNotificationsActivity) {
        super(1);
        this.f10836h = switchCompat;
        this.f10837i = settingsNotificationsActivity;
    }

    @Override // qd.l
    public final fd.o invoke(androidx.appcompat.app.d dVar) {
        androidx.appcompat.app.d dVar2 = dVar;
        p4.h.j(dVar2, "it");
        TrackManager.INSTANCE.allowNotificationsSettingsSelected();
        dVar2.dismiss();
        this.f10836h.setChecked(false);
        o7.l.f12400a.b(this.f10837i);
        return fd.o.f7408a;
    }
}
