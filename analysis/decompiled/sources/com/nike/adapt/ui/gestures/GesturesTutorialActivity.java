package com.nike.adapt.ui.gestures;

import android.animation.Animator;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PersistableBundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.k1;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.o;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.exoplayer2.ui.PlayerView;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GestureStatsNotificationResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.SetGestureConfigResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptGestureAction;
import com.nike.adapt.adk.model.AdaptGestureClassification;
import com.nike.adapt.adk.model.AdaptGestureConfiguration;
import com.nike.adapt.adk.model.AdaptGestureConfigurationResponse;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import fe.k;
import i8.f;
import java.util.ArrayList;
import java.util.List;
import l5.m;
import n3.k0;
import n3.o1;
import n3.r;
import n3.y0;
import o7.s;
import org.greenrobot.eventbus.ThreadMode;
import p8.d0;
import p8.f0;
import p8.g0;
import p8.n;
import q7.d1;
import q7.e1;
import q7.h;
import u8.g;
import u8.q;
import y0.t;
import y0.x;
import y1.e0;

/* JADX INFO: compiled from: GesturesTutorialActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GesturesTutorialActivity extends p8.a implements View.OnClickListener, w8.a {
    public static final /* synthetic */ int d0 = 0;
    public h I;
    public d1 J;
    public e1 K;
    public IDeviceController L;
    public IAdaptRequester M;
    public k0 N;
    public androidx.appcompat.app.d O;
    public androidx.appcompat.app.d P;
    public int S;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public int Q = 1;
    public final Handler R = new Handler(Looper.getMainLooper());
    public boolean Y = true;
    public final List<g> Z = o.e(new q(this, null, 0, 30), new u8.c(R.id.gesture_tutorial_parent, this));

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final b f5744a0 = new b();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final c f5745b0 = new c();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final t f5746c0 = new t(this, 4);

    /* JADX INFO: compiled from: GesturesTutorialActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5747a;

        static {
            int[] iArr = new int[AdaptGestureConfigurationResponse.values().length];
            iArr[AdaptGestureConfigurationResponse.CONFIG_SET.ordinal()] = 1;
            iArr[AdaptGestureConfigurationResponse.CRITICAL_BATTERY.ordinal()] = 2;
            iArr[AdaptGestureConfigurationResponse.UNKNOWN.ordinal()] = 3;
            f5747a = iArr;
            int[] iArr2 = new int[q.g.b(7).length];
            iArr2[0] = 1;
            iArr2[5] = 2;
            iArr2[6] = 3;
            iArr2[1] = 4;
            iArr2[2] = 5;
            iArr2[4] = 6;
        }
    }

    /* JADX INFO: compiled from: GesturesTutorialActivity.kt */
    public static final class b implements BottomSheet.a {
        public b() {
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void a(Context context, BottomSheet bottomSheet) {
            p4.h.j(bottomSheet, "bottomSheet");
            GesturesTutorialActivity.p0(GesturesTutorialActivity.this);
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void b() {
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
            if (i10 == 4) {
                GesturesTutorialActivity.p0(GesturesTutorialActivity.this);
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void d(BottomSheet bottomSheet) {
        }
    }

    /* JADX INFO: compiled from: GesturesTutorialActivity.kt */
    public static final class c implements Animator.AnimatorListener {
        public c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            p4.h.j(animator, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            p4.h.j(animator, "animation");
            h hVar = GesturesTutorialActivity.this.I;
            if (hVar == null) {
                p4.h.C("binding");
                throw null;
            }
            hVar.f13830d.animate().alpha(0.0f).setDuration(250L).withEndAction(new x(GesturesTutorialActivity.this, 5)).start();
            GesturesTutorialActivity gesturesTutorialActivity = GesturesTutorialActivity.this;
            if (gesturesTutorialActivity.Q != 5) {
                return;
            }
            gesturesTutorialActivity.u0();
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            p4.h.j(animator, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            p4.h.j(animator, "animation");
        }
    }

    /* JADX INFO: compiled from: GesturesTutorialActivity.kt */
    public static final class d extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ r f5751i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(r rVar) {
            super(0);
            this.f5751i = rVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            GesturesTutorialActivity gesturesTutorialActivity = GesturesTutorialActivity.this;
            if (gesturesTutorialActivity.U || gesturesTutorialActivity.V) {
                if (this.f5751i.b0() > 12250) {
                    this.f5751i.R(6100L);
                    GesturesTutorialActivity.this.r0(true);
                }
            } else if (this.f5751i.b0() > 5850) {
                this.f5751i.R(0L);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: GesturesTutorialActivity.kt */
    public static final class e implements o1.c {
        public e() {
        }

        @Override // n3.o1.c
        public final void U(int i10) {
            GesturesTutorialActivity gesturesTutorialActivity = GesturesTutorialActivity.this;
            if (gesturesTutorialActivity.Q == 1 && i10 == 3) {
                gesturesTutorialActivity.r0(gesturesTutorialActivity.T);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void p0(GesturesTutorialActivity gesturesTutorialActivity) {
        int i10 = 1;
        gesturesTutorialActivity.T = true;
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        List list = null;
        Object[] objArr = 0;
        if ((inMemoryCache.getLeftDevice().getLastKnownRelativeTightness() <= 10 || inMemoryCache.getRightDevice().getLastKnownRelativeTightness() <= 10) == true) {
            IDeviceController iDeviceController = gesturesTutorialActivity.L;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController.requestTo(Shoe.BOTH, new d0(20, 1));
            TrackManager.gestureActionsSheetOneStart$default(TrackManager.INSTANCE, null, 1, null);
        } else {
            TrackManager.gestureActionsSheetOneStart$default(TrackManager.INSTANCE, null, 1, null);
        }
        IDeviceController iDeviceController2 = gesturesTutorialActivity.L;
        if (iDeviceController2 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        Shoe shoe = Shoe.BOTH;
        iDeviceController2.requestTo(shoe, new f0(false));
        gesturesTutorialActivity.r0(true);
        gesturesTutorialActivity.t0(true);
        IDeviceController iDeviceController3 = gesturesTutorialActivity.L;
        if (iDeviceController3 != null) {
            iDeviceController3.requestTo(shoe, new g0(list, i10, objArr == true ? 1 : 0));
        } else {
            p4.h.C("deviceController");
            throw null;
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
    public final List<g> o0() {
        return this.Z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        this.F.b(adaptConnectionStatusResult);
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.L;
        List list = null;
        Object[] objArr = 0;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        IDeviceController iDeviceController2 = this.L;
        if (iDeviceController2 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), n.f13339a);
        if (!this.T) {
            h hVar = this.I;
            if (hVar != null) {
                hVar.f13827a.post(new x.a(this, 2));
                return;
            } else {
                p4.h.C("binding");
                throw null;
            }
        }
        IDeviceController iDeviceController3 = this.L;
        if (iDeviceController3 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        Shoe shoe = Shoe.BOTH;
        iDeviceController3.requestTo(shoe, new g0(list, 1, objArr == true ? 1 : 0));
        IDeviceController iDeviceController4 = this.L;
        if (iDeviceController4 != null) {
            iDeviceController4.requestTo(shoe, new f0(false));
        } else {
            p4.h.C("deviceController");
            throw null;
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (deviceControllerResult instanceof GestureStatsNotificationResult) {
            GestureStatsNotificationResult gestureStatsNotificationResult = (GestureStatsNotificationResult) deviceControllerResult;
            AdaptGestureConfiguration gestureConfiguration = gestureStatsNotificationResult.getGestureNotification().getGestureConfiguration();
            if (gestureConfiguration.getAction() == AdaptGestureAction.ACTION_UNLACE && gestureConfiguration.getClassification() == AdaptGestureClassification.CLASSIFICATION_DOUBLETAP) {
                if (gestureStatsNotificationResult.getShoe().isLeft()) {
                    this.U = true;
                } else {
                    this.V = true;
                }
                v0(true, this.U && this.V);
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof SetGestureConfigResult) {
            int i10 = a.f5747a[((SetGestureConfigResult) deviceControllerResult).getGestureConfigurationResponse().ordinal()];
            if (i10 == 1) {
                h hVar = this.I;
                if (hVar != null) {
                    hVar.f13827a.t();
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            }
            if (i10 == 2) {
                p4.h.t(this, this, this.W);
            } else {
                if (i10 != 3) {
                    return;
                }
                p4.h.u(this, this, this.W);
            }
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        String str;
        h hVar = this.I;
        if (hVar == null) {
            p4.h.C("binding");
            throw null;
        }
        if (hVar.f13827a.u()) {
            return;
        }
        if (this.Q == 7) {
            setResult(-1);
            finish();
            return;
        }
        super.onBackPressed();
        TrackManager trackManager = TrackManager.INSTANCE;
        int i10 = this.Q;
        androidx.appcompat.widget.o.d(i10, "<this>");
        switch (q.g.a(i10)) {
            case 0:
                str = "Learn";
                break;
            case 1:
            case 2:
                str = "Tips";
                break;
            case 3:
                str = "Failure";
                break;
            case 4:
            case 5:
                str = "Repeat On Other Shoe";
                break;
            case 6:
                str = "Both Gesture Done";
                break;
            default:
                throw new j2.a();
        }
        TrackManager.gestureTutorialExited$default(trackManager, null, str, 1, null);
        finish();
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        p4.h.g(view);
        if (view.getId() == R.id.btn_gesture_tutorial) {
            int i10 = this.Q;
            int i11 = 2;
            if (i10 == 5) {
                u0();
                h hVar = this.I;
                if (hVar == null) {
                    p4.h.C("binding");
                    throw null;
                }
                hVar.f13829c.f4393o.f18306i.removeAllListeners();
                h hVar2 = this.I;
                if (hVar2 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                LottieAnimationView lottieAnimationView = hVar2.f13829c;
                lottieAnimationView.f4399u.add(LottieAnimationView.c.PLAY_OPTION);
                e0 e0Var = lottieAnimationView.f4393o;
                e0Var.f18311n.clear();
                e0Var.f18306i.cancel();
                if (!e0Var.isVisible()) {
                    e0Var.f18310m = 1;
                }
                h hVar3 = this.I;
                if (hVar3 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                hVar3.f13830d.animate().alpha(0.0f).setDuration(250L).withEndAction(new f(this, i11)).start();
            } else if (i10 == 7) {
                setResult(-1);
                finish();
            }
            int i12 = this.Q;
            androidx.appcompat.widget.o.d(i12, "state");
            int iA = q.g.a(i12);
            if (iA == 0) {
                i12 = 2;
            } else if (iA == 1) {
                i12 = 1;
            } else if (iA == 2 || iA == 4) {
                i12 = 6;
            } else if (iA == 5) {
                i12 = 3;
            }
            this.Q = i12;
            s0();
            int iA2 = q.g.a(this.Q);
            if (iA2 == 0) {
                TrackManager trackManager = TrackManager.INSTANCE;
                TrackManager.gestureMoreTips$default(trackManager, null, "Learn", 1, null);
                TrackManager.gestureTipScreen$default(trackManager, null, 1, null);
                return;
            }
            if (iA2 == 1) {
                TrackManager.gestureTipContinueSelected$default(TrackManager.INSTANCE, null, 1, null);
                return;
            }
            if (iA2 == 2) {
                TrackManager.gestureTipContinueSelected$default(TrackManager.INSTANCE, null, 1, null);
                return;
            }
            if (iA2 == 4) {
                TrackManager.gestureTutorialRepeatSecondShoe$default(TrackManager.INSTANCE, null, 1, null);
                return;
            }
            if (iA2 != 5) {
                if (iA2 != 6) {
                    return;
                }
                TrackManager.gestureTutorialDoneSelected$default(TrackManager.INSTANCE, null, 1, null);
            } else {
                TrackManager trackManager2 = TrackManager.INSTANCE;
                TrackManager.gestureMoreTips$default(trackManager2, null, "Heel Tap Unlace", 1, null);
                TrackManager.gestureTipScreen$default(trackManager2, null, 1, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) throws l5.g0.a {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_gestures_tutorial, (ViewGroup) null, false);
        int i10 = R.id.activity_gesture_tutorial_bottom_sheet;
        BottomSheet bottomSheet = (BottomSheet) g7.b.d(viewInflate, R.id.activity_gesture_tutorial_bottom_sheet);
        if (bottomSheet != null) {
            i10 = R.id.btn_gesture_tutorial;
            Button button = (Button) g7.b.d(viewInflate, R.id.btn_gesture_tutorial);
            if (button != null) {
                i10 = R.id.gesture_success_lottie;
                LottieAnimationView lottieAnimationView = (LottieAnimationView) g7.b.d(viewInflate, R.id.gesture_success_lottie);
                if (lottieAnimationView != null) {
                    i10 = R.id.gesture_success_lottie_container;
                    FrameLayout frameLayout = (FrameLayout) g7.b.d(viewInflate, R.id.gesture_success_lottie_container);
                    if (frameLayout != null) {
                        i10 = R.id.gesture_tutorial_content;
                        if (((FrameLayout) g7.b.d(viewInflate, R.id.gesture_tutorial_content)) != null) {
                            i10 = R.id.gesture_tutorial_parent;
                            if (((FrameLayout) g7.b.d(viewInflate, R.id.gesture_tutorial_parent)) != null) {
                                i10 = R.id.gesture_video;
                                PlayerView playerView = (PlayerView) g7.b.d(viewInflate, R.id.gesture_video);
                                if (playerView != null) {
                                    i10 = R.id.half_vertical_guideline;
                                    if (((Guideline) g7.b.d(viewInflate, R.id.half_vertical_guideline)) != null) {
                                        i10 = R.id.item_gesture_tutorial_desc_include;
                                        View viewD = g7.b.d(viewInflate, R.id.item_gesture_tutorial_desc_include);
                                        if (viewD != null) {
                                            int i11 = R.id.desc_heading;
                                            TextView textView = (TextView) g7.b.d(viewD, R.id.desc_heading);
                                            if (textView != null) {
                                                i11 = R.id.desc_sub_copy;
                                                TextView textView2 = (TextView) g7.b.d(viewD, R.id.desc_sub_copy);
                                                if (textView2 != null) {
                                                    d1 d1Var = new d1(textView, textView2, (LinearLayout) viewD);
                                                    int i12 = R.id.item_gesture_tutorial_tips_include;
                                                    View viewD2 = g7.b.d(viewInflate, R.id.item_gesture_tutorial_tips_include);
                                                    if (viewD2 != null) {
                                                        LinearLayout linearLayout = (LinearLayout) viewD2;
                                                        int i13 = R.id.tip1;
                                                        TextView textView3 = (TextView) g7.b.d(viewD2, R.id.tip1);
                                                        if (textView3 != null) {
                                                            i13 = R.id.tip2;
                                                            TextView textView4 = (TextView) g7.b.d(viewD2, R.id.tip2);
                                                            if (textView4 != null) {
                                                                i13 = R.id.tip3;
                                                                if (((TextView) g7.b.d(viewD2, R.id.tip3)) != null) {
                                                                    i13 = R.id.tip_bullet_one_dot;
                                                                    if (((TextView) g7.b.d(viewD2, R.id.tip_bullet_one_dot)) != null) {
                                                                        i13 = R.id.tip_bullet_three_dot;
                                                                        if (((TextView) g7.b.d(viewD2, R.id.tip_bullet_three_dot)) != null) {
                                                                            i13 = R.id.tip_bullet_two_dot;
                                                                            if (((TextView) g7.b.d(viewD2, R.id.tip_bullet_two_dot)) != null) {
                                                                                i13 = R.id.tips_heading;
                                                                                TextView textView5 = (TextView) g7.b.d(viewD2, R.id.tips_heading);
                                                                                if (textView5 != null) {
                                                                                    e1 e1Var = new e1(linearLayout, textView3, textView4, textView5);
                                                                                    i12 = R.id.shaded_background;
                                                                                    View viewD3 = g7.b.d(viewInflate, R.id.shaded_background);
                                                                                    if (viewD3 != null) {
                                                                                        i12 = R.id.video_fade_helper;
                                                                                        FrameLayout frameLayout2 = (FrameLayout) g7.b.d(viewInflate, R.id.video_fade_helper);
                                                                                        if (frameLayout2 != null) {
                                                                                            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                                                                            this.I = new h(coordinatorLayout, bottomSheet, button, lottieAnimationView, frameLayout, playerView, d1Var, e1Var, viewD3, frameLayout2);
                                                                                            setContentView(coordinatorLayout);
                                                                                            h hVar = this.I;
                                                                                            if (hVar == null) {
                                                                                                p4.h.C("binding");
                                                                                                throw null;
                                                                                            }
                                                                                            d1 d1Var2 = hVar.f13832f;
                                                                                            p4.h.i(d1Var2, "binding.itemGestureTutorialDescInclude");
                                                                                            this.J = d1Var2;
                                                                                            h hVar2 = this.I;
                                                                                            if (hVar2 == null) {
                                                                                                p4.h.C("binding");
                                                                                                throw null;
                                                                                            }
                                                                                            e1 e1Var2 = hVar2.f13833g;
                                                                                            p4.h.i(e1Var2, "binding.itemGestureTutorialTipsInclude");
                                                                                            this.K = e1Var2;
                                                                                            Intent intent = getIntent();
                                                                                            this.W = intent != null && intent.getBooleanExtra("extra_gesture_tutorial_accessed_from_intro", false);
                                                                                            this.M = ((o7.f) o.m()).a(this, this.B, s.a.C0221a.f12405h, s.a.b.f12406h);
                                                                                            this.L = ((o7.f) o.m()).b(this, this.B);
                                                                                            this.Y = bundle != null ? bundle.getBoolean("PREVIOUS_GESTURE_DOUBLE_TAP_STATE") : getIntent().getBooleanExtra("PREVIOUS_GESTURE_DOUBLE_TAP_STATE", true);
                                                                                            TrackManager.gestureLearnPrompt$default(TrackManager.INSTANCE, null, 1, null);
                                                                                            s0();
                                                                                            r rVarA = new r.b(this).a();
                                                                                            k0 k0Var = (k0) rVarA;
                                                                                            this.N = k0Var;
                                                                                            k0Var.E(0);
                                                                                            k0Var.A0(0.0f);
                                                                                            k0Var.i(true);
                                                                                            l5.g0 g0Var = new l5.g0(this);
                                                                                            g0Var.l(new m(l5.g0.buildRawResourceUri(R.raw.gesture_tutorial)));
                                                                                            Uri uri = g0Var.f10030g;
                                                                                            if (uri != null) {
                                                                                                ((n3.e) rVarA).f0(y0.c(uri));
                                                                                                k0Var.b();
                                                                                            }
                                                                                            p4.h.x(rVarA, new d(rVarA));
                                                                                            k0Var.a0(new e());
                                                                                            h hVar3 = this.I;
                                                                                            if (hVar3 == null) {
                                                                                                p4.h.C("binding");
                                                                                                throw null;
                                                                                            }
                                                                                            PlayerView playerView2 = hVar3.f13831e;
                                                                                            k0 k0Var2 = this.N;
                                                                                            if (k0Var2 == null) {
                                                                                                p4.h.C("exoPlayer");
                                                                                                throw null;
                                                                                            }
                                                                                            playerView2.setPlayer(k0Var2);
                                                                                            h hVar4 = this.I;
                                                                                            if (hVar4 == null) {
                                                                                                p4.h.C("binding");
                                                                                                throw null;
                                                                                            }
                                                                                            hVar4.f13831e.d();
                                                                                            h hVar5 = this.I;
                                                                                            if (hVar5 != null) {
                                                                                                hVar5.f13828b.setOnClickListener(this);
                                                                                                return;
                                                                                            } else {
                                                                                                p4.h.C("binding");
                                                                                                throw null;
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
                                                        throw new NullPointerException("Missing required view with ID: ".concat(viewD2.getResources().getResourceName(i13)));
                                                    }
                                                    i10 = i12;
                                                }
                                            }
                                            throw new NullPointerException("Missing required view with ID: ".concat(viewD.getResources().getResourceName(i11)));
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onDestroy() {
        k0 k0Var = this.N;
        if (k0Var == null) {
            p4.h.C("exoPlayer");
            throw null;
        }
        k0Var.i(false);
        k0Var.B0();
        k0Var.t0();
        super.onDestroy();
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onPause() {
        r0(false);
        t0(false);
        ArrayList arrayList = new ArrayList();
        if (this.Y) {
            arrayList.add(AdaptGestureConfiguration.DoubleTapUnlace.INSTANCE);
        } else {
            arrayList.add(AdaptGestureConfiguration.Off.INSTANCE);
        }
        IDeviceController iDeviceController = this.L;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        Shoe shoe = Shoe.BOTH;
        iDeviceController.requestTo(shoe, new g0(arrayList));
        IDeviceController iDeviceController2 = this.L;
        if (iDeviceController2 == null) {
            p4.h.C("deviceController");
            throw null;
        }
        g9.k kVar = g9.k.f7894a;
        iDeviceController2.requestTo(shoe, new f0(g9.k.d()));
        super.onPause();
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        r0(true);
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        p4.h.j(bundle, "outState");
        p4.h.j(persistableBundle, "outPersistentState");
        super.onSaveInstanceState(bundle, persistableBundle);
        bundle.putBoolean("PREVIOUS_GESTURE_DOUBLE_TAP_STATE", this.Y);
    }

    @Override // p8.a, p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        super.onStart();
        r0(true);
        s0();
    }

    @Override // p8.a, p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        t0(false);
        r0(false);
        super.onStop();
    }

    public final void q0() {
        r0(false);
        h hVar = this.I;
        if (hVar == null) {
            p4.h.C("binding");
            throw null;
        }
        hVar.f13829c.setAlpha(0.0f);
        h hVar2 = this.I;
        if (hVar2 == null) {
            p4.h.C("binding");
            throw null;
        }
        hVar2.f13830d.setAlpha(0.0f);
        h hVar3 = this.I;
        if (hVar3 == null) {
            p4.h.C("binding");
            throw null;
        }
        hVar3.f13830d.setVisibility(0);
        h hVar4 = this.I;
        if (hVar4 != null) {
            hVar4.f13830d.animate().alpha(0.7f).setDuration(250L).withEndAction(new k1(this, 6)).start();
        } else {
            p4.h.C("binding");
            throw null;
        }
    }

    public final void r0(boolean z10) {
        k0 k0Var = this.N;
        if (k0Var != null) {
            k0Var.i(z10);
        } else {
            p4.h.C("exoPlayer");
            throw null;
        }
    }

    @Override // w8.a
    public final void s(androidx.appcompat.app.d dVar) {
        this.O = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0099  */
    public final void s0() {
        String strR;
        String strR2;
        String strR3;
        d1 d1Var = this.J;
        if (d1Var == null) {
            p4.h.C("bindingDesc");
            throw null;
        }
        LinearLayout linearLayout = d1Var.f13754c;
        int i10 = this.Q;
        androidx.appcompat.widget.o.d(i10, "state");
        int iA = q.g.a(i10);
        linearLayout.setVisibility((iA == 0 || iA == 4 || iA == 5 || iA == 6) ? 0 : 8);
        e1 e1Var = this.K;
        if (e1Var == null) {
            p4.h.C("bindingTips");
            throw null;
        }
        LinearLayout linearLayout2 = e1Var.f13785a;
        int i11 = this.Q;
        androidx.appcompat.widget.o.d(i11, "state");
        int iA2 = q.g.a(i11);
        linearLayout2.setVisibility((iA2 == 1 || iA2 == 2 || iA2 == 3) ? 0 : 8);
        h hVar = this.I;
        if (hVar == null) {
            p4.h.C("binding");
            throw null;
        }
        Button button = hVar.f13828b;
        int i12 = this.Q;
        androidx.appcompat.widget.o.d(i12, "state");
        int iA3 = q.g.a(i12);
        button.setVisibility((iA3 == 0 || iA3 == 1 || iA3 == 2 || iA3 == 4 || iA3 == 5 || iA3 == 6) ? 0 : 8);
        h hVar2 = this.I;
        if (hVar2 == null) {
            p4.h.C("binding");
            throw null;
        }
        Button button2 = hVar2.f13828b;
        int i13 = this.Q;
        androidx.appcompat.widget.o.d(i13, "state");
        int iA4 = q.g.a(i13);
        String strR4 = "";
        if (iA4 == 0) {
            strR = o.r(R.string.adapt_unlace_gesture_tutorial_more_tips_button_title);
        } else if (iA4 == 1 || iA4 == 2 || iA4 == 4) {
            strR = o.r(R.string.adapt_continue_cta);
        } else if (iA4 != 5) {
            strR = iA4 != 6 ? "" : o.r(R.string.adapt_done_cta_button);
        } else {
            strR = o.r(R.string.adapt_unlace_gesture_tutorial_more_tips_button_title);
        }
        button2.setText(strR);
        e1 e1Var2 = this.K;
        if (e1Var2 == null) {
            p4.h.C("bindingTips");
            throw null;
        }
        TextView textView = e1Var2.f13788d;
        int i14 = this.Q;
        androidx.appcompat.widget.o.d(i14, "state");
        int iA5 = q.g.a(i14);
        if (iA5 == 1 || iA5 == 2) {
            strR2 = o.r(R.string.adapt_unlace_gesture_tutorial_shoe_tips_title);
        } else {
            strR2 = iA5 != 3 ? "" : o.r(R.string.adapt_unlace_gesture_tutorial_shoe_error_title);
        }
        textView.setText(strR2);
        e1 e1Var3 = this.K;
        if (e1Var3 == null) {
            p4.h.C("bindingTips");
            throw null;
        }
        TextView textView2 = e1Var3.f13786b;
        int i15 = this.Q;
        androidx.appcompat.widget.o.d(i15, "state");
        int iA6 = q.g.a(i15);
        textView2.setText((iA6 == 1 || iA6 == 2 || iA6 == 3) ? o.r(R.string.adapt_unlace_gesture_tutorial_tip1) : "");
        e1 e1Var4 = this.K;
        if (e1Var4 == null) {
            p4.h.C("bindingTips");
            throw null;
        }
        TextView textView3 = e1Var4.f13787c;
        int i16 = this.Q;
        androidx.appcompat.widget.o.d(i16, "state");
        int iA7 = q.g.a(i16);
        textView3.setText((iA7 == 1 || iA7 == 2 || iA7 == 3) ? o.r(R.string.adapt_unlace_gesture_tutorial_tip2) : "");
        d1 d1Var2 = this.J;
        if (d1Var2 == null) {
            p4.h.C("bindingDesc");
            throw null;
        }
        TextView textView4 = d1Var2.f13752a;
        int i17 = this.Q;
        androidx.appcompat.widget.o.d(i17, "state");
        int iA8 = q.g.a(i17);
        if (iA8 == 0) {
            strR3 = o.r(R.string.adapt_unlace_gesture_tutorial_first_shoe_title);
        } else if (iA8 == 4) {
            strR3 = o.r(R.string.adapt_unlace_gesture_tutorial_first_shoe_success_title);
        } else if (iA8 != 5) {
            strR3 = iA8 != 6 ? "" : o.r(R.string.adapt_unlace_gesture_tutorial_second_shoe_success_title);
        } else {
            strR3 = o.r(R.string.adapt_unlace_gesture_tutorial_second_shoe_title);
        }
        textView4.setText(strR3);
        d1 d1Var3 = this.J;
        if (d1Var3 == null) {
            p4.h.C("bindingDesc");
            throw null;
        }
        TextView textView5 = d1Var3.f13753b;
        int i18 = this.Q;
        androidx.appcompat.widget.o.d(i18, "state");
        int iA9 = q.g.a(i18);
        if (iA9 == 0) {
            strR4 = o.r(R.string.adapt_unlace_gesture_tutorial_first_shoe_subcopy);
        } else if (iA9 == 4) {
            strR4 = o.r(R.string.adapt_unlace_gesture_tutorial_first_shoe_success_subcopy);
        } else if (iA9 == 5) {
            strR4 = o.r(R.string.adapt_unlace_gesture_tutorial_second_shoe_subcopy);
        } else if (iA9 == 6) {
            strR4 = o.r(R.string.adapt_unlace_gesture_tutorial_second_shoe_success_subcopy);
        }
        textView5.setText(strR4);
    }

    public final void t0(boolean z10) {
        if (!z10) {
            this.X = false;
            this.R.removeCallbacks(this.f5746c0);
        } else {
            if (this.X) {
                return;
            }
            this.X = true;
            this.R.postDelayed(this.f5746c0, 15000L);
        }
    }

    @Override // w8.a
    public final androidx.appcompat.app.d u() {
        return this.P;
    }

    public final void u0() {
        this.Q = 6;
        h hVar = this.I;
        if (hVar == null) {
            p4.h.C("binding");
            throw null;
        }
        hVar.f13835i.setAlpha(0.0f);
        h hVar2 = this.I;
        if (hVar2 == null) {
            p4.h.C("binding");
            throw null;
        }
        hVar2.f13835i.setVisibility(0);
        h hVar3 = this.I;
        if (hVar3 != null) {
            hVar3.f13835i.animate().alpha(1.0f).setDuration(250L).withEndAction(new l8.a(this, 1)).start();
        } else {
            p4.h.C("binding");
            throw null;
        }
    }

    public final void v0(boolean z10, boolean z11) {
        if (!z10) {
            int i10 = this.S + 1;
            this.S = i10;
            TrackManager trackManager = TrackManager.INSTANCE;
            TrackManager.gestureFailureScreen$default(trackManager, null, (this.U || this.V) ? 2 : 1, " Failure Notification", i10, 1, null);
            TrackManager.gestureGenericFailure$default(trackManager, null, 1, null);
            this.Q = 4;
            s0();
            return;
        }
        if (!z11) {
            this.Q = 5;
            q0();
            s0();
            t0(false);
            t0(true);
            TrackManager.gestureFirstShoeSuccess$default(TrackManager.INSTANCE, null, 1, null);
            return;
        }
        t0(false);
        this.Q = 7;
        q0();
        s0();
        TrackManager trackManager2 = TrackManager.INSTANCE;
        TrackManager.gestureSecondShoeSuccess$default(trackManager2, null, 1, null);
        TrackManager.gestureTutorialFlowComplete$default(trackManager2, null, 1, null);
    }
}
