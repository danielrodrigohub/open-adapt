package w8;

import android.view.View;
import androidx.activity.k;
import androidx.fragment.app.p;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.service.FirmwareUpdateService;
import com.nike.adapt.ui.gestures.GestureIntroModalActivity;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.modes.ModeEditActivity;
import com.nike.adapt.ui.settings.SettingsRegulatoryActivity;
import h9.l0;
import i9.b0;
import java.util.List;
import m9.u;
import o7.x;
import p8.g0;
import v9.l;
import v9.r2;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17240h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17241i;

    public /* synthetic */ b(Object obj, int i10) {
        this.f17240h = i10;
        this.f17241i = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        List list = null;
        Object[] objArr = 0;
        int i10 = 1;
        switch (this.f17240h) {
            case 0:
                GestureIntroModalActivity gestureIntroModalActivity = (GestureIntroModalActivity) this.f17241i;
                int i11 = GestureIntroModalActivity.T;
                p4.h.j(gestureIntroModalActivity, "this$0");
                gestureIntroModalActivity.R = true;
                gestureIntroModalActivity.p0().X();
                s9.b bVar = s9.b.f15177a;
                s9.b.a();
                TrackManager.gestureIntroModalSelectsTurnOn$default(TrackManager.INSTANCE, null, 1, null);
                IDeviceController iDeviceController = gestureIntroModalActivity.M;
                if (iDeviceController != null) {
                    iDeviceController.requestTo(Shoe.BOTH, new g0(list, i10, objArr == true ? 1 : 0));
                    return;
                } else {
                    p4.h.C("deviceController");
                    throw null;
                }
            case 1:
                BottomSheet.s((BottomSheet) this.f17241i);
                return;
            case 2:
                ModeEditActivity modeEditActivity = (ModeEditActivity) this.f17241i;
                int i12 = ModeEditActivity.P;
                p4.h.j(modeEditActivity, "this$0");
                modeEditActivity.p0();
                return;
            case 3:
                b0 b0Var = (b0) this.f17241i;
                b0.a aVar = b0.f8833q0;
                p4.h.j(b0Var, "this$0");
                b0Var.f8841n0 = true;
                t9.b bVar2 = b0Var.f8840m0;
                bVar2.f15572c = null;
                bVar2.f15573d = null;
                IDeviceController iDeviceController2 = b0Var.f8839l0;
                if (iDeviceController2 != null) {
                    iDeviceController2.requestTo(Shoe.BOTH, p8.g.f13328a);
                    return;
                } else {
                    p4.h.C("deviceController");
                    throw null;
                }
            case 4:
                u uVar = (u) this.f17241i;
                u.a aVar2 = u.f10918l0;
                p4.h.j(uVar, "this$0");
                x xVar = x.f12420a;
                xVar.a("Pressed: Firmware Update Cancel : FW_STATS");
                TrackManager.INSTANCE.softwareUpdateUserCancels();
                FirmwareUpdateService firmwareUpdateService = BigfootApplication.f5638p.b().f5650k;
                if (firmwareUpdateService != null) {
                    xVar.a("STOP_FW_UPDATE : FW_STATS");
                    firmwareUpdateService.f5698q = true;
                    l lVar = firmwareUpdateService.f5692k;
                    if (lVar != null) {
                        k.e(lVar, new r2(null, 1, null));
                    }
                }
                p pVarI = uVar.i();
                if (pVarI != null) {
                    pVarI.finish();
                    return;
                }
                return;
            default:
                SettingsRegulatoryActivity settingsRegulatoryActivity = (SettingsRegulatoryActivity) this.f17241i;
                int i13 = SettingsRegulatoryActivity.D;
                p4.h.j(settingsRegulatoryActivity, "this$0");
                x.f12420a.a(settingsRegulatoryActivity.C);
                new l0(n9.a.f12028h).e(settingsRegulatoryActivity);
                return;
        }
    }
}
