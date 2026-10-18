package com.nike.adapt.ui.settings;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.m;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.FirmwareCompletedResult;
import com.nike.adapt.adk.FirmwareFailureResult;
import com.nike.adapt.adk.FirmwareInProgressResult;
import com.nike.adapt.adk.FirmwareReconnectingResult;
import com.nike.adapt.adk.FirmwareUpdateResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.model.AdaptFirmwareStage;
import com.nike.adapt.adk.model.AdaptFirmwareUpdateState;
import com.nike.adapt.analytics.TrackManager;
import fe.k;
import g7.b;
import h8.c;
import h9.w;
import m9.i;
import m9.j;
import m9.n;
import m9.o;
import m9.r;
import m9.t;
import m9.u;
import m9.v;
import o7.f;
import o7.s;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import q7.e;
import q7.e2;
import rd.g;
import rd.x;
import s9.y;
import s9.z;

/* JADX INFO: compiled from: FirmwareUpdateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FirmwareUpdateActivity extends p8.a implements o.b {
    public static final a Q = new a();
    public e J;
    public IAdaptRequester K;
    public boolean M;
    public boolean N;
    public boolean O;
    public z P;
    public final String I = ((g) x.a(FirmwareUpdateActivity.class)).a();
    public final c L = c.f8298b;

    /* JADX INFO: compiled from: FirmwareUpdateActivity.kt */
    public static final class a {
    }

    @Override // m9.o.b
    public final void G(z zVar) {
        m tVar;
        o7.x xVar = o7.x.f12420a;
        xVar.a("FirmwareUpdateCrumb " + this.I + " loadNextState state: " + zVar);
        this.P = zVar;
        switch (zVar) {
            case UP_TO_DATE:
                t.a aVar = t.d0;
                tVar = new t();
                break;
            case UPDATE_AVAILABLE:
                o.a aVar2 = o.f10893p0;
                tVar = new o();
                break;
            case UPDATING:
                u.a aVar3 = u.f10918l0;
                tVar = new u();
                break;
            case UPDATE_COMPLETE:
                r.a aVar4 = r.f10909f0;
                tVar = new r();
                break;
            case RESTARTING:
                v.a aVar5 = v.f10923o0;
                tVar = new v();
                break;
            case FIRMWARE_ERROR:
                m9.e.a aVar6 = m9.e.f10852q0;
                tVar = new m9.e();
                break;
            case CHECK_FOR_UPDATE:
                Object systemService = getSystemService("connectivity");
                h.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                if (!(activeNetworkInfo != null && activeNetworkInfo.isConnected())) {
                    m9.h.a aVar7 = m9.h.f10869j0;
                    tVar = new m9.h();
                } else {
                    m9.e.a aVar8 = m9.e.f10852q0;
                    tVar = new m9.e();
                }
                break;
            case NO_NETWORK:
                m9.h.a aVar9 = m9.h.f10869j0;
                tVar = new m9.h();
                break;
            default:
                throw new j2.a();
        }
        if (d0() == null || d0().D) {
            return;
        }
        xVar.a("FirmwareUpdateCrumb " + this.I + " openingFragment: " + ((g) x.a(tVar.getClass())).a());
        androidx.fragment.app.a aVar10 = new androidx.fragment.app.a(d0());
        aVar10.f(R.id.activity_settings_shoe_prefs_frag_container, tVar, null);
        aVar10.c();
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        this.F.b(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        o7.x xVar = o7.x.f12420a;
        xVar.a("FirmwareUpdateCrumb " + this.I + " connected: " + adaptConnectionStatusResult.getShoe());
        if (this.F.a()) {
            xVar.a("FirmwareUpdateCrumb " + this.I + " Both Connected");
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(FirmwareUpdateResult firmwareUpdateResult) {
        h.j(firmwareUpdateResult, "result");
        if (!(firmwareUpdateResult instanceof FirmwareFailureResult)) {
            if (firmwareUpdateResult instanceof FirmwareInProgressResult) {
                z zVar = this.P;
                z zVar2 = z.UPDATING;
                if (zVar != zVar2) {
                    G(zVar2);
                    return;
                }
                return;
            }
            if (firmwareUpdateResult instanceof FirmwareReconnectingResult) {
                G(z.RESTARTING);
                return;
            } else {
                if (firmwareUpdateResult instanceof FirmwareCompletedResult) {
                    G(z.UPDATE_COMPLETE);
                    return;
                }
                return;
            }
        }
        AdaptFirmwareUpdateState errorState = ((FirmwareFailureResult) firmwareUpdateResult).getErrorState();
        boolean z10 = true;
        if (errorState instanceof AdaptFirmwareUpdateState.CheckUpdateStatusError ? true : errorState instanceof AdaptFirmwareUpdateState.DownloadFailed) {
            o7.x xVar = o7.x.f12420a;
            xVar.a("FirmwareUpdateCrumb " + this.I + " errorState: " + errorState);
            xVar.a("No Internet Errors Download Failed");
            TrackManager trackManager = TrackManager.INSTANCE;
            trackManager.softwareUpdateFailedReason(errorState.toString());
            trackManager.softwareUpdateNetworkFailure(errorState.toString());
            if (this.N) {
                return;
            }
            this.N = true;
            xVar.a("FirmwareUpdateCrumb Network Error: FW_STATS");
            y.f15252a.i(this, new n(this));
            return;
        }
        if (errorState instanceof AdaptFirmwareUpdateState.ConnectionLost) {
            o7.x xVar2 = o7.x.f12420a;
            xVar2.a("FirmwareUpdateCrumb " + this.I + " connectionLost: " + this.O);
            if (this.O) {
                return;
            }
            this.O = true;
            xVar2.a("FirmwareUpdateCrumb Connection Error: FW_STATS");
            new w(new b9.k()).e(this);
            finish();
            return;
        }
        o7.x xVar3 = o7.x.f12420a;
        xVar3.a("FirmwareUpdateCrumb " + this.I + " generalFirmwareFailed: " + this.M);
        if (this.M) {
            return;
        }
        this.M = true;
        xVar3.a("FirmwareUpdateCrumb LFT Error: FW_STATS");
        s9.g gVar = s9.g.f15195a;
        h8.a aVar = (h8.a) s9.g.f15197c.getValue();
        aVar.q(aVar.p() + 1);
        if (System.currentTimeMillis() >= aVar.M() + ((long) 604800000) || aVar.p() < 2) {
            aVar.n(System.currentTimeMillis());
            z10 = false;
        } else {
            aVar.q(0);
        }
        if (z10) {
            TrackManager.INSTANCE.isSoftwareUpdateErrorThrownSecondTry();
            y yVar = y.f15252a;
            i iVar = new i(this);
            j jVar = j.f10875h;
            h.j(jVar, "cancel");
            y.d(yVar, this, R.string.adapt_firmware_update_failed_title, null, R.string.adapt_firmware_update_failed_again_body, 0, R.string.adapt_restart_title, R.string.adapt_get_help_button_title, false, jVar, iVar, new y.a("SECOND_LFT_ERROR_DIALOG", "OK", null, 12), 148);
            xVar3.a("FirmwareUpdateCrumb " + this.I + " displayCustomerCareErrorMessage: true");
            return;
        }
        TrackManager.INSTANCE.isSoftwareUpdateErrorThrown();
        y yVar2 = y.f15252a;
        m9.k kVar = m9.k.f10877h;
        m9.m mVar = new m9.m(this);
        h.j(kVar, "cancel");
        y.d(yVar2, this, R.string.adapt_firmware_update_failed_title, null, R.string.adapt_firmware_update_failed_body, 0, R.string.adapt_restart_title, R.string.adapt_try_again_button_title, false, mVar, kVar, new y.a("LFT_ERROR_DIALOG", "OK", "TRY_AGAIN", 8), 148);
        xVar3.a("FirmwareUpdateCrumb " + this.I + " displayCustomerCareErrorMessage: false");
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (BigfootApplication.f5638p.b().f5650k == null) {
            super.onBackPressed();
            overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
        } else {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            intent.setFlags(268435456);
            startActivity(intent);
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_firmware_update, (ViewGroup) null, false);
        int i10 = R.id.activity_settings_shoe_prefs_frag_container;
        if (((FrameLayout) b.d(viewInflate, R.id.activity_settings_shoe_prefs_frag_container)) != null) {
            i10 = R.id.view_toolbar;
            View viewD = b.d(viewInflate, R.id.view_toolbar);
            if (viewD != null) {
                RelativeLayout relativeLayout = (RelativeLayout) viewInflate;
                this.J = new e(relativeLayout, e2.a(viewD));
                setContentView(relativeLayout);
                e eVar = this.J;
                if (eVar == null) {
                    h.C("binding");
                    throw null;
                }
                k0(eVar.f13758a.f13789a);
                getWindow().addFlags(128);
                this.K = ((f) androidx.lifecycle.o.m()).a(this, this.B, s.a.C0221a.f12405h, s.a.b.f12406h);
                f.a aVarI0 = i0();
                if (aVarI0 != null) {
                    aVarI0.o(getResources().getString(R.string.adapt_my_shoes_firmware_update_title) + " ");
                    aVarI0.m(true);
                    return;
                }
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0043  */
    /* JADX WARN: Code duplicated, block: B:20:0x0053  */
    @Override // p8.a, p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        z zVar = z.RESTARTING;
        z zVar2 = z.UPDATING;
        z zVar3 = z.CHECK_FOR_UPDATE;
        super.onStart();
        AdaptFirmwareStage adaptFirmwareStageD = ((f) androidx.lifecycle.o.m()).d();
        o7.x.f12420a.a("FirmwareUpdateCrumb " + this.I + " onStart getDefaultDeviceFirmwareStage: " + (adaptFirmwareStageD == null ? "Likely no devices" : adaptFirmwareStageD));
        if ((adaptFirmwareStageD instanceof AdaptFirmwareStage.Failure ? true : adaptFirmwareStageD instanceof AdaptFirmwareStage.ConnectionLost) || (adaptFirmwareStageD instanceof AdaptFirmwareStage.BatteryTooLow) || (adaptFirmwareStageD instanceof AdaptFirmwareStage.NotStarted)) {
            zVar = zVar3;
        } else if (adaptFirmwareStageD instanceof AdaptFirmwareStage.InProgress) {
            zVar = zVar2;
        } else if (!(adaptFirmwareStageD instanceof AdaptFirmwareStage.Reconnecting)) {
            if (adaptFirmwareStageD instanceof AdaptFirmwareStage.FetchingData) {
                zVar = zVar2;
            } else if (!(adaptFirmwareStageD instanceof AdaptFirmwareStage.Flashing)) {
                if (adaptFirmwareStageD instanceof AdaptFirmwareStage.NoUpdateAvailable) {
                    zVar = z.UP_TO_DATE;
                } else if (adaptFirmwareStageD instanceof AdaptFirmwareStage.Completed) {
                    zVar = z.UPDATE_COMPLETE;
                } else {
                    zVar = zVar3;
                }
            }
        }
        G(zVar);
    }
}
