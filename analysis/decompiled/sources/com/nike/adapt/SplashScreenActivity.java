package com.nike.adapt;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.lifecycle.o;
import com.google.android.exoplayer2.ui.PlayerView;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.SplashScreenActivity;
import com.nike.adapt.adk.AdaptMarshallerKt;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptDeviceLEDIntensityADK;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.ShoeColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.coroutine.MainCoroutineScope;
import f.e;
import h9.i;
import h9.n;
import h9.v;
import h9.v0;
import java.util.UUID;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import l5.m;
import n3.k0;
import n3.y0;
import o7.a0;
import o7.b0;
import o7.f;
import o7.h;
import o7.x;
import q.g;
import q7.g0;
import s9.p;
import s9.r;

/* JADX INFO: compiled from: SplashScreenActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"CustomSplashScreen"})
@Instrumented
public class SplashScreenActivity extends e implements h, TraceFieldInterface {
    public static final /* synthetic */ int K = 0;
    public g0 A;
    public k0 B;
    public final fd.d C = o.w(3, d.f5675h);
    public final fd.d D = o.w(3, b.f5673h);
    public final String E = getClass().getSimpleName();
    public final UUID F;
    public final fd.h G;
    public final MainCoroutineScope H;
    public int I;
    public boolean J;

    /* JADX INFO: compiled from: SplashScreenActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5672a;

        static {
            int[] iArr = new int[g.b(5).length];
            iArr[0] = 1;
            iArr[1] = 2;
            iArr[2] = 3;
            iArr[3] = 4;
            iArr[4] = 5;
            f5672a = iArr;
        }
    }

    /* JADX INFO: compiled from: SplashScreenActivity.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5673h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: SplashScreenActivity.kt */
    public static final class c extends rd.o implements qd.a<k8.h> {
        public c() {
            super(0);
        }

        @Override // qd.a
        public final k8.h invoke() {
            int i10 = k8.h.f9749e;
            SplashScreenActivity splashScreenActivity = SplashScreenActivity.this;
            return new k8.a(new i8.d(splashScreenActivity.E, splashScreenActivity.F));
        }
    }

    /* JADX INFO: compiled from: SplashScreenActivity.kt */
    public static final class d extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f5675h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return h8.e.f8306b;
        }
    }

    public SplashScreenActivity() {
        UUID uuidRandomUUID = UUID.randomUUID();
        p4.h.i(uuidRandomUUID, "randomUUID()");
        this.F = uuidRandomUUID;
        this.G = (fd.h) o.x(new c());
        this.H = new MainCoroutineScope();
        this.J = true;
    }

    public static final h8.d l0(SplashScreenActivity splashScreenActivity) {
        return (h8.d) splashScreenActivity.C.getValue();
    }

    public final h8.a m0() {
        return (h8.a) this.D.getValue();
    }

    public final void n0() {
        x.f12420a.a("Background Check App Launch State : " + ((f) o.m()).d() + " : " + androidx.recyclerview.widget.d.i(this.I));
        if (isFinishing()) {
            return;
        }
        int i10 = this.I;
        int i11 = i10 == 0 ? -1 : a.f5672a[g.a(i10)];
        if (i11 == 1) {
            v.f8362c.e(this);
        } else if (i11 == 2) {
            new v0(false, 1, null).e(this);
        } else if (i11 == 3) {
            i.f8334c.e(this);
        } else if (i11 == 4) {
            new n(true, true).e(this);
        } else if (i11 == 5) {
            m0().h0(false);
            new n(false, false).e(this);
        }
        this.I = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) throws l5.g0.a {
        AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK;
        int i10;
        String str;
        Object[] objArr;
        Object[] objArr2;
        Object[] objArr3;
        TraceMachine.startTracing("SplashScreenActivity");
        while (true) {
            adaptDeviceLEDIntensityADK = null;
            objArr3 = 0;
            objArr2 = 0;
            objArr = 0;
            try {
                TraceMachine.enterMethod(null, "SplashScreenActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        int i11 = 2;
        if (m0() == null || m0().S() == null) {
            m0().b0(AdaptShoeColor.Companion.create$default(AdaptShoeColor.Companion, ShoeColor.HERO_BLUE, null, 2, null));
        }
        AdaptMarshallerKt.getAdaptKitColorPreset(new AdaptDeviceColor(m0().S().getLeftAdaptPreset(), adaptDeviceLEDIntensityADK, i11, objArr == true ? 1 : 0));
        AdaptMarshallerKt.getAdaptKitColorPreset(new AdaptDeviceColor(m0().S().getRightAdaptPreset(), objArr2 == true ? 1 : 0, i11, objArr3 == true ? 1 : 0));
        AdaptShoeColor adaptShoeColorS = m0().S();
        if (!adaptShoeColorS.isOff()) {
            m0().k0(adaptShoeColorS);
        }
        this.J = getIntent().getBooleanExtra("PARAM_SPLASH_SCREEN_SHOW", true);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_splash_screen, (ViewGroup) null, false);
        PlayerView playerView = (PlayerView) g7.b.d(viewInflate, R.id.splash_video);
        if (playerView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.splash_video)));
        }
        FrameLayout frameLayout = (FrameLayout) viewInflate;
        this.A = new g0(frameLayout, playerView);
        setContentView(frameLayout);
        this.f662k.a(this.H);
        r shoeType = m0().getShoeType();
        p4.h.j(shoeType, "shoeType");
        n3.r rVarA = new n3.r.b(this).a();
        k0 k0Var = (k0) rVarA;
        this.B = k0Var;
        k0Var.E(0);
        k0Var.A0(0.0f);
        k0Var.i(true);
        l5.g0 g0Var = new l5.g0(this);
        p pVar = p.f15222a;
        int iOrdinal = shoeType.ordinal();
        if (iOrdinal != 3) {
            i10 = (iOrdinal == 4 || iOrdinal == 5) ? R.raw.jordan_intro : R.raw.adapt_generic_intro;
        } else {
            i10 = R.raw.automax_intro;
        }
        g0Var.l(new m(l5.g0.buildRawResourceUri(i10)));
        Uri uri = g0Var.f10030g;
        if (uri != null) {
            ((n3.e) rVarA).f0(y0.c(uri));
            k0Var.b();
        }
        TrackManager trackManager = TrackManager.INSTANCE;
        int iOrdinal2 = shoeType.ordinal();
        if (iOrdinal2 != 3) {
            str = (iOrdinal2 == 4 || iOrdinal2 == 5) ? "Jordan" : "Adapt";
        } else {
            str = "Automax";
        }
        trackManager.showSplashScreen(str);
        k0Var.a0(new b0(this));
        g0 g0Var2 = this.A;
        if (g0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        g0Var2.f13824a.setPlayer(this.B);
        g0 g0Var3 = this.A;
        if (g0Var3 == null) {
            p4.h.C("binding");
            throw null;
        }
        g0Var3.f13824a.d();
        g0 g0Var4 = this.A;
        if (g0Var4 == null) {
            p4.h.C("binding");
            throw null;
        }
        g0Var4.f13824a.setOnTouchListener(new View.OnTouchListener() { // from class: o7.z
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                SplashScreenActivity splashScreenActivity = this.f12433h;
                int i12 = SplashScreenActivity.K;
                p4.h.j(splashScreenActivity, "this$0");
                if (splashScreenActivity.I == 0 || !splashScreenActivity.m0().l()) {
                    return true;
                }
                splashScreenActivity.n0();
                return true;
            }
        });
        k9.c cVar = k9.c.f9752a;
        SharedPreferences.Editor editorEdit = k9.c.f9753b.edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putBoolean("WAITING_FOR_NEW_SESSION_BEFORE_RATE_DIALOG", false);
        editorEdit.apply();
        TraceMachine.exitMethod();
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        ApplicationStateMonitor.getInstance().activityStarted();
        super.onStart();
        TrackManager.INSTANCE.isScreenViewed(TrackManager.Screen.ANIMATEDSPLASH);
        BuildersKt__Builders_commonKt.launch$default(this.H, Dispatchers.getIO(), null, new a0(this, null), 2, null);
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }
}
