package o9;

import android.content.ComponentName;
import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.JordanLauncherAlias;
import com.nike.adapt.SplashScreenActivity;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.AdaptRestartActivity;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.settings.AppIconsActivity;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import s9.y;

/* JADX INFO: compiled from: ShoeControllerActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements BottomSheet.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ShoeControllerActivity f12511a;

    /* JADX INFO: compiled from: ShoeControllerActivity.kt */
    public static final class a extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ShoeControllerActivity f12512h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ShoeControllerActivity shoeControllerActivity) {
            super(1);
            this.f12512h = shoeControllerActivity;
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            this.f12512h.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f12512h.getApplicationContext(), (Class<?>) SplashScreenActivity.class), 2, 1);
            this.f12512h.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f12512h.getApplicationContext(), (Class<?>) JordanLauncherAlias.class), 1, 1);
            AdaptRestartActivity.A.a(false, 2000L);
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    public k(ShoeControllerActivity shoeControllerActivity) {
        this.f12511a = shoeControllerActivity;
    }

    @Override // com.nike.adapt.ui.helper.BottomSheet.a
    public final void a(Context context, BottomSheet bottomSheet) {
        p4.h.j(bottomSheet, "bottomSheet");
        TrackManager.INSTANCE.appIconBottomSheetSetSelected();
        AppIconsActivity.a aVar = AppIconsActivity.a.Jordan;
        ShoeControllerActivity shoeControllerActivity = this.f12511a;
        int i10 = ShoeControllerActivity.f5872s0;
        if (aVar == shoeControllerActivity.u0().Q()) {
            this.f12511a.v0().f13773o.u();
            return;
        }
        this.f12511a.u0().i(false);
        this.f12511a.u0().L(aVar);
        y yVar = y.f15252a;
        ShoeControllerActivity shoeControllerActivity2 = this.f12511a;
        yVar.a(shoeControllerActivity2, aVar, new a(shoeControllerActivity2));
    }

    @Override // com.nike.adapt.ui.helper.BottomSheet.a
    public final void b() {
        TrackManager.INSTANCE.appIconBottomSheetMaybeLater();
        x8.n nVar = this.f12511a.X;
        if (nVar != null) {
            x8.n.a(nVar, x8.n.a.JordanAppIcon);
        }
        this.f12511a.u0().i(true);
    }

    @Override // com.nike.adapt.ui.helper.BottomSheet.a
    public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
        if (i10 == 3) {
            ShoeControllerActivity shoeControllerActivity = this.f12511a;
            int i11 = ShoeControllerActivity.f5872s0;
            if (shoeControllerActivity.u0().r()) {
                return;
            }
            TrackManager.INSTANCE.appIconBottomSheetPresented();
            this.f12511a.u0().t();
        }
    }

    @Override // com.nike.adapt.ui.helper.BottomSheet.a
    public final void d(BottomSheet bottomSheet) {
        TrackManager.INSTANCE.appIconBottomSheetMaybeLater();
        x8.n nVar = this.f12511a.X;
        if (nVar != null) {
            x8.n.a(nVar, x8.n.a.JordanAppIcon);
        }
        this.f12511a.u0().i(true);
    }
}
