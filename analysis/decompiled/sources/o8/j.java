package o8;

import android.view.View;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.LoginActivity;
import com.nike.adapt.ui.settings.SettingsPartnersActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import h9.b0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f12465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ f.e f12466i;

    public /* synthetic */ j(f.e eVar, int i10) {
        this.f12465h = i10;
        this.f12466i = eVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12465h) {
            case 0:
                LoginActivity loginActivity = (LoginActivity) this.f12466i;
                int i10 = LoginActivity.C;
                p4.h.j(loginActivity, "this$0");
                TrackManager.INSTANCE.isLoginStarted();
                o7.x.f12420a.a("Pressed: Login");
                h9.d.f8319c.e(loginActivity);
                break;
            case 1:
                SettingsPartnersActivity settingsPartnersActivity = (SettingsPartnersActivity) this.f12466i;
                int i11 = SettingsPartnersActivity.D;
                p4.h.j(settingsPartnersActivity, "this$0");
                settingsPartnersActivity.l0(settingsPartnersActivity.C);
                break;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f12466i;
                int i12 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                b0.f8315c.e(shoeControllerActivity);
                break;
        }
    }
}
