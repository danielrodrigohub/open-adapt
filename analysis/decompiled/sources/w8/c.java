package w8;

import android.content.SharedPreferences;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.gestures.GestureIntroModalActivity;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.lighting.lightpacks.LightPacksActivity;
import com.nike.adapt.ui.myshoes.MyShoesActivity;
import com.nike.adapt.ui.settings.SettingsSupportActivity;
import h9.c0;
import h9.q;
import h9.y0;
import i9.b0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17242h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17243i;

    public /* synthetic */ c(Object obj, int i10) {
        this.f17242h = i10;
        this.f17243i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f17242h) {
            case 0:
                GestureIntroModalActivity gestureIntroModalActivity = (GestureIntroModalActivity) this.f17243i;
                int i10 = GestureIntroModalActivity.T;
                p4.h.j(gestureIntroModalActivity, "this$0");
                gestureIntroModalActivity.p0().X();
                s9.b bVar = s9.b.f15177a;
                s9.b.a();
                TrackManager.gestureIntroModalSelectsLearnMore$default(TrackManager.INSTANCE, null, 1, null);
                new q(gestureIntroModalActivity.Q).e(gestureIntroModalActivity);
                return;
            case 1:
                BottomSheet bottomSheet = (BottomSheet) this.f17243i;
                int i11 = BottomSheet.F;
                p4.h.j(bottomSheet, "this$0");
                BottomSheet.a aVar = bottomSheet.B;
                if (aVar == null) {
                    p4.h.C("bottomSheetStateManager");
                    throw null;
                }
                aVar.d(bottomSheet);
                BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = bottomSheet.A;
                if (bottomSheetBehavior == null) {
                    return;
                }
                bottomSheetBehavior.B(4);
                return;
            case 2:
                LightPacksActivity lightPacksActivity = (LightPacksActivity) this.f17243i;
                LightPacksActivity.a aVar2 = LightPacksActivity.f5779g0;
                p4.h.j(lightPacksActivity, "this$0");
                lightPacksActivity.r0().f13865g.t();
                TrackManager.INSTANCE.lightPacksUpdateFirmwareActionSheetDismissButtonSelected();
                lightPacksActivity.r0().f13869k.setClickable(false);
                return;
            case 3:
                MyShoesActivity myShoesActivity = (MyShoesActivity) this.f17243i;
                int i12 = MyShoesActivity.K;
                p4.h.j(myShoesActivity, "this$0");
                TrackManager trackManager = TrackManager.INSTANCE;
                trackManager.multipairAddNewShoe();
                SharedPreferences.Editor editorEdit = h8.c.f8298b.m0().edit();
                p4.h.i(editorEdit, "editor");
                editorEdit.putBoolean("PREF_IS_MULTI_PAIR", true);
                editorEdit.apply();
                trackManager.multipairPairingFlowStarted();
                new c0(false, false, 3, null).e(myShoesActivity);
                return;
            case 4:
                b0 b0Var = (b0) this.f17243i;
                b0.a aVar3 = b0.f8833q0;
                p4.h.j(b0Var, "this$0");
                b0Var.f8841n0 = false;
                t9.b bVar2 = b0Var.f8840m0;
                bVar2.f15572c = null;
                bVar2.f15573d = null;
                IDeviceController iDeviceController = b0Var.f8839l0;
                if (iDeviceController != null) {
                    iDeviceController.requestTo(Shoe.BOTH, p8.g.f13328a);
                    return;
                } else {
                    p4.h.C("deviceController");
                    throw null;
                }
            default:
                SettingsSupportActivity settingsSupportActivity = (SettingsSupportActivity) this.f17243i;
                int i13 = SettingsSupportActivity.B;
                p4.h.j(settingsSupportActivity, "this$0");
                y0.f8370c.e(settingsSupportActivity);
                return;
        }
    }
}
