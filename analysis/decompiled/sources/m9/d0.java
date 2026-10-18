package m9;

import com.nike.adapt.ui.settings.SettingsVersionInfoActivity;

/* JADX INFO: compiled from: SettingsVersionInfoActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends rd.o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SettingsVersionInfoActivity f10851h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(SettingsVersionInfoActivity settingsVersionInfoActivity) {
        super(0);
        this.f10851h = settingsVersionInfoActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        a1.d.d("No Device Found : ", this.f10851h.getClass().getSimpleName(), o7.x.f12420a);
        return fd.o.f7408a;
    }
}
