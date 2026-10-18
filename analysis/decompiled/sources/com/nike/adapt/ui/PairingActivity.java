package com.nike.adapt.ui;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.o;
import com.google.android.exoplayer2.ui.PlayerView;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.service.AdaptAuthenticationService;
import h9.g0;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import n3.k0;
import n3.o1;
import n3.y0;
import n8.f;
import n8.i;
import n8.j;
import o7.x;
import o8.m;
import o8.n;
import o8.u;
import o8.v;
import o8.w;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.q;
import q7.i1;
import q7.s;
import qd.l;
import s9.p;
import s9.r;
import s9.y;
import v7.g;
import v9.i0;
import v9.o0;
import v9.t;
import wa.k;

/* JADX INFO: compiled from: PairingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PairingActivity extends q {
    public static final /* synthetic */ int Y = 0;
    public s E;
    public i1 F;
    public AdaptAuthenticationService G;
    public androidx.appcompat.app.d H;
    public androidx.appcompat.app.d I;
    public androidx.appcompat.app.d J;
    public androidx.appcompat.app.d K;
    public Job L;
    public Job M;
    public Job N;
    public k0 P;
    public int Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public int O = 1;
    public final Handler U = new Handler(Looper.getMainLooper());
    public final h8.c V = h8.c.f8298b;
    public final fd.d W = o.w(3, c.f5730h);
    public final a X = new a();

    /* JADX INFO: compiled from: PairingActivity.kt */
    public static final class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            h.j(componentName, "name");
            h.j(iBinder, "service");
            PairingActivity pairingActivity = PairingActivity.this;
            AdaptAuthenticationService adaptAuthenticationService = AdaptAuthenticationService.this;
            pairingActivity.G = adaptAuthenticationService;
            pairingActivity.S = true;
            if (adaptAuthenticationService != null) {
                n8.d dVar = new n8.d(adaptAuthenticationService);
                v9.k0 k0Var = new v9.k0();
                dVar.invoke(k0Var);
                adaptAuthenticationService.f5683j = new i0(k0Var);
                if (aa.a.a()) {
                    i0 i0Var = adaptAuthenticationService.f5683j;
                    if (i0Var == null) {
                        h.C("pairing");
                        throw null;
                    }
                    i0Var.f();
                } else {
                    i0 i0Var2 = adaptAuthenticationService.f5683j;
                    if (i0Var2 == null) {
                        h.C("pairing");
                        throw null;
                    }
                    i0Var2.e();
                }
                x.f12420a.a("Pairing - Started Pairing");
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            h.j(componentName, "name");
            PairingActivity pairingActivity = PairingActivity.this;
            AdaptAuthenticationService adaptAuthenticationService = pairingActivity.G;
            if (adaptAuthenticationService != null) {
                adaptAuthenticationService.d(pairingActivity.R);
            }
            PairingActivity pairingActivity2 = PairingActivity.this;
            pairingActivity2.G = null;
            pairingActivity2.S = false;
        }
    }

    /* JADX INFO: compiled from: PairingActivity.kt */
    public static final class b implements o1.c {
        public b() {
        }

        @Override // n3.o1.c
        public final void U(int i10) {
            PairingActivity pairingActivity;
            AdaptAuthenticationService adaptAuthenticationService;
            if (i10 != 4 || (adaptAuthenticationService = (pairingActivity = PairingActivity.this).G) == null) {
                return;
            }
            int i11 = adaptAuthenticationService.f5682i;
            if (i11 == 2 || i11 == 3) {
                k0 k0Var = pairingActivity.P;
                if (k0Var == null) {
                    h.C("exoPlayer");
                    throw null;
                }
                k0Var.R(0L);
                pairingActivity.O = 1;
                s9.o oVar = s9.o.f15218a;
                int i12 = adaptAuthenticationService.f5682i;
                i1 i1Var = pairingActivity.F;
                if (i1Var == null) {
                    h.C("itemMessagingHeadlineBinding");
                    throw null;
                }
                TextView textView = i1Var.f13858c;
                h.i(textView, "itemMessagingHeadlineBin…ng.messagingHeadlineTitle");
                i1 i1Var2 = pairingActivity.F;
                if (i1Var2 == null) {
                    h.C("itemMessagingHeadlineBinding");
                    throw null;
                }
                TextView textView2 = i1Var2.f13856a;
                h.i(textView2, "itemMessagingHeadlineBin…messagingHeadlineMessage1");
                oVar.a(i12, textView, textView2);
            }
            if (adaptAuthenticationService.f5682i == 4) {
                pairingActivity.R = true;
                BuildersKt__Builders_commonKt.launch$default(pairingActivity.A, null, null, new o8.q(pairingActivity, null), 3, null);
                pairingActivity.s0();
            }
        }
    }

    /* JADX INFO: compiled from: PairingActivity.kt */
    public static final class c extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f5730h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return h8.e.f8306b;
        }
    }

    /* JADX INFO: compiled from: PairingActivity.kt */
    public static final class d extends rd.o implements l<androidx.appcompat.app.d, fd.o> {
        public d() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            h.j(dVar2, "it");
            x.f12420a.a("Pairing Connection Error - Pressed: Try Again");
            TrackManager.INSTANCE.isConnectionErrorTryAgainButtonSelected();
            PairingActivity pairingActivity = PairingActivity.this;
            int i10 = PairingActivity.Y;
            pairingActivity.q0();
            dVar2.dismiss();
            PairingActivity.this.H = null;
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: PairingActivity.kt */
    public static final class e extends rd.o implements l<androidx.appcompat.app.d, fd.o> {
        public e() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            h.j(dVar2, "it");
            x.f12420a.a("Pairing Connection Error - Pressed: Get Help");
            TrackManager.INSTANCE.isConnectionErrorGetHelpButtonSelected();
            dVar2.dismiss();
            PairingActivity pairingActivity = PairingActivity.this;
            pairingActivity.H = null;
            AdaptAuthenticationService adaptAuthenticationService = pairingActivity.G;
            if (adaptAuthenticationService != null) {
                adaptAuthenticationService.stopSelf();
            }
            new g0(g0.f8326f.a(), false).e(PairingActivity.this);
            return fd.o.f7408a;
        }
    }

    @Override // p8.q
    @SuppressLint({"WrongConstant"})
    public final void m0() {
        k kVar = k.f17583b;
        Context applicationContext = getApplicationContext();
        h.i(applicationContext, "applicationContext");
        if (((ja.a) kVar.a(applicationContext)).f()) {
            if (!this.S) {
                bindService(new Intent(this, (Class<?>) AdaptAuthenticationService.class), this.X, 1);
            }
            AdaptAuthenticationService adaptAuthenticationService = this.G;
            if ((adaptAuthenticationService != null ? adaptAuthenticationService.f5682i : 0) != 4) {
                q0();
                return;
            }
            this.O = 3;
            this.R = true;
            BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new o8.q(this, null), 3, null);
            s0();
            return;
        }
        t tVar = t.f16822a;
        if (t.f16832k) {
            ja.b bVarA = kVar.a(tVar.d());
            o0 o0Var = t.f16826e;
            if (o0Var == null) {
                h.C("requirementsListener");
                throw null;
            }
            if (o0Var.b()) {
                if (((ja.a) bVarA).f()) {
                    o0 o0Var2 = t.f16826e;
                    if (o0Var2 != null) {
                        o0Var2.a();
                        return;
                    } else {
                        h.C("requirementsListener");
                        throw null;
                    }
                }
                o0 o0Var3 = t.f16826e;
                if (o0Var3 != null) {
                    o0Var3.c(bVarA);
                } else {
                    h.C("requirementsListener");
                    throw null;
                }
            }
        }
    }

    public final void o0() {
        androidx.appcompat.app.d dVar = this.I;
        if (dVar != null) {
            dVar.dismiss();
        }
        androidx.appcompat.app.d dVar2 = this.J;
        if (dVar2 != null) {
            dVar2.dismiss();
        }
        androidx.appcompat.app.d dVar3 = this.H;
        if (dVar3 != null) {
            dVar3.dismiss();
        }
        androidx.appcompat.app.d dVar4 = this.K;
        if (dVar4 != null) {
            dVar4.dismiss();
        }
        k0 k0Var = this.P;
        if (k0Var != null) {
            k0Var.i(true);
        } else {
            h.C("exoPlayer");
            throw null;
        }
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(f fVar) {
        androidx.appcompat.app.d dVar;
        androidx.appcompat.app.d dVar2;
        h.j(fVar, "authenticationResult");
        if (fVar instanceof j) {
            j jVar = (j) fVar;
            s9.o oVar = s9.o.f15218a;
            boolean zIsRight = jVar.f12015h.isRight();
            String str = jVar.f12016i;
            h.j(str, "colorwayCode");
            if (zIsRight) {
                s9.o.f15219b.l().edit().putString("PREF_ON_BOARDING_RIGHT_COLORWAY_CODE", str).apply();
            } else {
                s9.o.f15219b.l().edit().putString("PREF_ON_BOARDING_LEFT_COLORWAY_CODE", str).apply();
            }
            h8.e eVar = s9.o.f15219b;
            String string = eVar.l().getString("PREF_ON_BOARDING_LEFT_COLORWAY_CODE", null);
            String string2 = eVar.l().getString("PREF_ON_BOARDING_RIGHT_COLORWAY_CODE", null);
            if (string == null) {
                string = string2;
            }
            p pVar = p.f15222a;
            if (h.c(string, "Nike EARL BB") || string == null) {
                string = "001-AO2582-001";
            }
            x.f12420a.a("Shoe Name Code Detected : " + string);
            r rVarK = pVar.k(string);
            eVar.e(rVarK);
            eVar.a(string);
            if (rVarK != null) {
                TrackManager.INSTANCE.shoeRecognizedWhenPaired(rVarK);
                return;
            }
            return;
        }
        if (fVar instanceof n8.q) {
            s9.o oVar2 = s9.o.f15218a;
            s9.o.f15221d = System.currentTimeMillis();
            this.L = BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new n(this, null), 3, null);
            return;
        }
        if (fVar instanceof i) {
            if (((h8.d) this.W.getValue()).k() == g.PAIR_FIRST_SHOE) {
                TrackManager.INSTANCE.firstShoeConnectionAttempt();
                return;
            }
            return;
        }
        if (fVar instanceof n8.p) {
            this.O = 2;
            o0();
            k0 k0Var = this.P;
            if (k0Var == null) {
                h.C("exoPlayer");
                throw null;
            }
            k0Var.R(13200L);
            this.M = BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new o8.o(this, ((n8.p) fVar).f12025h.isRight(), null), 3, null);
            Job job = this.L;
            if (job != null) {
                job.invokeOnCompletion(new o8.p(this));
                return;
            }
            return;
        }
        if (fVar instanceof n8.r) {
            this.O = 3;
            o0();
            k0 k0Var2 = this.P;
            if (k0Var2 == null) {
                h.C("exoPlayer");
                throw null;
            }
            k0Var2.R(16360L);
            androidx.appcompat.app.d dVar3 = this.H;
            if (dVar3 != null) {
                dVar3.dismiss();
            }
            this.N = BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new o8.l(this, null), 3, null);
            Job job2 = this.M;
            if (job2 != null) {
                job2.invokeOnCompletion(new m(this));
                return;
            }
            return;
        }
        if (fVar instanceof n8.e) {
            p0();
            if (this.O == 2) {
                r0();
                return;
            }
            androidx.appcompat.app.d dVar4 = this.I;
            if (dVar4 == null) {
                this.I = y.d(y.f15252a, this, R.string.adapt_shoe_already_paired_title, null, R.string.adapt_shoe_already_paired_body, 0, R.string.adapt_dismiss_button_title, R.string.adapt_connection_failed_cta_dialog_title, false, new o8.s(this), new o8.t(this), new y.a("SHOE_ALREADY_PAIRED_DIALOG", "TRY_AGAIN", "GET_HELP", 8), 148);
                TrackManager.INSTANCE.isShoeAlreadyPairedShown();
                return;
            } else {
                if (!dVar4.isShowing()) {
                    TrackManager.INSTANCE.isShoeAlreadyPairedShown();
                    if (isFinishing() || (dVar2 = this.I) == null) {
                        return;
                    }
                    dVar2.show();
                    return;
                }
                return;
            }
        }
        if (fVar instanceof n8.o) {
            p0();
            x.f12420a.b("ResetErrorDialog", "In GoToBleSettingsAuthenticationResult");
            androidx.appcompat.app.d dVar5 = this.J;
            if (dVar5 == null) {
                this.J = y.d(y.f15252a, this, R.string.adapt_reset_shoes_button_title, null, R.string.adapt_fully_reset_settings_copy, 0, R.string.adapt_dismiss_button_title, R.string.adapt_settings_title, false, new w(this), new o8.x(this), new y.a("RESET_BLE_SETTINGS_DIALOG", "DISMISS", "SETTINGS", 8), 148);
                return;
            } else {
                if (!(!dVar5.isShowing()) || isFinishing() || (dVar = this.J) == null) {
                    return;
                }
                dVar.show();
                return;
            }
        }
        if (!(fVar instanceof n8.h)) {
            if (fVar instanceof n8.g) {
                o0();
                return;
            }
            return;
        }
        p0();
        androidx.appcompat.app.d dVar6 = this.K;
        if (dVar6 == null) {
            this.K = y.d(y.f15252a, this, R.string.aos_adapt_pairing_connection_error, null, R.string.aos_adapt_pairing_connection_error_message, R.string.aos_adapt_connection_error_disclaimer, R.string.adapt_get_help_button_title, R.string.aos_adapt_connection_error_reconnect, false, new u(this), new v(this), new y.a("NEW_BLE_CONNECTION_ERROR_DIALOG", "RECONNECT", "GET_HELP", 8), 132);
            return;
        }
        if (!(!dVar6.isShowing()) || isFinishing()) {
            return;
        }
        TrackManager.INSTANCE.pairingConnectionErrorPresented();
        androidx.appcompat.app.d dVar7 = this.K;
        if (dVar7 != null) {
            dVar7.show();
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        s0();
        finish();
        super.onBackPressed();
        s9.o oVar = s9.o.f15218a;
        if (s9.o.f15220c.z()) {
            return;
        }
        h8.e eVar = s9.o.f15219b;
        eVar.h(g.WELCOME);
        eVar.i(v7.h.NORMAL);
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) throws l5.g0.a {
        boolean booleanExtra;
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_pairing, (ViewGroup) null, false);
        int i10 = R.id.headline_frame;
        if (((LinearLayout) g7.b.d(viewInflate, R.id.headline_frame)) != null) {
            i10 = R.id.pairing_video;
            PlayerView playerView = (PlayerView) g7.b.d(viewInflate, R.id.pairing_video);
            if (playerView != null) {
                FrameLayout frameLayout = (FrameLayout) viewInflate;
                this.E = new s(frameLayout, playerView, frameLayout);
                this.F = i1.a(frameLayout);
                s sVar = this.E;
                if (sVar == null) {
                    h.C("binding");
                    throw null;
                }
                setContentView(sVar.f13993a);
                k0((Toolbar) findViewById(R.id.bgf_toolbar));
                getWindow().addFlags(128);
                f.a aVarI0 = i0();
                if (aVarI0 != null) {
                    aVarI0.o(getResources().getString(R.string.adapt_settings_firmware_update_title));
                    aVarI0.m(true);
                }
                if (bundle != null) {
                    booleanExtra = bundle.getBoolean("extra_is_deep_link");
                } else {
                    Intent intent = getIntent();
                    booleanExtra = intent != null ? intent.getBooleanExtra("extra_is_deep_link", false) : false;
                }
                this.T = booleanExtra;
                s sVar2 = this.E;
                if (sVar2 == null) {
                    h.C("binding");
                    throw null;
                }
                sVar2.f13995c.setBackground(new ColorDrawable(-1));
                s sVar3 = this.E;
                if (sVar3 == null) {
                    h.C("binding");
                    throw null;
                }
                sVar3.f13994b.setShutterBackgroundColor(0);
                Object objA = new n3.r.b(this).a();
                k0 k0Var = (k0) objA;
                this.P = k0Var;
                k0Var.E(0);
                k0Var.A0(0.0f);
                k0Var.i(true);
                l5.g0 g0Var = new l5.g0(this);
                g0Var.l(new l5.m(l5.g0.buildRawResourceUri(R.raw.adapt_pairing_flow)));
                Uri uri = g0Var.f10030g;
                if (uri != null) {
                    ((n3.e) objA).f0(y0.c(uri));
                    k0Var.b();
                }
                k0Var.a0(new b());
                s sVar4 = this.E;
                if (sVar4 == null) {
                    h.C("binding");
                    throw null;
                }
                PlayerView playerView2 = sVar4.f13994b;
                k0 k0Var2 = this.P;
                if (k0Var2 == null) {
                    h.C("exoPlayer");
                    throw null;
                }
                playerView2.setPlayer(k0Var2);
                s sVar5 = this.E;
                if (sVar5 != null) {
                    sVar5.f13994b.d();
                    return;
                } else {
                    h.C("binding");
                    throw null;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        k0 k0Var = this.P;
        if (k0Var == null) {
            h.C("exoPlayer");
            throw null;
        }
        this.U.post(new o8.r(this, k0Var));
    }

    @Override // androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        h.j(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("extra_is_deep_link", this.T);
    }

    @Override // p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        s0();
    }

    public final void p0() {
        k0 k0Var = this.P;
        if (k0Var != null) {
            k0Var.i(false);
        } else {
            h.C("exoPlayer");
            throw null;
        }
    }

    public final void q0() {
        s9.o oVar = s9.o.f15218a;
        s9.o.f15221d = System.currentTimeMillis();
        this.O = 1;
        this.Q = 0;
        androidx.appcompat.app.d dVar = this.I;
        if (dVar != null) {
            dVar.dismiss();
        }
        androidx.appcompat.app.d dVar2 = this.J;
        if (dVar2 != null) {
            dVar2.dismiss();
        }
        androidx.appcompat.app.d dVar3 = this.K;
        if (dVar3 != null) {
            dVar3.dismiss();
        }
        androidx.appcompat.app.d dVar4 = this.H;
        if (dVar4 != null) {
            dVar4.dismiss();
        }
        k0 k0Var = this.P;
        if (k0Var != null) {
            k0Var.i(true);
        }
    }

    public final void r0() {
        androidx.appcompat.app.d dVar;
        try {
            androidx.appcompat.app.d dVar2 = this.H;
            if (dVar2 == null) {
                this.H = y.d(y.f15252a, this, R.string.adapt_connection_failed_title, null, R.string.adapt_connection_failed_description, 0, R.string.adapt_try_again_button_title, R.string.adapt_get_help_button_title, false, new d(), new e(), new y.a("CONNECTION_ERROR_DIALOG", "TRY_AGAIN", "GET_HELP", 8), 148);
                TrackManager.INSTANCE.isPairingConnectionErrorShown();
            } else {
                if (dVar2.isShowing() ? false : true) {
                    TrackManager.INSTANCE.isPairingConnectionErrorShown();
                    if (!isFinishing() && (dVar = this.H) != null) {
                        dVar.show();
                    }
                }
            }
        } catch (WindowManager.BadTokenException e10) {
            x.f12420a.a("WindowManager.BadTokenException crash :" + e10 + ".message.toString()");
        }
    }

    public final void s0() {
        this.U.removeCallbacksAndMessages(null);
        AdaptAuthenticationService adaptAuthenticationService = this.G;
        if (adaptAuthenticationService != null) {
            adaptAuthenticationService.d(this.R);
        }
        if (this.S) {
            try {
                this.S = false;
                AdaptAuthenticationService adaptAuthenticationService2 = this.G;
                if (adaptAuthenticationService2 != null) {
                    adaptAuthenticationService2.stopSelf();
                }
                unbindService(this.X);
            } catch (Throwable unused) {
            }
        }
    }
}
