package z8;

import android.content.Intent;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.view.View;
import androidx.lifecycle.o;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import com.nike.adapt.ui.settings.SettingsAboutActivity;
import com.nike.adapt.ui.settings.SettingsSupportActivity;
import h9.n0;
import h9.t;
import i9.e0;
import i9.f0;
import i9.g0;
import s9.y;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f19404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f19405i;

    public /* synthetic */ f(Object obj, int i10) {
        this.f19404h = i10;
        this.f19405i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        s9.f fVar;
        switch (this.f19404h) {
            case 0:
                LightPacksActivity lightPacksActivity = (LightPacksActivity) this.f19405i;
                LightPacksActivity.a aVar = LightPacksActivity.f5779g0;
                p4.h.j(lightPacksActivity, "this$0");
                if (!lightPacksActivity.X) {
                    t.f8358c.e(lightPacksActivity);
                }
                break;
            case 1:
                e0 e0Var = (e0) this.f19405i;
                int i10 = e0.f8861p0;
                p4.h.j(e0Var, "this$0");
                y.f15252a.h(e0Var.d0(), f0.f8888h, g0.f8913h);
                break;
            case 2:
                SettingsAboutActivity settingsAboutActivity = (SettingsAboutActivity) this.f19405i;
                int i11 = SettingsAboutActivity.B;
                p4.h.j(settingsAboutActivity, "this$0");
                new n0(v7.n.ABOUT_THIS_VERSION).e(settingsAboutActivity);
                break;
            case 3:
                SettingsSupportActivity settingsSupportActivity = (SettingsSupportActivity) this.f19405i;
                int i12 = SettingsSupportActivity.B;
                p4.h.j(settingsSupportActivity, "this$0");
                int i13 = 0;
                String country = settingsSupportActivity.getResources().getConfiguration().getLocales().get(0).getCountry();
                p4.h.i(country, "countryCode");
                s9.f[] fVarArrValues = s9.f.values();
                int length = fVarArrValues.length;
                while (true) {
                    if (i13 < length) {
                        fVar = fVarArrValues[i13];
                        if (!p4.h.c(fVar.f15193h, country)) {
                            i13++;
                        }
                    } else {
                        fVar = s9.f.USA;
                    }
                }
                String strStripSeparators = PhoneNumberUtils.stripSeparators(o.r(fVar.f15194i));
                Intent intent = new Intent("android.intent.action.DIAL");
                intent.setData(Uri.parse("tel: " + strStripSeparators));
                if (intent.resolveActivity(settingsSupportActivity.getPackageManager()) != null) {
                    settingsSupportActivity.startActivity(intent);
                }
                break;
            default:
                p9.d dVar = (p9.d) this.f19405i;
                int i14 = p9.d.C;
                p4.h.j(dVar, "this$0");
                qd.a<fd.o> aVar2 = dVar.f13373i;
                if (aVar2 != null) {
                    aVar2.invoke();
                }
                break;
        }
    }
}
