package x8;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import com.nike.adapt.ui.settings.SettingsAboutActivity;
import com.nike.adapt.ui.settings.SettingsSupportActivity;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class p implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17948h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17949i;

    public /* synthetic */ p(Object obj, int i10) {
        this.f17948h = i10;
        this.f17949i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        z8.a aVar;
        AdaptShoeColor adaptShoeColor;
        switch (this.f17948h) {
            case 0:
                BottomSheet bottomSheet = (BottomSheet) this.f17949i;
                int i10 = BottomSheet.F;
                p4.h.j(bottomSheet, "this$0");
                if (bottomSheet.D) {
                    BottomSheet.a aVar2 = bottomSheet.B;
                    if (aVar2 == null) {
                        p4.h.C("bottomSheetStateManager");
                        throw null;
                    }
                    aVar2.b();
                    BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = bottomSheet.A;
                    if (bottomSheetBehavior == null) {
                        return;
                    }
                    bottomSheetBehavior.B(4);
                    return;
                }
                return;
            case 1:
                LightPacksActivity lightPacksActivity = (LightPacksActivity) this.f17949i;
                LightPacksActivity.a aVar3 = LightPacksActivity.f5779g0;
                p4.h.j(lightPacksActivity, "this$0");
                if (lightPacksActivity.X) {
                    return;
                }
                boolean z10 = false;
                if (lightPacksActivity.s0()) {
                    z8.n nVar = lightPacksActivity.M;
                    if (nVar == null) {
                        p4.h.C("subtitleManager");
                        throw null;
                    }
                    nVar.a();
                    if (lightPacksActivity.t0().S().isOff()) {
                        adaptShoeColor = lightPacksActivity.t0().c();
                    } else {
                        AdaptMarshaller.AdaptPreset adaptPreset = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                        adaptShoeColor = new AdaptShoeColor(adaptPreset, adaptPreset, null, 4, null);
                    }
                    lightPacksActivity.t0().b0(adaptShoeColor);
                    lightPacksActivity.w0(z8.a.MY_LIGHTS, false);
                    z8.m mVar = lightPacksActivity.L;
                    if (mVar != null) {
                        p4.h.j(adaptShoeColor, "color");
                        mVar.c(new z8.m.b(adaptShoeColor.isOff() ? 4 : 3, adaptShoeColor, null, 60));
                        return;
                    }
                    return;
                }
                if (lightPacksActivity.V) {
                    boolean z11 = !lightPacksActivity.W;
                    lightPacksActivity.W = z11;
                    if (z11) {
                        aVar = z8.a.MY_LIGHTS;
                    } else {
                        aVar = lightPacksActivity.T;
                        if (aVar == null) {
                            p4.h.C("selectedLightPack");
                            throw null;
                        }
                    }
                    InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                    if (inMemoryCache.getLeftDevice().getBattery().getPercent() > 20 && inMemoryCache.getRightDevice().getBattery().getPercent() > 20) {
                        z10 = true;
                    }
                    boolean z12 = true ^ z10;
                    z8.n nVar2 = lightPacksActivity.M;
                    if (nVar2 == null) {
                        p4.h.C("subtitleManager");
                        throw null;
                    }
                    if (aVar == z8.a.MY_LIGHTS) {
                        nVar2.a();
                    } else if (z12) {
                        nVar2.g(aVar);
                    } else {
                        nVar2.i(aVar);
                    }
                    if (lightPacksActivity.W) {
                        h8.a aVarT0 = lightPacksActivity.t0();
                        AdaptMarshaller.AdaptPreset adaptPreset2 = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                        aVarT0.b0(new AdaptShoeColor(adaptPreset2, adaptPreset2, null, 4, null));
                    }
                    lightPacksActivity.w0(aVar, lightPacksActivity.W);
                    if (lightPacksActivity.W) {
                        z8.m mVar2 = lightPacksActivity.L;
                        if (mVar2 != null) {
                            mVar2.c(new z8.m.b(6, null, null, 62));
                            return;
                        }
                        return;
                    }
                    if (z12) {
                        lightPacksActivity.u0();
                        return;
                    }
                    z8.m mVar3 = lightPacksActivity.L;
                    if (mVar3 != null) {
                        z8.a aVar4 = lightPacksActivity.T;
                        if (aVar4 != null) {
                            mVar3.c(new z8.m.b(5, null, aVar4, 58));
                            return;
                        } else {
                            p4.h.C("selectedLightPack");
                            throw null;
                        }
                    }
                    return;
                }
                return;
            case 2:
                i9.e0 e0Var = (i9.e0) this.f17949i;
                int i11 = i9.e0.f8861p0;
                p4.h.j(e0Var, "this$0");
                o7.x.f12420a.a("Welcome - Pressed: Next");
                if (((h8.a) e0Var.f8865h0.getValue()).z()) {
                    TrackManager.INSTANCE.multipairPairingFlowStarted();
                } else {
                    TrackManager.INSTANCE.isPairingStarted();
                }
                i9.a0 a0Var = e0Var.f8868k0;
                if (a0Var == null) {
                    p4.h.C("onBoardingStateManager");
                    throw null;
                }
                v7.h hVarY = a0Var.Y();
                i9.a0 a0Var2 = e0Var.f8868k0;
                if (a0Var2 == null) {
                    p4.h.C("onBoardingStateManager");
                    throw null;
                }
                v7.g gVarK = e0Var.u0().k();
                v7.g gVar = v7.g.WELCOME;
                if (gVarK != gVar) {
                    gVar = v7.g.FETCH_PROFILE;
                }
                a0Var2.v(hVarY, gVar);
                return;
            case 3:
                SettingsAboutActivity settingsAboutActivity = (SettingsAboutActivity) this.f17949i;
                int i12 = SettingsAboutActivity.B;
                p4.h.j(settingsAboutActivity, "this$0");
                new h9.p0(v7.m.SUBMIT_FEEDBACK).e(settingsAboutActivity);
                return;
            default:
                SettingsSupportActivity settingsSupportActivity = (SettingsSupportActivity) this.f17949i;
                int i13 = SettingsSupportActivity.B;
                p4.h.j(settingsSupportActivity, "this$0");
                new h9.p0(v7.m.FAQS).e(settingsSupportActivity);
                return;
        }
    }
}
