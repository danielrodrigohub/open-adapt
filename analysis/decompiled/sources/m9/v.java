package m9;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.newrelic.agent.android.payload.PayloadController;
import com.nike.adapt.R;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.analytics.TrackManager;
import q7.t0;

/* JADX INFO: compiled from: RestartingShoesFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v extends p8.b {

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final a f10923o0 = new a();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public t0 f10925i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public IAdaptRequester f10926j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public o.b f10927k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Handler f10928l0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final String f10924h0 = "RestartingShoesFragment";

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public h8.c f10929m0 = h8.c.f8298b;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final androidx.activity.g f10930n0 = new androidx.activity.g(this, 5);

    /* JADX INFO: compiled from: RestartingShoesFragment.kt */
    public static final class a {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        p4.h.j(context, "context");
        super.G(context);
        this.f10927k0 = (o.b) context;
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        this.f10928l0 = new Handler();
        this.f10925i0 = t0.a(o(), viewGroup);
        TrackManager.INSTANCE.softwareUpdateRestart();
        this.f10926j0 = ((o7.f) androidx.lifecycle.o.m()).a(this, this.d0, o7.s.a.C0221a.f12405h, o7.s.a.b.f12406h);
        t0 t0Var = this.f10925i0;
        if (t0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        FrameLayout frameLayout = t0Var.f14008a;
        o7.x.f12420a.a("FirmwareUpdateCrumb Restart Screen loaded : FW_STATS");
        t0 t0Var2 = this.f10925i0;
        if (t0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        t0Var2.f14009b.setText(androidx.lifecycle.o.r(R.string.adapt_firmware_update_restart_copy));
        p4.h.i(frameLayout, "binding.root.apply {\n   …opy.getString()\n        }");
        return frameLayout;
    }

    @Override // p8.b, p8.r, p8.h, androidx.fragment.app.m
    public final void S() {
        super.S();
        Handler handler = this.f10928l0;
        if (handler == null) {
            p4.h.C("handler");
            throw null;
        }
        androidx.activity.g gVar = this.f10930n0;
        SharedPreferences sharedPreferencesM0 = this.f10929m0.m0();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = PayloadController.PAYLOAD_REQUEUE_PERIOD_MS;
        long j11 = sharedPreferencesM0.getLong("PREF_TIMER_FOR_RESTART_FROM_FLASH", jCurrentTimeMillis + PayloadController.PAYLOAD_REQUEUE_PERIOD_MS) - System.currentTimeMillis();
        if (j11 < 1) {
            j10 = 1000;
        } else if (j11 <= PayloadController.PAYLOAD_REQUEUE_PERIOD_MS) {
            j10 = j11;
        }
        handler.postDelayed(gVar, j10);
    }

    @Override // p8.b, p8.h, androidx.fragment.app.m
    public final void T() {
        Handler handler = this.f10928l0;
        if (handler == null) {
            p4.h.C("handler");
            throw null;
        }
        handler.removeCallbacks(this.f10930n0);
        super.T();
    }

    @Override // p8.h
    public final String p0() {
        return this.f10924h0;
    }
}
