package o8;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.LoginActivity;
import com.nike.adapt.ui.settings.SettingsPrivacyActivity;
import com.nike.adapt.ui.util.AdjustLacingActivity;
import h9.p0;
import q7.m0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f12467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f12468i;

    public /* synthetic */ k(Object obj, int i10) {
        this.f12467h = i10;
        this.f12468i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12467h) {
            case 0:
                LoginActivity loginActivity = (LoginActivity) this.f12468i;
                int i10 = LoginActivity.C;
                p4.h.j(loginActivity, "this$0");
                TrackManager.INSTANCE.isShopNowSelected();
                o7.x.f12420a.a("Pressed: Shop Now");
                try {
                    Uri uri = Uri.parse("https://www.nike.com/adapt");
                    p4.h.i(uri, "parse(UrlUtil.LEARN_MORE_URL)");
                    Context context = view.getContext();
                    p4.h.i(context, "it.context");
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(268435456);
                    intent.addFlags(1073741824);
                    intent.addFlags(8388608);
                    intent.addCategory("android.intent.category.BROWSABLE");
                    intent.setData(uri);
                    context.startActivity(intent);
                    return;
                } catch (Exception unused) {
                    new p0(v7.m.LEARN_MORE).e(loginActivity);
                    return;
                }
            case 1:
                e9.i iVar = (e9.i) this.f12468i;
                p4.h.j(iVar, "this$0");
                iVar.f6584d.l();
                return;
            case 2:
                m9.o oVar = (m9.o) this.f12468i;
                m9.o.a aVar = m9.o.f10893p0;
                p4.h.j(oVar, "this$0");
                o7.l lVar = o7.l.f12400a;
                if (lVar.c(lVar.a())) {
                    oVar.u0();
                    return;
                } else {
                    s9.y.d(s9.y.f15252a, oVar.d0(), R.string.aos_adapt_notifications_firmware_disabled_dialog_title, null, R.string.aos_adapt_notifications_firmware_disabled_dialog_description, 0, R.string.aos_adapt_notifications_firmware_disabled_dialog_continue, R.string.adapt_notifications_disabled_dialog_settings, true, new m9.p(oVar), new m9.q(oVar), new s9.y.a("ALLOW_ADAPT_NOTIFICATIONS", "SETTINGS", "TRY_LATER", 8), 20);
                    return;
                }
            case 3:
                SettingsPrivacyActivity settingsPrivacyActivity = (SettingsPrivacyActivity) this.f12468i;
                int i11 = SettingsPrivacyActivity.D;
                p4.h.j(settingsPrivacyActivity, "this$0");
                settingsPrivacyActivity.m0(false);
                TrackManager trackManager = TrackManager.INSTANCE;
                m0 m0Var = settingsPrivacyActivity.A;
                if (m0Var == null) {
                    p4.h.C("binding");
                    throw null;
                }
                trackManager.dataOptInToggleSelected(!m0Var.f13926c.isChecked());
                settingsPrivacyActivity.l0(true, false);
                return;
            default:
                AdjustLacingActivity adjustLacingActivity = (AdjustLacingActivity) this.f12468i;
                int i12 = AdjustLacingActivity.Q;
                p4.h.j(adjustLacingActivity, "this$0");
                adjustLacingActivity.setResult(-1, new Intent());
                adjustLacingActivity.finish();
                return;
        }
    }
}
