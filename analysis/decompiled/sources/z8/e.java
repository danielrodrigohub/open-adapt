package z8;

import android.view.View;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import com.nike.adapt.ui.settings.SettingsAboutActivity;
import com.nike.adapt.ui.settings.SettingsSupportActivity;
import fd.o;
import h9.p0;
import h9.u;
import h9.x0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f19402h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f19403i;

    public /* synthetic */ e(Object obj, int i10) {
        this.f19402h = i10;
        this.f19403i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f19402h) {
            case 0:
                LightPacksActivity lightPacksActivity = (LightPacksActivity) this.f19403i;
                LightPacksActivity.a aVar = LightPacksActivity.f5779g0;
                p4.h.j(lightPacksActivity, "this$0");
                if (!lightPacksActivity.X) {
                    u.f8360c.e(lightPacksActivity);
                }
                break;
            case 1:
                SettingsAboutActivity settingsAboutActivity = (SettingsAboutActivity) this.f19403i;
                int i10 = SettingsAboutActivity.B;
                p4.h.j(settingsAboutActivity, "this$0");
                new p0(v7.m.PRIVACY_POLICY).e(settingsAboutActivity);
                break;
            case 2:
                SettingsSupportActivity settingsSupportActivity = (SettingsSupportActivity) this.f19403i;
                int i11 = SettingsSupportActivity.B;
                p4.h.j(settingsSupportActivity, "this$0");
                x0.f8368c.e(settingsSupportActivity);
                break;
            default:
                p9.d dVar = (p9.d) this.f19403i;
                int i12 = p9.d.C;
                p4.h.j(dVar, "this$0");
                if (dVar.B) {
                    qd.a<o> aVar2 = dVar.f13374j;
                    if (aVar2 != null) {
                        aVar2.invoke();
                    }
                    dVar.c();
                }
                break;
        }
    }
}
