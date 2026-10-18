package y0;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.tabs.TabLayout;
import com.nike.adapt.R;
import com.nike.adapt.ui.lighting.LightingEffectsActivity;
import com.nike.adapt.ui.settings.SupportDeleteAccountActivity;
import com.nike.adapt.ui.util.AdjustLacingActivity;
import java.util.Objects;
import m9.q0;
import m9.r0;
import p4.i0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class y implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f18287i;

    public /* synthetic */ y(Object obj, int i10) {
        this.f18286h = i10;
        this.f18287i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18286h) {
            case 0:
                ((z) this.f18287i).f18288h.a();
                return;
            case 1:
                i0 i0Var = (i0) this.f18287i;
                if (i0Var.S) {
                    return;
                }
                p4.v.a aVar = i0Var.f13033x;
                Objects.requireNonNull(aVar);
                aVar.j(i0Var);
                return;
            case 2:
                ((u4.l) ((u4.n.b) this.f18287i)).p();
                return;
            case 3:
                com.google.android.exoplayer2.source.rtsp.f.b((com.google.android.exoplayer2.source.rtsp.f) this.f18287i);
                return;
            case 4:
                LightingEffectsActivity lightingEffectsActivity = (LightingEffectsActivity) this.f18287i;
                int i10 = LightingEffectsActivity.f5764k0;
                p4.h.j(lightingEffectsActivity, "this$0");
                TabLayout tabLayout = lightingEffectsActivity.L;
                if (tabLayout == null) {
                    p4.h.C("durationTab");
                    throw null;
                }
                lightingEffectsActivity.M = tabLayout.getWidth() / 3;
                View view = lightingEffectsActivity.K;
                if (view == null) {
                    p4.h.C("durationIndicator");
                    throw null;
                }
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                p4.h.h(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                layoutParams2.width = lightingEffectsActivity.M;
                View view2 = lightingEffectsActivity.K;
                if (view2 == null) {
                    p4.h.C("durationIndicator");
                    throw null;
                }
                view2.setLayoutParams(layoutParams2);
                int i11 = lightingEffectsActivity.S != 3 ? R.layout.lighting_duration_tab_text_view : R.layout.lighting_duration_tab_disabled_text_view;
                TabLayout tabLayout2 = lightingEffectsActivity.L;
                if (tabLayout2 == null) {
                    p4.h.C("durationTab");
                    throw null;
                }
                TabLayout.g gVarI = tabLayout2.i();
                gVarI.d(i11);
                gVarI.e(R.string.adapt_lights_effect_duration_5min);
                View view3 = gVarI.f5450e;
                if (view3 != null) {
                    view3.setOnTouchListener(lightingEffectsActivity);
                }
                gVarI.c(androidx.lifecycle.o.r(R.string.pulsing_lights_duration_option_five_minutes));
                tabLayout2.b(gVarI, false);
                TabLayout tabLayout3 = lightingEffectsActivity.L;
                if (tabLayout3 == null) {
                    p4.h.C("durationTab");
                    throw null;
                }
                TabLayout.g gVarI2 = tabLayout3.i();
                gVarI2.d(i11);
                gVarI2.e(R.string.adapt_lights_effect_duration_30min);
                View view4 = gVarI2.f5450e;
                if (view4 != null) {
                    view4.setOnTouchListener(lightingEffectsActivity);
                }
                gVarI2.c(androidx.lifecycle.o.r(R.string.pulsing_lights_duration_option_thirty_minutes));
                tabLayout3.b(gVarI2, false);
                TabLayout tabLayout4 = lightingEffectsActivity.L;
                if (tabLayout4 == null) {
                    p4.h.C("durationTab");
                    throw null;
                }
                TabLayout.g gVarI3 = tabLayout4.i();
                gVarI3.d(i11);
                gVarI3.e(R.string.adapt_lights_effect_duration_60min);
                View view5 = gVarI3.f5450e;
                if (view5 != null) {
                    view5.setOnTouchListener(lightingEffectsActivity);
                }
                gVarI3.c(androidx.lifecycle.o.r(R.string.pulsing_lights_duration_option_one_hour));
                tabLayout4.b(gVarI3, false);
                if (lightingEffectsActivity.S != 3) {
                    TabLayout tabLayout5 = lightingEffectsActivity.L;
                    if (tabLayout5 != null) {
                        tabLayout5.a(lightingEffectsActivity);
                        return;
                    } else {
                        p4.h.C("durationTab");
                        throw null;
                    }
                }
                return;
            case 5:
                SupportDeleteAccountActivity supportDeleteAccountActivity = (SupportDeleteAccountActivity) this.f18287i;
                int i12 = SupportDeleteAccountActivity.E;
                Objects.requireNonNull(supportDeleteAccountActivity);
                s9.y yVar = s9.y.f15252a;
                q0 q0Var = q0.f10908h;
                r0 r0Var = new r0(supportDeleteAccountActivity);
                p4.h.j(q0Var, "cancel");
                s9.y.d(yVar, supportDeleteAccountActivity, R.string.adapt_support_delete_account_connection_error_title, null, R.string.adapt_support_delete_account_connection_error_description, 0, R.string.adapt_ok_cta_button, R.string.adapt_retry_cta_button, false, q0Var, r0Var, new s9.y.a("DELETE_ACCOUNT_CONNECTION_TIMEOUT", "OK", "RETRY", 8), 148).setCancelable(true);
                return;
            default:
                AdjustLacingActivity adjustLacingActivity = (AdjustLacingActivity) this.f18287i;
                int i13 = AdjustLacingActivity.Q;
                p4.h.j(adjustLacingActivity, "this$0");
                x8.f0 f0Var = adjustLacingActivity.M;
                if (f0Var == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
                f0Var.p(false);
                x8.f0 f0Var2 = adjustLacingActivity.M;
                if (f0Var2 != null) {
                    f0Var2.e();
                    return;
                } else {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
        }
    }
}
