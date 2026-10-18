package x8;

import android.view.View;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.NotificationToast;
import com.nike.adapt.ui.requirements.AdaptRequirementsActivity;
import com.nike.adapt.ui.settings.SettingsPartnersActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j0 implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17913i;

    public /* synthetic */ j0(Object obj, int i10) {
        this.f17912h = i10;
        this.f17913i = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str = null;
        Object[] objArr = 0;
        boolean z10 = false;
        switch (this.f17912h) {
            case 0:
                NotificationToast notificationToast = (NotificationToast) this.f17913i;
                int i10 = NotificationToast.f5755k;
                p4.h.j(notificationToast, "this$0");
                notificationToast.b(false);
                return;
            case 1:
                a9.a aVar = (a9.a) this.f17913i;
                a9.a.C0011a c0011a = a9.a.f543h0;
                p4.h.j(aVar, "this$0");
                o7.x.f12420a.a("Pressed: Secondary Button");
                b9.c cVar = aVar.f547f0;
                if (cVar == null) {
                    p4.h.C("messageType");
                    throw null;
                }
                b9.e eVarE = cVar.e();
                if (eVarE != null) {
                    v8.a aVar2 = aVar.f548g0;
                    if (aVar2 != null) {
                        aVar2.T(eVarE);
                        return;
                    } else {
                        p4.h.C("messagingCenterCtaSelected");
                        throw null;
                    }
                }
                return;
            case 2:
                e9.i iVar = (e9.i) this.f17913i;
                p4.h.j(iVar, "this$0");
                iVar.f6584d.l();
                return;
            case 3:
                g9.h hVar = (g9.h) this.f17913i;
                p4.h.j(hVar, "this$0");
                hVar.f7882d.S();
                return;
            case 4:
                i9.y yVar = (i9.y) this.f17913i;
                i9.y.b bVar = i9.y.f8952h0;
                p4.h.j(yVar, "this$0");
                if (yVar.f8956e0) {
                    return;
                }
                o7.x.f12420a.a("Choose Your Shoes - Pressed: Not Your Shoes?");
                yVar.s0().e(null);
                yVar.r0(false);
                return;
            case 5:
                AdaptRequirementsActivity adaptRequirementsActivity = (AdaptRequirementsActivity) this.f17913i;
                int i11 = AdaptRequirementsActivity.C;
                p4.h.j(adaptRequirementsActivity, "this$0");
                if (aa.a.a()) {
                    o7.x.f12420a.a("Pressed: Nearby Devices Permission Required");
                    Object[] array = aa.a.f549a.toArray(new String[0]);
                    p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    adaptRequirementsActivity.requestPermissions((String[]) array, 34);
                    return;
                }
                return;
            case 6:
                SettingsPartnersActivity settingsPartnersActivity = (SettingsPartnersActivity) this.f17913i;
                int i12 = SettingsPartnersActivity.D;
                p4.h.j(settingsPartnersActivity, "this$0");
                settingsPartnersActivity.l0(settingsPartnersActivity.B);
                return;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f17913i;
                int i13 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                TrackManager.INSTANCE.isSettingsAccessed("Main");
                o7.x.f12420a.a("Pressed: Settings");
                new h9.g0(str, z10, 3, objArr == true ? 1 : 0).e(shoeControllerActivity);
                return;
        }
    }
}
