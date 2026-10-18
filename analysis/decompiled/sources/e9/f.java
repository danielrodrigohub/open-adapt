package e9;

import android.view.View;
import com.nike.adapt.ui.requirements.AdaptRequirementsActivity;
import com.nike.adapt.ui.settings.SettingsAboutActivity;
import com.nike.adapt.ui.settings.SupportDeleteAccountActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import h9.k0;
import o7.x;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f6573h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f6574i;

    public /* synthetic */ f(Object obj, int i10) {
        this.f6573h = i10;
        this.f6574i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f6573h) {
            case 0:
                i iVar = (i) this.f6574i;
                p4.h.j(iVar, "this$0");
                iVar.f6584d.U();
                break;
            case 1:
                AdaptRequirementsActivity adaptRequirementsActivity = (AdaptRequirementsActivity) this.f6574i;
                int i10 = AdaptRequirementsActivity.C;
                p4.h.j(adaptRequirementsActivity, "this$0");
                x.f12420a.a("Pressed: Permission Required");
                adaptRequirementsActivity.requestPermissions(new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 23);
                break;
            case 2:
                SettingsAboutActivity settingsAboutActivity = (SettingsAboutActivity) this.f6574i;
                int i11 = SettingsAboutActivity.B;
                p4.h.j(settingsAboutActivity, "this$0");
                k0.f8339c.e(settingsAboutActivity);
                break;
            case 3:
                SupportDeleteAccountActivity supportDeleteAccountActivity = (SupportDeleteAccountActivity) this.f6574i;
                int i12 = SupportDeleteAccountActivity.E;
                p4.h.j(supportDeleteAccountActivity, "this$0");
                supportDeleteAccountActivity.onBackPressed();
                break;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f6574i;
                int i13 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                x.f12420a.a("Pressed: Battery");
                p4.h.i(view, "view");
                f1.b.c(view, new o9.h(shoeControllerActivity));
                break;
        }
    }
}
