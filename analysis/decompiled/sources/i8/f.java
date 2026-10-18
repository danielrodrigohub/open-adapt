package i8;

import android.os.Process;
import android.view.ViewPropertyAnimator;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.gestures.GesturesTutorialActivity;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import com.nike.adapt.ui.settings.SettingsVoiceActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import m9.f0;
import q7.c0;
import u8.q;
import x8.n0;
import z8.i;
import z8.j;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f8824h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f8825i;

    public /* synthetic */ f(Object obj, int i10) {
        this.f8824h = i10;
        this.f8825i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8824h) {
            case 0:
                Runnable runnable = (Runnable) this.f8825i;
                Process.setThreadPriority(10);
                runnable.run();
                return;
            case 1:
                q qVar = (q) this.f8825i;
                p4.h.j(qVar, "this$0");
                qVar.f(false);
                return;
            case 2:
                GesturesTutorialActivity gesturesTutorialActivity = (GesturesTutorialActivity) this.f8825i;
                int i10 = GesturesTutorialActivity.d0;
                p4.h.j(gesturesTutorialActivity, "this$0");
                q7.h hVar = gesturesTutorialActivity.I;
                if (hVar != null) {
                    hVar.f13830d.setVisibility(8);
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            case 3:
                LightPacksActivity lightPacksActivity = (LightPacksActivity) this.f8825i;
                LightPacksActivity.a aVar = LightPacksActivity.f5779g0;
                p4.h.j(lightPacksActivity, "this$0");
                ViewPropertyAnimator duration = lightPacksActivity.r0().f13875q.animate().alpha(0.0f).setStartDelay(500L).setDuration(500L);
                duration.start();
                lightPacksActivity.f5782b0 = duration;
                p9.d dVar = new p9.d(new p9.a(o.r(R.string.light_pack_tooltip_1_title), o.r(R.string.light_pack_tooltip_1_message), o.r(R.string.button_next), "1/2", o.r(R.string.light_pack_tooltip_one_of_two_content_description), false, -150, 0, 0.0f, 10.0d, 0L, 245408), lightPacksActivity);
                j jVar = new j(lightPacksActivity);
                dVar.setCtaAction(new z8.h(dVar, jVar, lightPacksActivity));
                dVar.setOverlayDismiss(new i(jVar, lightPacksActivity));
                CoordinatorLayout coordinatorLayout = lightPacksActivity.r0().f13864f;
                p4.h.i(coordinatorLayout, "binding.lightPacksParent");
                ConstraintLayout constraintLayout = lightPacksActivity.r0().f13874p.f13726a;
                p4.h.i(constraintLayout, "binding.tooltip1HighlightView.mainContainer");
                p9.d.d(dVar, coordinatorLayout, constraintLayout);
                TrackManager.INSTANCE.lightPacksTooltipOnePresented();
                return;
            case 4:
                SettingsVoiceActivity settingsVoiceActivity = (SettingsVoiceActivity) this.f8825i;
                int i11 = SettingsVoiceActivity.C;
                p4.h.j(settingsVoiceActivity, "this$0");
                p9.d dVar2 = new p9.d(new p9.a(o.r(R.string.adapt_settings_voice_tooltip_title), o.r(R.string.adapt_settings_voice_tooltip_body), o.r(R.string.adapt_got_it_cta_button), null, null, true, 0, 0, 0.5f, 0.0d, 300L, 130520), settingsVoiceActivity);
                c0 c0Var = settingsVoiceActivity.A;
                if (c0Var == null) {
                    p4.h.C("binding");
                    throw null;
                }
                ConstraintLayout constraintLayout2 = c0Var.f13736a;
                p4.h.i(constraintLayout2, "binding.voicePreferenceParent");
                c0 c0Var2 = settingsVoiceActivity.A;
                if (c0Var2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                TextView textView = c0Var2.f13738c;
                p4.h.i(textView, "binding.voicePreferenceTitle");
                p9.d.d(dVar2, constraintLayout2, textView);
                dVar2.setCtaAction(new f0(dVar2));
                return;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f8825i;
                int i12 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                n0 n0Var = shoeControllerActivity.M;
                if (n0Var == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
                n0Var.p(false);
                n0 n0Var2 = shoeControllerActivity.M;
                if (n0Var2 != null) {
                    n0Var2.e();
                    return;
                } else {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
        }
    }
}
