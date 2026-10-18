package com.nike.adapt.ui.gestures;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import com.google.android.exoplayer2.ui.PlayerView;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetGestureConfigResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.SetGestureConfigResult;
import com.nike.adapt.adk.model.AdaptGestureConfiguration;
import com.nike.adapt.adk.model.AdaptGestureConfigurationResponse;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import fe.k;
import h9.v0;
import java.util.List;
import l5.g0;
import l5.m;
import n3.e;
import n3.k0;
import n3.r;
import n3.y0;
import o7.f;
import o7.s;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.a0;
import q7.g;
import q7.h1;
import qd.l;
import u8.q;

/* JADX INFO: compiled from: GestureIntroModalActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GestureIntroModalActivity extends p8.a implements w8.a {
    public static final /* synthetic */ int T = 0;
    public g I;
    public h1 J;
    public k0 K;
    public IDeviceController M;
    public IAdaptRequester N;
    public androidx.appcompat.app.d O;
    public androidx.appcompat.app.d P;
    public boolean R;
    public final List<u8.g> L = o.e(new q(this, null, 0, 30), new u8.c(R.id.gesture_intro_modal_parent, this));
    public boolean Q = true;
    public final fd.d S = o.w(3, b.f5734h);

    /* JADX INFO: compiled from: GestureIntroModalActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5733a;

        static {
            int[] iArr = new int[AdaptGestureConfigurationResponse.values().length];
            iArr[AdaptGestureConfigurationResponse.CONFIG_SET.ordinal()] = 1;
            iArr[AdaptGestureConfigurationResponse.CRITICAL_BATTERY.ordinal()] = 2;
            iArr[AdaptGestureConfigurationResponse.UNKNOWN.ordinal()] = 3;
            f5733a = iArr;
        }
    }

    /* JADX INFO: compiled from: GestureIntroModalActivity.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5734h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: GestureIntroModalActivity.kt */
    public static final class c extends rd.o implements l<androidx.appcompat.app.d, fd.o> {
        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            h.j(dVar2, "alertDialog");
            h9.o.f8346c.e(GestureIntroModalActivity.this);
            dVar2.dismiss();
            TrackManager.INSTANCE.gesturesErrorUserSelectsSettings();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: GestureIntroModalActivity.kt */
    public static final class d extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ r f5736h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(r rVar) {
            super(0);
            this.f5736h = rVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            if (this.f5736h.b0() > 5600) {
                this.f5736h.R(0L);
            }
            return fd.o.f7408a;
        }
    }

    @Override // w8.a
    public final androidx.appcompat.app.d c() {
        return this.O;
    }

    @Override // w8.a
    public final void h(androidx.appcompat.app.d dVar) {
        this.P = dVar;
    }

    @Override // p8.a
    public final List<u8.g> o0() {
        return this.L;
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 23 && i11 == -1) {
            h9.o.f8346c.e(this);
            finish();
        }
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        this.F.b(adaptConnectionStatusResult);
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.M;
        if (iDeviceController == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        h1 h1Var = this.J;
        if (h1Var == null) {
            h.C("ctaBinding");
            throw null;
        }
        h1Var.f13840a.setClickable(true);
        IDeviceController iDeviceController2 = this.M;
        if (iDeviceController2 != null) {
            iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), a0.f13308a);
        } else {
            h.C("deviceController");
            throw null;
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (!(deviceControllerResult instanceof SetGestureConfigResult)) {
            if (deviceControllerResult instanceof GetGestureConfigResult) {
                this.Q = ((GetGestureConfigResult) deviceControllerResult).getGestureConfigResult().contains(AdaptGestureConfiguration.DoubleTapUnlace.INSTANCE);
                return;
            }
            return;
        }
        new c();
        SetGestureConfigResult setGestureConfigResult = (SetGestureConfigResult) deviceControllerResult;
        int i10 = a.f5733a[setGestureConfigResult.getGestureConfigurationResponse().ordinal()];
        if (i10 == 1) {
            if (setGestureConfigResult.getShoe().isLeft() && this.R) {
                new v0(true).e(this);
                return;
            }
            return;
        }
        if (i10 == 2) {
            h.t(this, this, true);
        } else {
            if (i10 != 3) {
                return;
            }
            h.u(this, this, true);
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        g gVar = this.I;
        if (gVar == null) {
            h.C("binding");
            throw null;
        }
        if (gVar.f13822b.u()) {
            return;
        }
        super.onBackPressed();
        p0().X();
        TrackManager.gestureIntroModalDismiss$default(TrackManager.INSTANCE, null, 1, null);
        finish();
    }

    /* JADX WARN: Code duplicated, block: B:78:0x01dd A[PHI: r6
      0x01dd: PHI (r6v3 int) = (r6v2 int), (r6v4 int), (r6v5 int) binds: [B:15:0x0062, B:17:0x006d, B:19:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) throws g0.a {
        super.onCreate(bundle);
        int i10 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_gestures_intro_modal, (ViewGroup) null, false);
        int i11 = R.id.constraint;
        if (((ConstraintLayout) g7.b.d(viewInflate, R.id.constraint)) != null) {
            i11 = R.id.gesture_into_modal_video;
            PlayerView playerView = (PlayerView) g7.b.d(viewInflate, R.id.gesture_into_modal_video);
            if (playerView != null) {
                i11 = R.id.gesture_intro_bottom_sheet;
                BottomSheet bottomSheet = (BottomSheet) g7.b.d(viewInflate, R.id.gesture_intro_bottom_sheet);
                if (bottomSheet != null) {
                    i11 = R.id.gesture_intro_cta;
                    View viewD = g7.b.d(viewInflate, R.id.gesture_intro_cta);
                    if (viewD != null) {
                        int i12 = R.id.messaging_cta_primary;
                        Button button = (Button) g7.b.d(viewD, R.id.messaging_cta_primary);
                        if (button != null) {
                            i12 = R.id.messaging_cta_secondary;
                            Button button2 = (Button) g7.b.d(viewD, R.id.messaging_cta_secondary);
                            if (button2 != null) {
                                h1 h1Var = new h1(button, button2);
                                int i13 = R.id.gesture_intro_heading;
                                if (((TextView) g7.b.d(viewInflate, R.id.gesture_intro_heading)) != null) {
                                    i13 = R.id.gesture_intro_label;
                                    if (((TextView) g7.b.d(viewInflate, R.id.gesture_intro_label)) != null) {
                                        i13 = R.id.gesture_intro_modal_content;
                                        if (((FrameLayout) g7.b.d(viewInflate, R.id.gesture_intro_modal_content)) != null) {
                                            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                            int i14 = R.id.gesture_intro_sub_copy;
                                            if (((TextView) g7.b.d(viewInflate, R.id.gesture_intro_sub_copy)) != null) {
                                                i14 = R.id.half_vertical_guideline;
                                                if (((Guideline) g7.b.d(viewInflate, R.id.half_vertical_guideline)) != null) {
                                                    this.I = new g(coordinatorLayout, playerView, bottomSheet, h1Var);
                                                    setContentView(coordinatorLayout);
                                                    g gVar = this.I;
                                                    if (gVar == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    h1 h1Var2 = gVar.f13823c;
                                                    h.i(h1Var2, "binding.gestureIntroCta");
                                                    this.J = h1Var2;
                                                    TrackManager.gestureIntroModal$default(TrackManager.INSTANCE, null, 1, null);
                                                    this.N = ((f) o.m()).a(this, this.B, s.a.C0221a.f12405h, s.a.b.f12406h);
                                                    this.M = ((f) o.m()).b(this, this.B);
                                                    r rVarA = new r.b(this).a();
                                                    k0 k0Var = (k0) rVarA;
                                                    this.K = k0Var;
                                                    k0Var.E(2);
                                                    k0Var.A0(0.0f);
                                                    k0Var.i(true);
                                                    g0 g0Var = new g0(this);
                                                    g0Var.l(new m(g0.buildRawResourceUri(R.raw.gesture_tutorial)));
                                                    Uri uri = g0Var.f10030g;
                                                    if (uri != null) {
                                                        ((e) rVarA).f0(y0.c(uri));
                                                        k0Var.b();
                                                    }
                                                    h.x(rVarA, new d(rVarA));
                                                    g gVar2 = this.I;
                                                    if (gVar2 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    gVar2.f13821a.setPlayer(this.K);
                                                    g gVar3 = this.I;
                                                    if (gVar3 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    gVar3.f13821a.d();
                                                    h1 h1Var3 = this.J;
                                                    if (h1Var3 == null) {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                    h1Var3.f13840a.setText(R.string.adapt_unlace_gesture_turn_on);
                                                    h1 h1Var4 = this.J;
                                                    if (h1Var4 == null) {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                    h1Var4.f13840a.setTextColor(o.o(R.color.text_color_black));
                                                    h1 h1Var5 = this.J;
                                                    if (h1Var5 == null) {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                    Button button3 = h1Var5.f13840a;
                                                    Resources resources = getResources();
                                                    ThreadLocal<TypedValue> threadLocal = z.d.f19223a;
                                                    button3.setBackground(z.d.a.a(resources, R.drawable.background_white_pill_button, null));
                                                    h1 h1Var6 = this.J;
                                                    if (h1Var6 == null) {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                    h1Var6.f13840a.setClickable(false);
                                                    h1 h1Var7 = this.J;
                                                    if (h1Var7 == null) {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                    h1Var7.f13840a.setOnClickListener(new w8.b(this, i10));
                                                    h1 h1Var8 = this.J;
                                                    if (h1Var8 == null) {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                    h1Var8.f13841b.setText(R.string.adapt_learn_more_title);
                                                    h1 h1Var9 = this.J;
                                                    if (h1Var9 == null) {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                    h1Var9.f13841b.setTextColor(o.o(R.color.text_color_white));
                                                    h1 h1Var10 = this.J;
                                                    if (h1Var10 == null) {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                    h1Var10.f13841b.setClickable(true);
                                                    h1 h1Var11 = this.J;
                                                    if (h1Var11 != null) {
                                                        h1Var11.f13841b.setOnClickListener(new w8.c(this, i10));
                                                        return;
                                                    } else {
                                                        h.C("ctaBinding");
                                                        throw null;
                                                    }
                                                }
                                            }
                                            i11 = i14;
                                        } else {
                                            i11 = i13;
                                        }
                                    } else {
                                        i11 = i13;
                                    }
                                } else {
                                    i11 = i13;
                                }
                            }
                        }
                        throw new NullPointerException("Missing required view with ID: ".concat(viewD.getResources().getResourceName(i12)));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }

    public final h8.a p0() {
        return (h8.a) this.S.getValue();
    }

    @Override // w8.a
    public final void s(androidx.appcompat.app.d dVar) {
        this.O = dVar;
    }

    @Override // w8.a
    public final androidx.appcompat.app.d u() {
        return this.P;
    }
}
