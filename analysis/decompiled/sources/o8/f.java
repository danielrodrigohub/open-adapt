package o8;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.view.View;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.GoogleVoicePromptActivity;
import com.nike.adapt.ui.requirements.AdaptRequirementsActivity;
import com.nike.adapt.ui.settings.SupportDeleteAccountActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import h9.o0;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f12444h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f12445i;

    public /* synthetic */ f(Object obj, int i10) {
        this.f12444h = i10;
        this.f12445i = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BluetoothAdapter adapter;
        switch (this.f12444h) {
            case 0:
                GoogleVoicePromptActivity googleVoicePromptActivity = (GoogleVoicePromptActivity) this.f12445i;
                int i10 = GoogleVoicePromptActivity.F;
                p4.h.j(googleVoicePromptActivity, "this$0");
                TrackManager.INSTANCE.googleVoiceViewAll();
                o0.f8347c.e(googleVoicePromptActivity);
                return;
            case 1:
                a9.a aVar = (a9.a) this.f12445i;
                a9.a.C0011a c0011a = a9.a.f543h0;
                p4.h.j(aVar, "this$0");
                o7.x.f12420a.a("Pressed: Primary Button");
                v8.a aVar2 = aVar.f548g0;
                if (aVar2 == null) {
                    p4.h.C("messagingCenterCtaSelected");
                    throw null;
                }
                b9.c cVar = aVar.f547f0;
                if (cVar != null) {
                    aVar2.b(cVar.c());
                    return;
                } else {
                    p4.h.C("messageType");
                    throw null;
                }
            case 2:
                e9.i iVar = (e9.i) this.f12445i;
                p4.h.j(iVar, "this$0");
                iVar.f6584d.x();
                return;
            case 3:
                AdaptRequirementsActivity adaptRequirementsActivity = (AdaptRequirementsActivity) this.f12445i;
                int i11 = AdaptRequirementsActivity.C;
                p4.h.j(adaptRequirementsActivity, "this$0");
                o7.x.f12420a.a("Pressed: Bluetooth Required");
                BluetoothManager bluetoothManager = (BluetoothManager) adaptRequirementsActivity.getSystemService(BluetoothManager.class);
                if (bluetoothManager == null || (adapter = bluetoothManager.getAdapter()) == null) {
                    return;
                }
                adapter.enable();
                return;
            case 4:
                SupportDeleteAccountActivity supportDeleteAccountActivity = (SupportDeleteAccountActivity) this.f12445i;
                int i12 = SupportDeleteAccountActivity.E;
                p4.h.j(supportDeleteAccountActivity, "this$0");
                TrackManager.INSTANCE.settingsDeleteAccountSelected();
                q7.v vVar = supportDeleteAccountActivity.A;
                if (vVar == null) {
                    p4.h.C("binding");
                    throw null;
                }
                vVar.f14032d.setVisibility(0);
                q7.v vVar2 = supportDeleteAccountActivity.A;
                if (vVar2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                vVar2.f14029a.setText(" ");
                q7.v vVar3 = supportDeleteAccountActivity.A;
                if (vVar3 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                vVar3.f14033e.setVisibility(0);
                BuildersKt__Builders_commonKt.launch$default(supportDeleteAccountActivity.D, null, null, new m9.o0(supportDeleteAccountActivity, null), 3, null);
                return;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f12445i;
                int i13 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                p4.h.i(view, "it");
                f1.b.c(view, new o9.j(shoeControllerActivity));
                return;
        }
    }
}
