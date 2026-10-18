package m9;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.coroutine.MainCoroutineScope;
import q7.y0;

/* JADX INFO: compiled from: FirmwareUpdateCompleteFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r extends p8.h {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final a f10909f0 = new a();
    public y0 d0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f10910b0 = "FirmwareUpdateCompleteFragment";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final h8.c f10911c0 = h8.c.f8298b;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final MainCoroutineScope f10912e0 = new MainCoroutineScope();

    /* JADX INFO: compiled from: FirmwareUpdateCompleteFragment.kt */
    public static final class a {
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = layoutInflater.inflate(R.layout.fragment_software_update_complete, viewGroup, false);
        int i10 = R.id.btn_got_it;
        Button button = (Button) g7.b.d(viewInflate, R.id.btn_got_it);
        if (button != null) {
            i10 = R.id.check_icon;
            LottieAnimationView lottieAnimationView = (LottieAnimationView) g7.b.d(viewInflate, R.id.check_icon);
            if (lottieAnimationView != null) {
                this.d0 = new y0((LinearLayout) viewInflate, button, lottieAnimationView);
                this.f10911c0.I(true);
                this.f10911c0.q(0);
                if (this.d0 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                TrackManager.INSTANCE.softwareUpdateSuccess();
                o7.x xVar = o7.x.f12420a;
                s9.g gVar = s9.g.f15195a;
                xVar.a("Update Complete!");
                xVar.a("FirmwareUpdateCrumb Update Fully Complete : FW_STATS");
                y0 y0Var = this.d0;
                if (y0Var == null) {
                    p4.h.C("binding");
                    throw null;
                }
                y0Var.f14063c.e();
                y0 y0Var2 = this.d0;
                if (y0Var2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                y0Var2.f14062b.setOnClickListener(new i9.b(this, 2));
                y0 y0Var3 = this.d0;
                if (y0Var3 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                LinearLayout linearLayout = y0Var3.f14061a;
                p4.h.i(linearLayout, "binding.root");
                return linearLayout;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // p8.h
    public final String p0() {
        return this.f10910b0;
    }
}
