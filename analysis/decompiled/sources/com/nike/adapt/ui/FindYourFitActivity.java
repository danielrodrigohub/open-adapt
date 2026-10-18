package com.nike.adapt.ui;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.x;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.Disconnected;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptDeviceLEDIntensityADK;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.analytics.TrackManager;
import ea.m;
import fe.k;
import h8.e;
import h9.v0;
import i9.b0;
import i9.g;
import i9.t;
import i9.y;
import o7.f;
import o8.d;
import org.greenrobot.eventbus.ThreadMode;
import p8.j;
import p8.q;
import s9.p;
import s9.r;
import v7.h;

/* JADX INFO: compiled from: FindYourFitActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FindYourFitActivity extends q implements d {
    public IDeviceController E;
    public IAdaptRequester F;
    public m G;
    public boolean H;
    public boolean I;
    public String J;
    public String K;
    public boolean L;
    public o8.a M;
    public final fd.d N = o.w(3, c.f5725h);
    public final fd.d O = o.w(3, b.f5724h);

    /* JADX INFO: compiled from: FindYourFitActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5723a;

        static {
            int[] iArr = new int[o8.a.values().length];
            iArr[0] = 1;
            iArr[1] = 2;
            iArr[2] = 3;
            iArr[3] = 4;
            iArr[4] = 5;
            f5723a = iArr;
        }
    }

    /* JADX INFO: compiled from: FindYourFitActivity.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5724h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: FindYourFitActivity.kt */
    public static final class c extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f5725h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return e.f8306b;
        }
    }

    public static /* synthetic */ void q0(FindYourFitActivity findYourFitActivity, Boolean bool, Boolean bool2, int i10) {
        if ((i10 & 2) != 0) {
            bool = null;
        }
        if ((i10 & 4) != 0) {
            bool2 = null;
        }
        findYourFitActivity.p0(null, bool, bool2);
    }

    @Override // o8.d
    public final void O(o8.a aVar) {
        this.M = aVar;
        int i10 = a.f5723a[aVar.ordinal()];
        if (i10 == 1) {
            androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(d0());
            y yVar = new y();
            y.b bVar = y.f8952h0;
            y.b bVar2 = y.f8952h0;
            aVar2.f(R.id.find_your_fit_frag, yVar, y.f8953i0);
            aVar2.c();
            return;
        }
        if (i10 == 2) {
            androidx.fragment.app.a aVar3 = new androidx.fragment.app.a(d0());
            b0 b0Var = new b0();
            b0.a aVar4 = b0.f8833q0;
            b0.a aVar5 = b0.f8833q0;
            aVar3.f(R.id.find_your_fit_frag, b0Var, b0.f8834r0);
            aVar3.c();
            return;
        }
        if (i10 == 3) {
            androidx.fragment.app.a aVar6 = new androidx.fragment.app.a(d0());
            g gVar = new g();
            g.a aVar7 = g.K0;
            g.a aVar8 = g.K0;
            aVar6.f(R.id.find_your_fit_frag, gVar, g.L0);
            aVar6.c();
            return;
        }
        if (i10 == 4) {
            androidx.fragment.app.a aVar9 = new androidx.fragment.app.a(d0());
            t tVar = new t();
            t.a aVar10 = t.f8929u0;
            t.a aVar11 = t.f8929u0;
            aVar9.f(R.id.find_your_fit_frag, tVar, t.f8930v0);
            aVar9.c();
            return;
        }
        if (i10 != 5) {
            return;
        }
        if (o0().c().b()) {
            TrackManager.INSTANCE.multipairCalibrateFitCompleted();
        }
        o0().h(v7.g.COMPLETED);
        o0().i(h.NORMAL);
        if (!this.L) {
            new v0(false, 1, null).e(this);
            return;
        }
        Intent intent = new Intent();
        m mVar = this.G;
        setResult(-1, intent.putExtra("pairID", mVar != null ? mVar.f6677u : null));
        finish();
    }

    @Override // o8.d
    public final void m(String str) {
        p0(str, null, null);
    }

    public final h8.d o0() {
        return (h8.d) this.N.getValue();
    }

    @k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair)) {
            if (adaptConnectionStatusResult instanceof Disconnected) {
                if (adaptConnectionStatusResult.getShoe().isLeft()) {
                    q0(this, Boolean.FALSE, null, 5);
                    return;
                } else {
                    q0(this, null, Boolean.FALSE, 3);
                    return;
                }
            }
            return;
        }
        if (adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.E;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        this.G = adaptConnectionStatusResult.getDevice();
        if (adaptConnectionStatusResult.getShoe().isLeft()) {
            q0(this, Boolean.TRUE, null, 5);
        } else {
            q0(this, null, Boolean.TRUE, 3);
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        o8.a aVar = o8.a.COMPLETED;
        o8.a aVar2 = o8.a.CHOOSE_YOUR_SHOES;
        o8.a aVar3 = o8.a.PUT_SHOES_ON;
        o8.a aVar4 = this.M;
        int i10 = aVar4 == null ? -1 : a.f5723a[aVar4.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                if (o0().k() != v7.g.COMPLETED) {
                    O(aVar2);
                } else {
                    super.onBackPressed();
                }
            } else if (i10 == 3) {
                x xVarD0 = d0();
                g.a aVar5 = g.K0;
                g.a aVar6 = g.K0;
                androidx.fragment.app.m mVarF = xVarD0.F(g.L0);
                boolean z10 = mVarF != null ? ((g) mVarF).H0 : false;
                if (!z10) {
                    aVar = aVar3;
                }
                O(aVar);
                if (z10) {
                    ((h8.a) this.O.getValue()).s(true);
                }
            } else if (i10 == 4) {
                O(aVar3);
            }
        } else {
            x xVarD1 = d0();
            y.b bVar = y.f8952h0;
            y.b bVar2 = y.f8952h0;
            androidx.fragment.app.m mVarF2 = xVarD1.F(y.f8953i0);
            p4.h.h(mVarF2, "null cannot be cast to non-null type com.nike.adapt.ui.onboarding.ChooseYourShoesFragment");
            y yVar = (y) mVarF2;
            r rVar = yVar.f8957f0;
            if (rVar == null) {
                rVar = null;
            }
            if (rVar == null || !yVar.f8956e0) {
                O(aVar);
            } else {
                o0().e(yVar.f8957f0);
                O(aVar2);
            }
        }
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean booleanExtra;
        super.onCreate(bundle);
        setContentView(R.layout.activity_find_your_fit);
        this.F = ((f) o.m()).a(this, this.B, o8.c.f12441h, new o8.b(this));
        this.E = ((f) o.m()).b(this, this.B);
        if (bundle != null) {
            booleanExtra = bundle.getBoolean("extra_is_deep_link");
        } else {
            Intent intent = getIntent();
            booleanExtra = intent != null ? intent.getBooleanExtra("extra_is_deep_link", false) : false;
        }
        this.L = booleanExtra;
        if (o0().k() != v7.g.COMPLETED) {
            O(o8.a.CHOOSE_YOUR_SHOES);
        } else {
            O(o8.a.PUT_SHOES_ON);
        }
    }

    @Override // androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        p4.h.j(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("extra_is_deep_link", this.L);
    }

    public final void p0(String str, Boolean bool, Boolean bool2) {
        if (str != null) {
            this.J = str;
        }
        if (bool != null) {
            this.H = bool.booleanValue();
        }
        if (bool2 != null) {
            this.I = bool2.booleanValue();
        }
        String str2 = this.J;
        if (str2 == null || !this.H || !this.I || p4.h.c(this.K, str2)) {
            return;
        }
        p pVar = p.f15222a;
        String strL = pVar.l(pVar.k(str2));
        m mVar = this.G;
        if (mVar != null) {
            m mVarA = m.a(mVar, strL, false, null, null, null, this.J, null, 0L, false, 8125);
            this.G = mVarA;
            IDeviceController iDeviceController = this.E;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController.updatePair(mVarA);
        }
        AdaptMarshaller.AdaptPreset adaptPresetM = pVar.m(str);
        if (adaptPresetM != null) {
            AdaptDeviceColor adaptDeviceColor = new AdaptDeviceColor(adaptPresetM, AdaptDeviceLEDIntensityADK.HIGHEST);
            IDeviceController iDeviceController2 = this.E;
            if (iDeviceController2 == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController2.requestTo(Shoe.LEFT, new j(adaptDeviceColor));
            IDeviceController iDeviceController3 = this.E;
            if (iDeviceController3 == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController3.requestTo(Shoe.RIGHT, new j(adaptDeviceColor));
            ((h8.a) this.O.getValue()).b0(AdaptShoeColor.Companion.create(adaptDeviceColor, adaptDeviceColor));
        }
        this.K = str2;
    }
}
