package o8;

import android.content.Intent;
import android.view.View;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.GoogleVoicePromptActivity;
import com.nike.adapt.ui.helper.NotificationToast;
import com.nike.adapt.ui.lighting.LightingActivity;
import com.nike.adapt.ui.settings.SettingsAboutActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import h9.f0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f12442h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f12443i;

    public /* synthetic */ e(Object obj, int i10) {
        this.f12442h = i10;
        this.f12443i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12442h) {
            case 0:
                GoogleVoicePromptActivity googleVoicePromptActivity = (GoogleVoicePromptActivity) this.f12443i;
                int i10 = GoogleVoicePromptActivity.F;
                p4.h.j(googleVoicePromptActivity, "this$0");
                TrackManager.INSTANCE.googleVoiceTryNow();
                googleVoicePromptActivity.startActivity(new Intent("android.intent.action.VOICE_COMMAND").setFlags(268435456));
                break;
            case 1:
                qd.a aVar = (qd.a) this.f12443i;
                int i11 = NotificationToast.f5755k;
                p4.h.j(aVar, "$onClick");
                aVar.invoke();
                break;
            case 2:
                LightingActivity lightingActivity = (LightingActivity) this.f12443i;
                int i12 = LightingActivity.T;
                p4.h.j(lightingActivity, "this$0");
                TrackManager.INSTANCE.myLightsDoneButtonSelected();
                lightingActivity.onBackPressed();
                break;
            case 3:
                e9.i iVar = (e9.i) this.f12443i;
                p4.h.j(iVar, "this$0");
                iVar.f6584d.H();
                break;
            case 4:
                SettingsAboutActivity settingsAboutActivity = (SettingsAboutActivity) this.f12443i;
                int i13 = SettingsAboutActivity.B;
                p4.h.j(settingsAboutActivity, "this$0");
                f0.f8324c.e(settingsAboutActivity);
                break;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f12443i;
                int i14 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                p4.h.i(view, "view");
                f1.b.c(view, new o9.i(shoeControllerActivity));
                break;
        }
    }
}
