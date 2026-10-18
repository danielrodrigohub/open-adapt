package i9;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import b7.j1;
import com.airbnb.lottie.LottieAnimationView;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.CalibrateResult;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.Disconnected;
import com.nike.adapt.adk.FitCalibrateResult;
import com.nike.adapt.adk.GetLacingPercentResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.ServoMoveCompleteBroadcastResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.analytics.TrackManager;
import java.util.List;
import java.util.Objects;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.greenrobot.eventbus.ThreadMode;
import q7.g1;
import q7.i1;
import q7.k1;
import q7.m1;
import q7.n1;
import q7.o0;
import x8.n0;
import x8.q0;

/* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends p8.b {
    public static final a K0 = new a();
    public static final String L0 = g.class.getSimpleName();
    public boolean B0;
    public boolean C0;
    public int D0;
    public boolean H0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public o0 f8890i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public i1 f8891j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public g1 f8892k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f8893l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public IDeviceController f8894m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public IAdaptRequester f8895n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public j9.b f8896o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public x8.g0 f8897p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public x8.o0 f8898q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public n0 f8899r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public x8.f0 f8900s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public ea.m f8901t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public o8.d f8902u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public Pair<String, String> f8903v0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public androidx.appcompat.app.d f8905x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public ObjectAnimator f8906y0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final String f8889h0 = "AdaptShoesOnboardingFragment";

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f8904w0 = 2;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f8907z0 = -1;
    public int A0 = -1;
    public final Handler E0 = new Handler();
    public i9.a F0 = new i9.a(Shoe.LEFT, 1);
    public i9.a G0 = new i9.a(Shoe.RIGHT, 1);
    public final fd.d I0 = androidx.lifecycle.o.w(3, c.f8909h);
    public final fd.d J0 = androidx.lifecycle.o.w(3, f.f8912h);

    /* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8908a;

        static {
            int[] iArr = new int[CalibrateResult.values().length];
            iArr[CalibrateResult.MOVING_TO_ZERO_FIT.ordinal()] = 1;
            iArr[CalibrateResult.COMPLETED_FIT.ordinal()] = 2;
            iArr[CalibrateResult.MOVING_TO_MAXIMUM_FIT.ordinal()] = 3;
            iArr[CalibrateResult.MAXIMUM_FOUND_FIT.ordinal()] = 4;
            iArr[CalibrateResult.CALIBRATE_TIMEOUT.ordinal()] = 5;
            f8908a = iArr;
        }
    }

    /* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
    public static final class c extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f8909h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
    public static final class d extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {
        public d() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            o7.x.f12420a.a("Find Your Fit - Pressed: Skip");
            TrackManager.INSTANCE.isDisconnectedCalibrationErrorSkipButtonSelected();
            j9.b bVar = g.this.f8896o0;
            if (bVar == null) {
                p4.h.C("adaptShoeUtils");
                throw null;
            }
            bVar.f9478c = 100;
            bVar.f9479d = 100;
            dVar2.dismiss();
            g gVar = g.this;
            gVar.f8905x0 = null;
            o8.d dVar3 = gVar.f8902u0;
            if (dVar3 != null) {
                dVar3.O(o8.a.COMPLETED);
                return fd.o.f7408a;
            }
            p4.h.C("stateListener");
            throw null;
        }
    }

    /* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
    public static final class e extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {
        public e() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            o7.x.f12420a.a("Find Your Fit - Pressed: Restart");
            TrackManager.INSTANCE.isDisconnectedCalibrationErrorRestartButtonSelected();
            dVar2.dismiss();
            g gVar = g.this;
            gVar.f8905x0 = null;
            o8.d dVar3 = gVar.f8902u0;
            if (dVar3 != null) {
                dVar3.O(o8.a.PUT_SHOES_ON);
                return fd.o.f7408a;
            }
            p4.h.C("stateListener");
            throw null;
        }
    }

    /* JADX INFO: compiled from: AdaptShoesOnboardingFragment.kt */
    public static final class f extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final f f8912h = new f();

        public f() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return h8.e.f8306b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        p4.h.j(context, "context");
        super.G(context);
        fd.o oVar = null;
        if ((context instanceof o8.d ? (o8.d) context : null) != null) {
            this.f8902u0 = (o8.d) context;
            oVar = fd.o.f7408a;
        }
        if (oVar != null) {
            return;
        }
        throw new IllegalStateException("Activity must implement " + o8.d.class);
    }

    @Override // p8.r, p8.h, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        this.f8895n0 = ((o7.f) androidx.lifecycle.o.m()).a(this, this.d0, m.f8921h, new k(this));
        this.f8894m0 = ((o7.f) androidx.lifecycle.o.m()).b(this, this.d0);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = o().inflate(R.layout.fragment_adapt_shoes, viewGroup, false);
        FrameLayout frameLayout = (FrameLayout) viewInflate;
        int i10 = R.id.item_preset_creation;
        View viewD = g7.b.d(viewInflate, R.id.item_preset_creation);
        if (viewD != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) viewD;
            int i11 = R.id.preset_creation_animation;
            LottieAnimationView lottieAnimationView = (LottieAnimationView) g7.b.d(viewD, R.id.preset_creation_animation);
            if (lottieAnimationView != null) {
                i11 = R.id.preset_creation_status;
                LinearLayout linearLayout = (LinearLayout) g7.b.d(viewD, R.id.preset_creation_status);
                if (linearLayout != null) {
                    i11 = R.id.preset_creation_status_subtitle;
                    TextView textView = (TextView) g7.b.d(viewD, R.id.preset_creation_status_subtitle);
                    if (textView != null) {
                        i11 = R.id.preset_creation_status_title;
                        TextView textView2 = (TextView) g7.b.d(viewD, R.id.preset_creation_status_title);
                        if (textView2 != null) {
                            k1 k1Var = new k1(constraintLayout, lottieAnimationView, linearLayout, textView, textView2);
                            i10 = R.id.preset_creation_checkmark;
                            LottieAnimationView lottieAnimationView2 = (LottieAnimationView) g7.b.d(viewInflate, R.id.preset_creation_checkmark);
                            if (lottieAnimationView2 != null) {
                                i10 = R.id.preset_creation_checkmark_container;
                                LinearLayout linearLayout2 = (LinearLayout) g7.b.d(viewInflate, R.id.preset_creation_checkmark_container);
                                if (linearLayout2 != null) {
                                    i10 = R.id.preset_creation_checkmark_text;
                                    TextView textView3 = (TextView) g7.b.d(viewInflate, R.id.preset_creation_checkmark_text);
                                    if (textView3 != null) {
                                        i10 = R.id.shoe_controller_combined;
                                        View viewD2 = g7.b.d(viewInflate, R.id.shoe_controller_combined);
                                        if (viewD2 != null) {
                                            m1 m1VarA = m1.a(viewD2);
                                            i10 = R.id.shoe_controller_frame;
                                            FrameLayout frameLayout2 = (FrameLayout) g7.b.d(viewInflate, R.id.shoe_controller_frame);
                                            if (frameLayout2 != null) {
                                                i10 = R.id.shoe_controller_messaging_container;
                                                LinearLayout linearLayout3 = (LinearLayout) g7.b.d(viewInflate, R.id.shoe_controller_messaging_container);
                                                if (linearLayout3 != null) {
                                                    i10 = R.id.shoe_scale_controller;
                                                    View viewD3 = g7.b.d(viewInflate, R.id.shoe_scale_controller);
                                                    if (viewD3 != null) {
                                                        int i12 = R.id.left_shoe_scale_controller_indicators;
                                                        LinearLayout linearLayout4 = (LinearLayout) g7.b.d(viewD3, R.id.left_shoe_scale_controller_indicators);
                                                        if (linearLayout4 != null) {
                                                            i12 = R.id.right_shoe_scale_controller_indicators;
                                                            LinearLayout linearLayout5 = (LinearLayout) g7.b.d(viewD3, R.id.right_shoe_scale_controller_indicators);
                                                            if (linearLayout5 != null) {
                                                                this.f8890i0 = new o0(frameLayout, frameLayout, k1Var, lottieAnimationView2, linearLayout2, textView3, m1VarA, frameLayout2, linearLayout3, new n1(linearLayout4, linearLayout5, (LinearLayout) viewD3));
                                                                this.f8892k0 = g1.a(frameLayout);
                                                                o0 o0Var = this.f8890i0;
                                                                if (o0Var == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                this.f8891j0 = i1.a(o0Var.f13947a);
                                                                o0 o0Var2 = this.f8890i0;
                                                                if (o0Var2 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                FrameLayout frameLayout3 = o0Var2.f13947a;
                                                                IDeviceController iDeviceController = this.f8894m0;
                                                                if (iDeviceController == null) {
                                                                    p4.h.C("deviceController");
                                                                    throw null;
                                                                }
                                                                this.f8896o0 = new j9.b(iDeviceController, x0());
                                                                p4.h.i(frameLayout3, "this");
                                                                v7.h hVarC = x0().c();
                                                                Objects.requireNonNull(hVarC);
                                                                if (hVarC == v7.h.SETTINGS_ADD_PAIR || hVarC == v7.h.ADD_PAIR_WITH_ORTHOTICS) {
                                                                    p7.b bVar = p7.b.f13281a;
                                                                    o0 o0Var3 = this.f8890i0;
                                                                    if (o0Var3 == null) {
                                                                        p4.h.C("binding");
                                                                        throw null;
                                                                    }
                                                                    FrameLayout frameLayout4 = o0Var3.f13948b;
                                                                    p4.h.i(frameLayout4, "binding.adaptShoeControllerContainer");
                                                                    bVar.e(frameLayout4, z8.a.MY_LIGHTS);
                                                                } else {
                                                                    p7.b bVar2 = p7.b.f13281a;
                                                                    o0 o0Var4 = this.f8890i0;
                                                                    if (o0Var4 == null) {
                                                                        p4.h.C("binding");
                                                                        throw null;
                                                                    }
                                                                    FrameLayout frameLayout5 = o0Var4.f13948b;
                                                                    p4.h.i(frameLayout5, "binding.adaptShoeControllerContainer");
                                                                    p7.b.f13281a.e(frameLayout5, InMemoryCache.INSTANCE.getActiveLightPack());
                                                                }
                                                                i1 i1Var = this.f8891j0;
                                                                if (i1Var == null) {
                                                                    p4.h.C("messagingHeadlineBinding");
                                                                    throw null;
                                                                }
                                                                i1Var.f13858c.setText(androidx.lifecycle.o.r(R.string.adapt_adapting_to_feet_title));
                                                                i1 i1Var2 = this.f8891j0;
                                                                if (i1Var2 == null) {
                                                                    p4.h.C("messagingHeadlineBinding");
                                                                    throw null;
                                                                }
                                                                j0.a0.q(i1Var2.f13858c, true);
                                                                this.f8903v0 = new Pair<>("mode", s9.p.f15222a.f(x0().d()));
                                                                g1 g1Var = this.f8892k0;
                                                                if (g1Var == null) {
                                                                    p4.h.C("itemMessagingCtaBinding");
                                                                    throw null;
                                                                }
                                                                g1Var.f13825a.setVisibility(4);
                                                                g1 g1Var2 = this.f8892k0;
                                                                if (g1Var2 == null) {
                                                                    p4.h.C("itemMessagingCtaBinding");
                                                                    throw null;
                                                                }
                                                                g1Var2.f13826b.setVisibility(4);
                                                                g1 g1Var3 = this.f8892k0;
                                                                if (g1Var3 == null) {
                                                                    p4.h.C("itemMessagingCtaBinding");
                                                                    throw null;
                                                                }
                                                                g1Var3.f13826b.setAlpha(0.0f);
                                                                o0 o0Var5 = this.f8890i0;
                                                                if (o0Var5 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                o0Var5.f13953g.f13930d.setAlpha(0.0f);
                                                                if (this.f8896o0 == null) {
                                                                    p4.h.C("adaptShoeUtils");
                                                                    throw null;
                                                                }
                                                                o0 o0Var6 = this.f8890i0;
                                                                if (o0Var6 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                ImageView imageView = o0Var6.f13953g.f13930d;
                                                                p4.h.i(imageView, "binding.shoeControllerCombined.slit");
                                                                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "alpha", 0.0f, 1.0f);
                                                                objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
                                                                objectAnimatorOfFloat.setDuration(200L);
                                                                objectAnimatorOfFloat.setStartDelay(0L);
                                                                ObjectAnimator duration = objectAnimatorOfFloat.setDuration(1000L);
                                                                p4.h.i(duration, "ofFloat(view, \"alpha\", s…(FADE_ANIMATION_DURATION)");
                                                                this.f8906y0 = duration;
                                                                duration.addListener(new n(this));
                                                                o0 o0Var7 = this.f8890i0;
                                                                if (o0Var7 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                LinearLayout linearLayout6 = o0Var7.f13956j.f13939c;
                                                                p4.h.i(linearLayout6, "binding.shoeScaleControl…hoeScaleCombinedContainer");
                                                                o0 o0Var8 = this.f8890i0;
                                                                if (o0Var8 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                LinearLayout linearLayout7 = o0Var8.f13956j.f13937a;
                                                                p4.h.i(linearLayout7, "binding.shoeScaleControl…ScaleControllerIndicators");
                                                                this.f8897p0 = new x8.g0(linearLayout6, linearLayout7);
                                                                o0 o0Var9 = this.f8890i0;
                                                                if (o0Var9 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                LinearLayout linearLayout8 = o0Var9.f13956j.f13939c;
                                                                p4.h.i(linearLayout8, "binding.shoeScaleControl…hoeScaleCombinedContainer");
                                                                o0 o0Var10 = this.f8890i0;
                                                                if (o0Var10 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                LinearLayout linearLayout9 = o0Var10.f13956j.f13938b;
                                                                p4.h.h(linearLayout9, "null cannot be cast to non-null type android.widget.LinearLayout");
                                                                this.f8898q0 = new x8.o0(linearLayout8, linearLayout9);
                                                                IDeviceController iDeviceController2 = this.f8894m0;
                                                                if (iDeviceController2 == null) {
                                                                    p4.h.C("deviceController");
                                                                    throw null;
                                                                }
                                                                o0 o0Var11 = this.f8890i0;
                                                                if (o0Var11 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                m1 m1Var = o0Var11.f13953g;
                                                                p4.h.i(m1Var, "binding.shoeControllerCombined");
                                                                this.f8900s0 = new x8.f0(iDeviceController2, m1Var, null, true, new o(this), 12);
                                                                IDeviceController iDeviceController3 = this.f8894m0;
                                                                if (iDeviceController3 == null) {
                                                                    p4.h.C("deviceController");
                                                                    throw null;
                                                                }
                                                                o0 o0Var12 = this.f8890i0;
                                                                if (o0Var12 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                m1 m1Var2 = o0Var12.f13953g;
                                                                p4.h.i(m1Var2, "binding.shoeControllerCombined");
                                                                this.f8899r0 = new n0(iDeviceController3, m1Var2, null, true, new p(this), 12);
                                                                fd.d dVarX = androidx.lifecycle.o.x(new q(this));
                                                                fd.d dVarX2 = androidx.lifecycle.o.x(new r(this));
                                                                int i13 = 5;
                                                                ((LinearLayout) ((fd.h) dVarX).getValue()).post(new y0.s(this, i13));
                                                                ((LinearLayout) ((fd.h) dVarX2).getValue()).post(new androidx.lifecycle.c(this, dVarX2, i13));
                                                                o0 o0Var13 = this.f8890i0;
                                                                if (o0Var13 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                ImageView imageView2 = o0Var13.f13953g.f13927a.f13918a;
                                                                p4.h.i(imageView2, "binding.shoeControllerCo…rContainer.shoeController");
                                                                o0 o0Var14 = this.f8890i0;
                                                                if (o0Var14 == null) {
                                                                    p4.h.C("binding");
                                                                    throw null;
                                                                }
                                                                ImageView imageView3 = o0Var14.f13953g.f13928b.f13918a;
                                                                p4.h.i(imageView3, "binding.shoeControllerCo…rContainer.shoeController");
                                                                i1 i1Var3 = this.f8891j0;
                                                                if (i1Var3 == null) {
                                                                    p4.h.C("messagingHeadlineBinding");
                                                                    throw null;
                                                                }
                                                                TextView textView4 = i1Var3.f13856a;
                                                                p4.h.i(textView4, "messagingHeadlineBinding.messagingHeadlineMessage1");
                                                                j0.a0.p(imageView2, new x8.b(textView4));
                                                                j0.a0.p(imageView3, new x8.b(imageView2));
                                                                return frameLayout3;
                                                            }
                                                        }
                                                        throw new NullPointerException("Missing required view with ID: ".concat(viewD3.getResources().getResourceName(i12)));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(viewD.getResources().getResourceName(i11)));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // p8.r, p8.h, androidx.fragment.app.m
    public final void Q() {
        super.Q();
        if (this.f8893l0) {
            w0();
        }
    }

    @Override // p8.b
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.d0)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        this.f13309e0.b(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair)) {
            if (adaptConnectionStatusResult instanceof Disconnected) {
                w0();
                y0(adaptConnectionStatusResult.getShoe(), false);
                return;
            }
            return;
        }
        ea.m device = adaptConnectionStatusResult.getDevice();
        if (device != null) {
            IDeviceController iDeviceController = this.f8894m0;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController.subscribe(device);
            this.f8901t0 = device;
            IDeviceController iDeviceController2 = this.f8894m0;
            if (iDeviceController2 == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), p8.n.f13339a);
        }
        y0(adaptConnectionStatusResult.getShoe(), true);
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        q0 q0Var;
        q0 q0Var2;
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.d0)) {
            return;
        }
        if (deviceControllerResult instanceof GetLacingPercentResult) {
            if (!this.f13309e0.a() || this.C0) {
                return;
            }
            this.C0 = true;
            IDeviceController iDeviceController = this.f8894m0;
            if (iDeviceController != null) {
                iDeviceController.requestFitCalibrate(p8.u.f13347a);
                return;
            } else {
                p4.h.C("deviceController");
                throw null;
            }
        }
        if (deviceControllerResult instanceof ServoMoveCompleteBroadcastResult) {
            ServoMoveCompleteBroadcastResult servoMoveCompleteBroadcastResult = (ServoMoveCompleteBroadcastResult) deviceControllerResult;
            boolean zIsRight = servoMoveCompleteBroadcastResult.getShoe().isRight();
            if (zIsRight) {
                q0Var = this.f8899r0;
                if (q0Var == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
            } else {
                q0Var = this.f8900s0;
                if (q0Var == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
            }
            q0Var.k(servoMoveCompleteBroadcastResult.getRelativePercent(), false);
            if (zIsRight) {
                this.f8907z0 = servoMoveCompleteBroadcastResult.getRelativePercent();
            } else {
                this.A0 = servoMoveCompleteBroadcastResult.getRelativePercent();
            }
            if (this.f8904w0 != 3) {
                o7.x.f12420a.a("Already Handled");
                return;
            }
            if (servoMoveCompleteBroadcastResult.getShoe().isRight()) {
                q0Var2 = this.f8899r0;
                if (q0Var2 == null) {
                    p4.h.C("rightShoeControllerUiHelper");
                    throw null;
                }
            } else {
                q0Var2 = this.f8900s0;
                if (q0Var2 == null) {
                    p4.h.C("leftShoeControllerUiHelper");
                    throw null;
                }
            }
            q0Var2.k(servoMoveCompleteBroadcastResult.getRelativePercent(), true);
            int i10 = this.D0 + 1;
            this.D0 = i10;
            if (i10 == 2) {
                TrackManager trackManager = TrackManager.INSTANCE;
                j9.b bVar = this.f8896o0;
                if (bVar == null) {
                    p4.h.C("adaptShoeUtils");
                    throw null;
                }
                trackManager.isUserScaleCompleted(bVar.f9479d, bVar.f9478c, this.A0, this.f8907z0, s9.p.f15222a.f(x0().d()));
                x8.g0 g0Var = this.f8897p0;
                if (g0Var == null) {
                    p4.h.C("leftShoeScaleControllerUiHelper");
                    throw null;
                }
                ValueAnimator valueAnimator = g0Var.f17891d;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                g0Var.e(g0Var.c());
                float x10 = g0Var.c().getX();
                Context context = g0Var.f17889b;
                p4.h.i(context, "context");
                f1.b.d(g0Var.c(), -(x10 + (x8.i1.b(context, 20) / 2))).start();
                x8.o0 o0Var = this.f8898q0;
                if (o0Var == null) {
                    p4.h.C("rightShoeScaleControllerUiHelper");
                    throw null;
                }
                ValueAnimator valueAnimator2 = o0Var.f17891d;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                o0Var.e(o0Var.c());
                float x11 = (o0Var.c().getX() * 2) / 3;
                Context context2 = o0Var.f17889b;
                p4.h.i(context2, "context");
                f1.b.d(o0Var.c(), x11 + (x8.i1.b(context2, 20) / 2)).start();
                BuildersKt__Builders_commonKt.launch$default(this.f13342b0, null, null, new h(this, null), 3, null).start();
                ObjectAnimator objectAnimator = this.f8906y0;
                if (objectAnimator != null) {
                    objectAnimator.start();
                    return;
                }
                return;
            }
            return;
        }
        if (!(deviceControllerResult instanceof FitCalibrateResult)) {
            if (deviceControllerResult instanceof StopAnimationNotificationResult) {
                p7.b bVar2 = p7.b.f13281a;
                o0 o0Var2 = this.f8890i0;
                if (o0Var2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                FrameLayout frameLayout = o0Var2.f13948b;
                p4.h.i(frameLayout, "binding.adaptShoeControllerContainer");
                p7.b.f13281a.e(frameLayout, InMemoryCache.INSTANCE.getActiveLightPack());
                return;
            }
            return;
        }
        FitCalibrateResult fitCalibrateResult = (FitCalibrateResult) deviceControllerResult;
        boolean zIsRight2 = fitCalibrateResult.getShoe().isRight();
        androidx.appcompat.app.d dVar = this.f8905x0;
        if (dVar != null) {
            dVar.dismiss();
        }
        int i11 = b.f8908a[fitCalibrateResult.getResult().ordinal()];
        if (i11 == 1) {
            if (zIsRight2) {
                if (this.G0.f8830b == 1) {
                    x8.o0 o0Var3 = this.f8898q0;
                    if (o0Var3 == null) {
                        p4.h.C("rightShoeScaleControllerUiHelper");
                        throw null;
                    }
                    o0Var3.a();
                    this.G0 = new i9.a(Shoe.RIGHT, 5);
                    return;
                }
                return;
            }
            if (this.F0.f8830b == 1) {
                x8.g0 g0Var2 = this.f8897p0;
                if (g0Var2 == null) {
                    p4.h.C("leftShoeScaleControllerUiHelper");
                    throw null;
                }
                g0Var2.a();
                this.F0 = new i9.a(Shoe.LEFT, 5);
                return;
            }
            return;
        }
        if (i11 == 2) {
            if (fitCalibrateResult.getShoe().isLeft()) {
                this.F0 = new i9.a(fitCalibrateResult.getShoe(), 7);
            }
            if (fitCalibrateResult.getShoe().isRight()) {
                this.G0 = new i9.a(fitCalibrateResult.getShoe(), 7);
            }
            if (this.F0.f8830b == 7 && this.G0.f8830b == 7) {
                if (!this.B0) {
                    x8.g0 g0Var3 = this.f8897p0;
                    if (g0Var3 == null) {
                        p4.h.C("leftShoeScaleControllerUiHelper");
                        throw null;
                    }
                    g0Var3.a();
                    x8.o0 o0Var4 = this.f8898q0;
                    if (o0Var4 == null) {
                        p4.h.C("rightShoeScaleControllerUiHelper");
                        throw null;
                    }
                    o0Var4.a();
                    IDeviceController iDeviceController2 = this.f8894m0;
                    if (iDeviceController2 == null) {
                        p4.h.C("deviceController");
                        throw null;
                    }
                    Shoe shoe = Shoe.LEFT;
                    j9.b bVar3 = this.f8896o0;
                    if (bVar3 == null) {
                        p4.h.C("adaptShoeUtils");
                        throw null;
                    }
                    iDeviceController2.requestTo(shoe, new p8.d0(bVar3.a(false), 2));
                    IDeviceController iDeviceController3 = this.f8894m0;
                    if (iDeviceController3 == null) {
                        p4.h.C("deviceController");
                        throw null;
                    }
                    Shoe shoe2 = Shoe.RIGHT;
                    j9.b bVar4 = this.f8896o0;
                    if (bVar4 == null) {
                        p4.h.C("adaptShoeUtils");
                        throw null;
                    }
                    iDeviceController3.requestTo(shoe2, new p8.d0(bVar4.a(true), 2));
                    this.f8904w0 = 3;
                    this.B0 = true;
                }
                s9.p pVar = s9.p.f15222a;
                s9.r rVarD = x0().d();
                int i12 = rVarD == null ? -1 : s9.p.b.f15227a[rVarD.ordinal()];
                int i13 = R.string.adapt_finding_fit_bb;
                switch (i12) {
                    case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                    case 1:
                    case 3:
                        break;
                    case 0:
                    default:
                        throw new j2.a();
                    case 2:
                    case 4:
                        i13 = R.string.adapt_finding_fit_sw_move;
                        break;
                    case 5:
                    case 6:
                        i13 = R.string.adapt_finding_fit_jordan;
                        break;
                }
                i1 i1Var = this.f8891j0;
                if (i1Var == null) {
                    p4.h.C("messagingHeadlineBinding");
                    throw null;
                }
                TextView textView = i1Var.f13858c;
                p4.h.i(textView, "messagingHeadlineBinding.messagingHeadlineTitle");
                textView.setText(androidx.lifecycle.o.r(i13));
                return;
            }
            return;
        }
        if (i11 != 3) {
            if (i11 != 4) {
                if (i11 != 5) {
                    return;
                }
                w0();
                return;
            }
            String maxPercent = fitCalibrateResult.getMaxPercent();
            if (maxPercent != null) {
                int i14 = Integer.parseInt(maxPercent);
                if (zIsRight2) {
                    InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                    inMemoryCache.getRightDevice().setMaxTightness(i14);
                    n0 n0Var = this.f8899r0;
                    if (n0Var == null) {
                        p4.h.C("rightShoeControllerUiHelper");
                        throw null;
                    }
                    n0Var.t(inMemoryCache.getRightDevice());
                } else {
                    InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
                    inMemoryCache2.getLeftDevice().setMaxTightness(i14);
                    x8.f0 f0Var = this.f8900s0;
                    if (f0Var == null) {
                        p4.h.C("leftShoeControllerUiHelper");
                        throw null;
                    }
                    f0Var.t(inMemoryCache2.getLeftDevice());
                }
                j9.b bVar5 = this.f8896o0;
                if (bVar5 == null) {
                    p4.h.C("adaptShoeUtils");
                    throw null;
                }
                if (zIsRight2) {
                    bVar5.f9478c = i14;
                    return;
                } else {
                    bVar5.f9479d = i14;
                    return;
                }
            }
            return;
        }
        if (fitCalibrateResult.getShoe().isLeft()) {
            this.F0 = new i9.a(fitCalibrateResult.getShoe(), 5);
        }
        if (fitCalibrateResult.getShoe().isRight()) {
            this.G0 = new i9.a(fitCalibrateResult.getShoe(), 5);
        }
        if (zIsRight2) {
            if (this.G0.f8830b == 5) {
                x8.o0 o0Var5 = this.f8898q0;
                if (o0Var5 == null) {
                    p4.h.C("rightShoeScaleControllerUiHelper");
                    throw null;
                }
                o0Var5.b();
                x8.o0 o0Var6 = this.f8898q0;
                if (o0Var6 == null) {
                    p4.h.C("rightShoeScaleControllerUiHelper");
                    throw null;
                }
                ValueAnimator valueAnimator3 = o0Var6.f17891d;
                if (valueAnimator3 != null) {
                    valueAnimator3.reverse();
                }
                this.G0 = new i9.a(Shoe.LEFT, 6);
                return;
            }
            return;
        }
        if (this.F0.f8830b == 5) {
            x8.g0 g0Var4 = this.f8897p0;
            if (g0Var4 == null) {
                p4.h.C("leftShoeScaleControllerUiHelper");
                throw null;
            }
            g0Var4.b();
            x8.g0 g0Var5 = this.f8897p0;
            if (g0Var5 == null) {
                p4.h.C("leftShoeScaleControllerUiHelper");
                throw null;
            }
            ValueAnimator valueAnimator4 = g0Var5.f17891d;
            if (valueAnimator4 != null) {
                valueAnimator4.reverse();
            }
            this.F0 = new i9.a(Shoe.LEFT, 6);
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f8889h0;
    }

    @Override // p8.r
    public final void r0() {
        TrackManager.INSTANCE.isScreenViewed(TrackManager.Screen.FIT);
    }

    @Override // p8.r
    public final void s0() {
        IDeviceController iDeviceController = this.f8894m0;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.requestFitCalibrate(p8.t.f13346a);
        n0 n0Var = this.f8899r0;
        if (n0Var == null) {
            p4.h.C("rightShoeControllerUiHelper");
            throw null;
        }
        n0Var.f17981v.cancel();
        x8.f0 f0Var = this.f8900s0;
        if (f0Var == null) {
            p4.h.C("leftShoeControllerUiHelper");
            throw null;
        }
        f0Var.f17981v.cancel();
        this.E0.removeCallbacksAndMessages(null);
        this.f8893l0 = true;
        ObjectAnimator objectAnimator = this.f8906y0;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public final void u0() {
        o0 o0Var = this.f8890i0;
        if (o0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        LinearLayout linearLayout = o0Var.f13949c.f13901c;
        p4.h.i(linearLayout, "binding.itemPresetCreation.presetCreationStatus");
        j1.b(linearLayout, 75.0f, 0.0f, 0.0f, 1.0f);
        o0 o0Var2 = this.f8890i0;
        if (o0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        TextView textView = o0Var2.f13949c.f13903e;
        p4.h.i(textView, "binding.itemPresetCreati…presetCreationStatusTitle");
        j1.b(textView, 75.0f, 0.0f, 0.0f, 1.0f);
    }

    public final void v0(final List<ea.e> list, final int i10) {
        o0 o0Var = this.f8890i0;
        if (o0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        final LinearLayout linearLayout = o0Var.f13949c.f13901c;
        if (list.isEmpty()) {
            return;
        }
        String strH = da.e.h(list.get(0).f6629j, list.get(0).f6628i);
        String strH2 = i10 == 0 ? strH : da.e.h(list.get(i10).f6629j, list.get(i10).f6628i);
        String strB = s9.e.b(androidx.lifecycle.o.r(R.string.adapt_saving_auto_generated_preset), new Pair("mode", strH));
        String strB2 = s9.e.b(androidx.lifecycle.o.r(R.string.adapt_creating_auto_generated_preset), new Pair("mode", strH2));
        s9.r shoeType = h8.c.f8298b.getShoeType();
        p4.h.j(shoeType, "<this>");
        String strR = shoeType == s9.r.JORDAN || shoeType == s9.r.JORDAN_2 ? androidx.lifecycle.o.r(R.string.adapt_based_on_auto_generated_preset_jordan) : s9.e.b(androidx.lifecycle.o.r(R.string.adapt_based_on_auto_generated_preset), new Pair("mode", strH));
        o0 o0Var2 = this.f8890i0;
        if (o0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        long duration = (o0Var2.f13949c.f13900b.getDuration() - (((long) (list.size() * 2)) * 400)) / ((long) list.size());
        if (i10 == 0) {
            o0 o0Var3 = this.f8890i0;
            if (o0Var3 == null) {
                p4.h.C("binding");
                throw null;
            }
            o0Var3.f13949c.f13903e.setText(strB);
            u0();
            this.E0.postDelayed(new Runnable() { // from class: i9.c
                @Override // java.lang.Runnable
                public final void run() {
                    LinearLayout linearLayout2 = linearLayout;
                    final g gVar = this;
                    final List list2 = list;
                    final int i11 = i10;
                    g.a aVar = g.K0;
                    p4.h.j(linearLayout2, "$layoutView");
                    p4.h.j(gVar, "this$0");
                    p4.h.j(list2, "$presets");
                    j1.c(linearLayout2);
                    gVar.E0.postDelayed(new Runnable() { // from class: i9.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            g gVar2 = gVar;
                            List<ea.e> list3 = list2;
                            int i12 = i11;
                            g.a aVar2 = g.K0;
                            p4.h.j(gVar2, "this$0");
                            p4.h.j(list3, "$presets");
                            gVar2.v0(list3, i12 + 1);
                        }
                    }, 400L);
                }
            }, duration + 400);
            return;
        }
        if (i10 == list.size() - 1) {
            o0 o0Var4 = this.f8890i0;
            if (o0Var4 == null) {
                p4.h.C("binding");
                throw null;
            }
            o0Var4.f13949c.f13903e.setText(strB2);
            o0 o0Var5 = this.f8890i0;
            if (o0Var5 == null) {
                p4.h.C("binding");
                throw null;
            }
            o0Var5.f13949c.f13902d.setText(strR);
            u0();
            this.E0.postDelayed(new y0.u(linearLayout, this, 4), duration + 400);
            return;
        }
        o0 o0Var6 = this.f8890i0;
        if (o0Var6 == null) {
            p4.h.C("binding");
            throw null;
        }
        o0Var6.f13949c.f13903e.setText(strB2);
        o0 o0Var7 = this.f8890i0;
        if (o0Var7 == null) {
            p4.h.C("binding");
            throw null;
        }
        o0Var7.f13949c.f13902d.setText(strR);
        u0();
        this.E0.postDelayed(new Runnable() { // from class: i9.d
            @Override // java.lang.Runnable
            public final void run() {
                LinearLayout linearLayout2 = linearLayout;
                final g gVar = this;
                final List list2 = list;
                final int i11 = i10;
                g.a aVar = g.K0;
                p4.h.j(linearLayout2, "$layoutView");
                p4.h.j(gVar, "this$0");
                p4.h.j(list2, "$presets");
                j1.c(linearLayout2);
                gVar.E0.postDelayed(new Runnable() { // from class: i9.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        g gVar2 = gVar;
                        List<ea.e> list3 = list2;
                        int i12 = i11;
                        g.a aVar2 = g.K0;
                        p4.h.j(gVar2, "this$0");
                        p4.h.j(list3, "$presets");
                        gVar2.v0(list3, i12 + 1);
                    }
                }, 400L);
            }
        }, duration + 400);
    }

    public final void w0() {
        androidx.appcompat.app.d dVar;
        androidx.appcompat.app.d dVar2 = this.f8905x0;
        if (dVar2 == null) {
            this.f8905x0 = s9.y.d(s9.y.f15252a, d0(), R.string.adapt_disconnected_calibration_title, null, R.string.adapt_disconnected_calibration_body, 0, R.string.adapt_disconnected_calibration_skip, R.string.adapt_disconnected_calibration_restart, false, new d(), new e(), new s9.y.a("DISCONNECTED_CALIBRATION_ERROR_DIALOG", "SKIP", "RESTART", 8), 148);
            TrackManager.INSTANCE.isDisconnectedCalibrationErrorShown();
        } else {
            if (!dVar2.isShowing()) {
                TrackManager.INSTANCE.isDisconnectedCalibrationErrorShown();
                androidx.fragment.app.p pVarI = i();
                if (((pVarI == null || pVarI.isFinishing()) ? false : true) && (dVar = this.f8905x0) != null) {
                    dVar.show();
                }
            }
        }
        x8.g0 g0Var = this.f8897p0;
        if (g0Var == null) {
            p4.h.C("leftShoeScaleControllerUiHelper");
            throw null;
        }
        g0Var.b();
        x8.o0 o0Var = this.f8898q0;
        if (o0Var != null) {
            o0Var.b();
        } else {
            p4.h.C("rightShoeScaleControllerUiHelper");
            throw null;
        }
    }

    public final h8.d x0() {
        return (h8.d) this.J0.getValue();
    }

    public final void y0(Shoe shoe, boolean z10) {
        if (shoe.isLeft()) {
            x8.f0 f0Var = this.f8900s0;
            if (f0Var != null) {
                f0Var.s(z10);
                return;
            } else {
                p4.h.C("leftShoeControllerUiHelper");
                throw null;
            }
        }
        n0 n0Var = this.f8899r0;
        if (n0Var != null) {
            n0Var.s(z10);
        } else {
            p4.h.C("rightShoeControllerUiHelper");
            throw null;
        }
    }
}
