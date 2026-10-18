package com.nike.adapt.ui.lighting;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.tabs.TabLayout;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetAnimationResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.StartAnimationResult;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.adk.StopAnimationResult;
import com.nike.adapt.adk.model.AdaptAnimation;
import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import com.nike.adapt.adk.model.AdaptCustomAnimation;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.NotificationToast;
import fe.k;
import h9.n;
import j0.a0;
import java.util.List;
import o7.f;
import o7.x;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.h0;
import p8.i0;
import p8.j;
import p8.j0;
import p8.w;
import q7.l;
import s9.g;
import u8.q;
import x8.s;
import y0.y;
import y8.e;
import y8.i;

/* JADX INFO: compiled from: LightingEffectsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LightingEffectsActivity extends p8.a implements View.OnClickListener, TabLayout.d, View.OnTouchListener, s.a {

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final /* synthetic */ int f5764k0 = 0;
    public l I;
    public boolean J;
    public View K;
    public TabLayout L;
    public int M;
    public i N;
    public a O;
    public androidx.appcompat.app.d P;
    public IDeviceController Q;
    public IAdaptRequester R;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f5765a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f5766b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f5767c0;
    public boolean d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f5768e0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public i.a f5772i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f5773j0;
    public int S = g.f15195a.b();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final h8.c f5769f0 = h8.c.f8298b;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final List<u8.g> f5770g0 = o.e(new q(this, null, 0, 30), new u8.c(R.id.lights_effects_parent, this));

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final s f5771h0 = new s(this);

    /* JADX INFO: compiled from: LightingEffectsActivity.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final v7.c f5774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5775b;

        public a(v7.c cVar, int i10) {
            h.j(cVar, "effectType");
            androidx.appcompat.widget.o.d(i10, "durationState");
            this.f5774a = cVar;
            this.f5775b = i10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return h.c(this.f5774a, aVar.f5774a) && this.f5775b == aVar.f5775b;
        }

        public final int hashCode() {
            return q.g.a(this.f5775b) + (this.f5774a.hashCode() * 31);
        }

        public final String toString() {
            return "ButtonData(effectType=" + this.f5774a + ", durationState=" + androidx.appcompat.widget.o.m(this.f5775b) + ")";
        }
    }

    /* JADX INFO: compiled from: LightingEffectsActivity.kt */
    public static final class b extends rd.o implements qd.a<fd.o> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            new n(true, false).e(LightingEffectsActivity.this);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightingEffectsActivity.kt */
    public static final class c extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f5777h = new c();

        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            h.j(dVar2, "it");
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: LightingEffectsActivity.kt */
    public static final class d extends rd.o implements qd.a<fd.o> {
        public d() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            new n(true, false).e(LightingEffectsActivity.this);
            return fd.o.f7408a;
        }
    }

    public static void t0(LightingEffectsActivity lightingEffectsActivity, v7.c cVar) {
        int iJ = lightingEffectsActivity.f5769f0.j();
        int i10 = 4;
        for (int i11 : q.g.b(4)) {
            if (androidx.appcompat.widget.o.a(i11) == iJ) {
                i10 = i11;
                break;
            }
        }
        lightingEffectsActivity.u0(cVar, i10);
    }

    @Override // com.google.android.material.tabs.TabLayout.c
    public final void L(TabLayout.g gVar) {
        View view = gVar.f5450e;
        h.h(view, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) view;
        textView.postDelayed(new y0.s(textView, 4), 75L);
    }

    @Override // com.google.android.material.tabs.TabLayout.c
    public final void V(TabLayout.g gVar) {
        h.j(gVar, "tab");
        View view = this.K;
        if (view == null) {
            h.C("durationIndicator");
            throw null;
        }
        long j10 = view.getVisibility() == 0 ? 150L : 0L;
        View view2 = this.K;
        if (view2 == null) {
            h.C("durationIndicator");
            throw null;
        }
        view2.setVisibility(0);
        View view3 = gVar.f5450e;
        h.h(view3, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) view3;
        int i10 = 4;
        textView.postDelayed(new androidx.activity.d(textView, i10), j10 / ((long) 2));
        TabLayout tabLayout = this.L;
        if (tabLayout == null) {
            h.C("durationTab");
            throw null;
        }
        int selectedTabPosition = tabLayout.getSelectedTabPosition();
        int i11 = selectedTabPosition != 0 ? selectedTabPosition != 1 ? 3 : 2 : 1;
        p0(i11, j10);
        this.f5769f0.c0(androidx.appcompat.widget.o.a(i11));
        if (this.J) {
            TrackManager.INSTANCE.lightsEffectDurationSelected(String.valueOf(androidx.appcompat.widget.o.a(i11)));
            this.f5769f0.c0(androidx.appcompat.widget.o.a(i11));
            v7.c cVarL0 = this.f5769f0.l0();
            if (!h.c(cVarL0, v7.c.d.f16370c)) {
                if (this.S == 2) {
                    y0(new i.a(cVarL0, false));
                } else {
                    x0(new i.a(cVarL0, false));
                }
            }
            v7.c cVarL1 = this.f5769f0.l0();
            int iJ = this.f5769f0.j();
            for (int i12 : q.g.b(4)) {
                if (androidx.appcompat.widget.o.a(i12) == iJ) {
                    i10 = i12;
                    break;
                }
            }
            u0(cVarL1, i10);
        }
        this.J = true;
    }

    @Override // x8.s.a
    public final void d(boolean z10) {
    }

    @Override // p8.a
    public final List<u8.g> o0() {
        return this.f5770g0;
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        s0().subscribe(adaptConnectionStatusResult.getDevice());
        s0().requestTo(adaptConnectionStatusResult.getShoe(), new w(null, 1, null));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00c7 A[PHI: r3
      0x00c7: PHI (r3v11 v7.c) = (r3v10 v7.c), (r3v12 v7.c) binds: [B:34:0x00d5, B:29:0x00c5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:31:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:33:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:38:0x00de  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e8  */
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        v7.c cVar;
        int id2;
        v7.c.C0294c c0294c;
        int id3;
        v7.c cVar2;
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        int i10 = 4;
        if (deviceControllerResult instanceof GetAnimationResult) {
            GetAnimationResult getAnimationResult = (GetAnimationResult) deviceControllerResult;
            AdaptCurrentAnimation animation = getAnimationResult.getAnimation();
            if (getAnimationResult.getShoe().isLeft()) {
                x.f12420a.b("CUSTOM_ANIM", "LEFT:" + animation.getRunningState().name() + " ::::: " + animation.getSecondsRemaining());
                this.T = animation.isRunning();
                this.V = true;
            } else {
                x.f12420a.b("CUSTOM_ANIM", "RIGHT:" + animation.getRunningState().name() + " ::::: " + animation.getSecondsRemaining());
                this.U = animation.isRunning();
                this.W = true;
            }
            if (this.V && this.W) {
                this.V = false;
                this.W = false;
                if (this.T || this.U) {
                    this.T = false;
                    this.U = false;
                    if (this.O == null) {
                        if (animation.isRunning() && this.S == 2) {
                            cVar = v7.c.e.f16371c;
                        } else if (animation.isRunning()) {
                            int id4 = animation.getId();
                            cVar2 = v7.c.e.f16371c;
                            if (id4 == 1) {
                                cVar = cVar2;
                            } else {
                                if (animation.isRunning()) {
                                    id3 = animation.getId();
                                    cVar2 = v7.c.f.f16373c;
                                    if (id3 == 2) {
                                        cVar = cVar2;
                                    }
                                }
                                if (animation.isRunning()) {
                                    id2 = animation.getId();
                                    c0294c = v7.c.C0294c.f16368c;
                                    if (id2 == 3) {
                                        cVar = c0294c;
                                    } else {
                                        cVar = v7.c.d.f16370c;
                                    }
                                } else {
                                    cVar = v7.c.d.f16370c;
                                }
                            }
                        } else {
                            if (animation.isRunning()) {
                                id3 = animation.getId();
                                cVar2 = v7.c.f.f16373c;
                                if (id3 == 2) {
                                    cVar = cVar2;
                                }
                            }
                            if (animation.isRunning()) {
                                id2 = animation.getId();
                                c0294c = v7.c.C0294c.f16368c;
                                if (id2 == 3) {
                                    cVar = c0294c;
                                } else {
                                    cVar = v7.c.d.f16370c;
                                }
                            } else {
                                cVar = v7.c.d.f16370c;
                            }
                        }
                        int iJ = this.f5769f0.j();
                        for (int i11 : q.g.b(4)) {
                            if (androidx.appcompat.widget.o.a(i11) == iJ) {
                                i10 = i11;
                                break;
                            }
                        }
                        u0(cVar, i10);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        AdaptCustomAnimation adaptCustomAnimationCopy$default = null;
        if (deviceControllerResult instanceof StartAnimationResult) {
            this.f5771h0.e(3);
            if (((StartAnimationResult) deviceControllerResult).getShoe().isLeft()) {
                this.X = true;
            } else {
                this.Y = true;
            }
            if (this.X && this.Y) {
                this.X = false;
                this.Y = false;
                s0().requestTo(Shoe.BOTH, new w(null, 1, null));
                return;
            }
            return;
        }
        if (!(deviceControllerResult instanceof StopAnimationResult)) {
            if (deviceControllerResult instanceof StopAnimationNotificationResult) {
                this.f5771h0.e(2);
                if (((StopAnimationNotificationResult) deviceControllerResult).getShoe().isLeft()) {
                    if (this.d0) {
                        this.d0 = false;
                        return;
                    } else {
                        x.f12420a.b("CUSTOM_ANIM", " left stop animation from noti");
                        this.f5767c0 = true;
                    }
                } else if (this.f5768e0) {
                    this.f5768e0 = false;
                    return;
                } else {
                    x.f12420a.b("CUSTOM_ANIM", " right stop animation from noti");
                    this.f5766b0 = true;
                }
                if (this.f5767c0 && this.f5766b0) {
                    this.f5767c0 = false;
                    this.f5766b0 = false;
                    s0().requestTo(Shoe.BOTH, new w(null, 1, null));
                    u0(v7.c.d.f16370c, 4);
                    return;
                }
                return;
            }
            return;
        }
        this.f5771h0.e(2);
        if (((StopAnimationResult) deviceControllerResult).getShoe().isLeft()) {
            x.f12420a.b("CUSTOM_ANIM", " left stop animation");
            this.Z = true;
        } else {
            x.f12420a.b("CUSTOM_ANIM", " right stop animation");
            this.f5765a0 = true;
        }
        if (this.Z && this.f5765a0 && !this.f5773j0) {
            this.Z = false;
            this.f5765a0 = false;
            i.a aVar = this.f5772i0;
            if (aVar != null && !h.c(aVar.f18704a, v7.c.d.f16370c)) {
                TrackManager trackManager = TrackManager.INSTANCE;
                i.a aVar2 = this.f5772i0;
                if (aVar2 == null) {
                    h.C("effectToBeUpdatedOnStopCurrentAnimResult");
                    throw null;
                }
                trackManager.lightsEffectSelected(aVar2.f18704a.b());
                w0();
                y8.b bVar = y8.b.f18683a;
                i.a aVar3 = this.f5772i0;
                if (aVar3 == null) {
                    h.C("effectToBeUpdatedOnStopCurrentAnimResult");
                    throw null;
                }
                AdaptCustomAnimation adaptCustomAnimationA = bVar.a(this, bVar.d(aVar3, this.f5769f0.c()));
                if (adaptCustomAnimationA != null) {
                    i.a aVar4 = this.f5772i0;
                    if (aVar4 == null) {
                        h.C("effectToBeUpdatedOnStopCurrentAnimResult");
                        throw null;
                    }
                    adaptCustomAnimationCopy$default = AdaptCustomAnimation.copy$default(adaptCustomAnimationA, aVar4.f18704a.a(), false, null, false, 0, 0, 62, null);
                }
                if (adaptCustomAnimationCopy$default != null) {
                    i0 i0Var = new i0(adaptCustomAnimationCopy$default, this.f5769f0.j() * 60);
                    v0();
                    s0().requestTo(Shoe.BOTH, i0Var);
                    InMemoryCache.INSTANCE.setNeedToDisplayEffectsSubtitleForFirstTime(true);
                    this.f5769f0.n0(false);
                }
            }
            this.f5771h0.e(3);
        }
        if (this.f5773j0 && this.Z && this.f5765a0) {
            this.Z = false;
            this.f5765a0 = false;
            this.f5773j0 = false;
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        h.j(view, "view");
        if (view.getId() == R.id.light_effects_done) {
            TrackManager.INSTANCE.effectsDoneButtonSelected();
            finish();
            overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_lighting_effects, (ViewGroup) null, false);
        int i10 = R.id.effect_done_text;
        if (((TextView) g7.b.d(viewInflate, R.id.effect_done_text)) != null) {
            i10 = R.id.effects_activity_notification_toast;
            NotificationToast notificationToast = (NotificationToast) g7.b.d(viewInflate, R.id.effects_activity_notification_toast);
            if (notificationToast != null) {
                i10 = R.id.light_effect_sub_head;
                TextView textView = (TextView) g7.b.d(viewInflate, R.id.light_effect_sub_head);
                if (textView != null) {
                    i10 = R.id.light_effects_done;
                    FrameLayout frameLayout = (FrameLayout) g7.b.d(viewInflate, R.id.light_effects_done);
                    if (frameLayout != null) {
                        i10 = R.id.light_effects_duration;
                        TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.light_effects_duration);
                        if (textView2 != null) {
                            i10 = R.id.light_effects_heading;
                            TextView textView3 = (TextView) g7.b.d(viewInflate, R.id.light_effects_heading);
                            if (textView3 != null) {
                                i10 = R.id.lighting_effect_duration_card_view;
                                CardView cardView = (CardView) g7.b.d(viewInflate, R.id.lighting_effect_duration_card_view);
                                if (cardView != null) {
                                    i10 = R.id.lighting_effect_duration_indicator;
                                    View viewD = g7.b.d(viewInflate, R.id.lighting_effect_duration_indicator);
                                    if (viewD != null) {
                                        i10 = R.id.lighting_effect_duration_tab_layout;
                                        TabLayout tabLayout = (TabLayout) g7.b.d(viewInflate, R.id.lighting_effect_duration_tab_layout);
                                        if (tabLayout != null) {
                                            FrameLayout frameLayout2 = (FrameLayout) viewInflate;
                                            i10 = R.id.lights_effects_recycle_view;
                                            RecyclerView recyclerView = (RecyclerView) g7.b.d(viewInflate, R.id.lights_effects_recycle_view);
                                            if (recyclerView != null) {
                                                this.I = new l(frameLayout2, notificationToast, textView, frameLayout, textView2, textView3, cardView, viewD, tabLayout, frameLayout2, recyclerView);
                                                setContentView(r0().f13904a);
                                                TrackManager.INSTANCE.lightingEffectsScreenViewed();
                                                IAdaptRequester iAdaptRequesterA = ((f) o.m()).a(this, this.B, y8.f.f18693h, new e(this));
                                                h.j(iAdaptRequesterA, "<set-?>");
                                                this.R = iAdaptRequesterA;
                                                IDeviceController iDeviceControllerB = ((f) o.m()).b(this, this.B);
                                                h.j(iDeviceControllerB, "<set-?>");
                                                this.Q = iDeviceControllerB;
                                                p7.b bVar = p7.b.f13281a;
                                                FrameLayout frameLayout3 = r0().f13913j;
                                                h.i(frameLayout3, "binding.lightsEffectsParent");
                                                p7.b.f13281a.e(frameLayout3, InMemoryCache.INSTANCE.getActiveLightPack());
                                                r0().f13907d.setOnClickListener(this);
                                                TabLayout tabLayout2 = r0().f13912i;
                                                h.i(tabLayout2, "binding.lightingEffectDurationTabLayout");
                                                this.L = tabLayout2;
                                                View view = r0().f13911h;
                                                h.i(view, "binding.lightingEffectDurationIndicator");
                                                this.K = view;
                                                TabLayout tabLayout3 = this.L;
                                                if (tabLayout3 == null) {
                                                    h.C("durationTab");
                                                    throw null;
                                                }
                                                tabLayout3.post(new y(this, 4));
                                                i iVar = new i(new i.b(new i.a(v7.c.C0294c.f16368c, false), 3), this);
                                                r0().f13914k.setAdapter(iVar);
                                                this.N = iVar;
                                                if (this.S == 3) {
                                                    r0().f13906c.setAlpha(0.45f);
                                                    r0().f13908e.setAlpha(0.45f);
                                                    r0().f13910g.setCardBackgroundColor(o.o(R.color.disabled_lighting_background));
                                                }
                                                a0.q(r0().f13909f, true);
                                                return;
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
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // p8.a, p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        super.onStart();
        this.f5773j0 = false;
        this.Z = false;
        this.f5765a0 = false;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        h.j(view, "view");
        h.j(motionEvent, "event");
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        boolean z10 = false;
        if (!(inMemoryCache.getLeftDevice().getBattery().getPercent() > 20 && inMemoryCache.getRightDevice().getBattery().getPercent() > 20)) {
            androidx.appcompat.app.d dVar = this.P;
            if (dVar != null && dVar.isShowing()) {
                z10 = true;
            }
            if (!z10) {
                TrackManager.INSTANCE.lightingEffectsBatteryLow();
                this.P = s9.y.f15252a.g(this, c.f5777h);
            }
            return true;
        }
        if (this.S == 3) {
            NotificationToast notificationToast = r0().f13905b;
            notificationToast.e(R.string.adapt_toast_title_effects_disabled);
            notificationToast.c(R.string.adapt_toast_body_effects_disabled_my_shoes_fw);
            notificationToast.d(new d());
            notificationToast.a();
        }
        if (view.getId() == 16908308) {
            this.J = true;
        }
        return false;
    }

    public final void p0(int i10, long j10) {
        int width;
        View view = this.K;
        if (view == null) {
            h.C("durationIndicator");
            throw null;
        }
        view.setVisibility(0);
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        float f10 = 0.0f;
        if (i11 != 0) {
            if (i11 == 1) {
                TabLayout tabLayout = this.L;
                if (tabLayout == null) {
                    h.C("durationTab");
                    throw null;
                }
                width = tabLayout.getWidth() / 3;
            } else if (i11 == 2) {
                TabLayout tabLayout2 = this.L;
                if (tabLayout2 == null) {
                    h.C("durationTab");
                    throw null;
                }
                width = tabLayout2.getWidth() - this.M;
            } else {
                if (i11 != 3) {
                    throw new j2.a();
                }
                View view2 = this.K;
                if (view2 == null) {
                    h.C("durationIndicator");
                    throw null;
                }
                view2.setVisibility(4);
            }
            f10 = width;
        }
        View view3 = this.K;
        if (view3 != null) {
            view3.animate().setInterpolator(new AccelerateDecelerateInterpolator()).setDuration(j10).x(f10).start();
        } else {
            h.C("durationIndicator");
            throw null;
        }
    }

    public final void q0(v7.c cVar) {
        h.j(cVar, "effectType");
        TrackManager.INSTANCE.firmwareUpdateNotificationToastShown("Lighting Effect Panel View");
        NotificationToast notificationToast = r0().f13905b;
        notificationToast.d(new b());
        notificationToast.a();
        if (h.c(cVar, v7.c.e.f16371c)) {
            NotificationToast notificationToast2 = r0().f13905b;
            notificationToast2.e(R.string.adapt_toast_title_pulsing_effect_disabled);
            notificationToast2.c(R.string.adapt_toast_body_pulsing_effect_disabled_my_shoes_fw);
        } else if (h.c(cVar, v7.c.f.f16373c)) {
            NotificationToast notificationToast3 = r0().f13905b;
            notificationToast3.e(R.string.adapt_toast_title_strobe_effect_disabled);
            notificationToast3.c(R.string.adapt_toast_body_strobe_effect_disabled_my_shoes_fw);
        } else if (h.c(cVar, v7.c.C0294c.f16368c)) {
            NotificationToast notificationToast4 = r0().f13905b;
            notificationToast4.e(R.string.adapt_toast_title_gradient_effect_disabled);
            notificationToast4.c(R.string.adapt_toast_body_gradient_effect_disabled_my_shoes_fw);
        }
    }

    @Override // com.google.android.material.tabs.TabLayout.c
    public final void r(TabLayout.g gVar) {
        h.j(gVar, "tab");
        View view = this.K;
        if (view == null) {
            h.C("durationIndicator");
            throw null;
        }
        view.setVisibility(0);
        View view2 = gVar.f5450e;
        h.h(view2, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) view2).setTextColor(o.o(R.color.text_color_black));
        if (gVar.a()) {
            V(gVar);
        }
    }

    public final l r0() {
        l lVar = this.I;
        if (lVar != null) {
            return lVar;
        }
        h.C("binding");
        throw null;
    }

    public final IDeviceController s0() {
        IDeviceController iDeviceController = this.Q;
        if (iDeviceController != null) {
            return iDeviceController;
        }
        h.C("deviceController");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0021  */
    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:15:0x003a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0040  */
    /* JADX WARN: Code duplicated, block: B:18:0x0043  */
    /* JADX WARN: Code duplicated, block: B:21:0x0059  */
    /* JADX WARN: Code duplicated, block: B:23:0x005f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:27:0x0073  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    /* JADX WARN: Code duplicated, block: B:30:0x007d  */
    /* JADX WARN: Code duplicated, block: B:33:0x008e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0094  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:46:0x00be  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:72:0x0100  */
    /* JADX WARN: Code duplicated, block: B:74:0x0104  */
    /* JADX WARN: Code duplicated, block: B:76:0x0108  */
    public final void u0(v7.c cVar, int i10) {
        i iVar;
        TabLayout tabLayout;
        TabLayout.g gVarH;
        View view;
        TabLayout tabLayout2;
        TabLayout.g gVarH2;
        View view2;
        TabLayout tabLayout3;
        TabLayout.g gVarH3;
        View view3;
        View view4;
        int iJ;
        TabLayout tabLayout4;
        TabLayout.g gVarH4;
        TabLayout tabLayout5;
        TabLayout.g gVarH5;
        TabLayout tabLayout6;
        TabLayout.g gVarH6;
        h.j(cVar, "effectType");
        androidx.appcompat.widget.o.d(i10, "durationState");
        a aVar = this.O;
        if (aVar == null || !h.c(cVar, aVar.f5774a)) {
            iVar = this.N;
            if (iVar != null) {
                h.C("lightsEffectAdapter");
                throw null;
            }
            iVar.m(new i.b(new i.a(cVar, true), i10));
            tabLayout = this.L;
            if (tabLayout != null) {
                h.C("durationTab");
                throw null;
            }
            gVarH = tabLayout.h(0);
            if (gVarH != null) {
                view = gVarH.f5450e;
            } else {
                view = null;
            }
            h.h(view, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) view).setTextColor(o.o(R.color.white));
            tabLayout2 = this.L;
            if (tabLayout2 != null) {
                h.C("durationTab");
                throw null;
            }
            gVarH2 = tabLayout2.h(1);
            if (gVarH2 != null) {
                view2 = gVarH2.f5450e;
            } else {
                view2 = null;
            }
            h.h(view2, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) view2).setTextColor(o.o(R.color.white));
            tabLayout3 = this.L;
            if (tabLayout3 != null) {
                h.C("durationTab");
                throw null;
            }
            gVarH3 = tabLayout3.h(2);
            if (gVarH3 != null) {
                view3 = gVarH3.f5450e;
            } else {
                view3 = null;
            }
            h.h(view3, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) view3).setTextColor(o.o(R.color.white));
            view4 = this.K;
            if (view4 != null) {
                h.C("durationIndicator");
                throw null;
            }
            view4.setVisibility(4);
            if (i10 != 4) {
                this.f5769f0.c0(androidx.appcompat.widget.o.a(i10));
                this.J = false;
                if (this.S != 3) {
                    iJ = this.f5769f0.j();
                } else {
                    iJ = -50;
                }
                if (iJ == 5) {
                    tabLayout6 = this.L;
                    if (tabLayout6 != null) {
                        h.C("durationTab");
                        throw null;
                    }
                    gVarH6 = tabLayout6.h(0);
                    if (gVarH6 != null) {
                        gVarH6.b();
                    }
                } else if (iJ == 30) {
                    tabLayout5 = this.L;
                    if (tabLayout5 != null) {
                        h.C("durationTab");
                        throw null;
                    }
                    gVarH5 = tabLayout5.h(1);
                    if (gVarH5 != null) {
                        gVarH5.b();
                    }
                } else if (iJ == 60) {
                    tabLayout4 = this.L;
                    if (tabLayout4 != null) {
                        h.C("durationTab");
                        throw null;
                    }
                    gVarH4 = tabLayout4.h(2);
                    if (gVarH4 != null) {
                        gVarH4.b();
                    }
                }
            }
        } else {
            a aVar2 = this.O;
            if (i10 != (aVar2 != null ? aVar2.f5775b : 0)) {
                iVar = this.N;
                if (iVar != null) {
                    h.C("lightsEffectAdapter");
                    throw null;
                }
                iVar.m(new i.b(new i.a(cVar, true), i10));
                tabLayout = this.L;
                if (tabLayout != null) {
                    h.C("durationTab");
                    throw null;
                }
                gVarH = tabLayout.h(0);
                if (gVarH != null) {
                    view = gVarH.f5450e;
                } else {
                    view = null;
                }
                h.h(view, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) view).setTextColor(o.o(R.color.white));
                tabLayout2 = this.L;
                if (tabLayout2 != null) {
                    h.C("durationTab");
                    throw null;
                }
                gVarH2 = tabLayout2.h(1);
                if (gVarH2 != null) {
                    view2 = gVarH2.f5450e;
                } else {
                    view2 = null;
                }
                h.h(view2, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) view2).setTextColor(o.o(R.color.white));
                tabLayout3 = this.L;
                if (tabLayout3 != null) {
                    h.C("durationTab");
                    throw null;
                }
                gVarH3 = tabLayout3.h(2);
                if (gVarH3 != null) {
                    view3 = gVarH3.f5450e;
                } else {
                    view3 = null;
                }
                h.h(view3, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) view3).setTextColor(o.o(R.color.white));
                view4 = this.K;
                if (view4 != null) {
                    h.C("durationIndicator");
                    throw null;
                }
                view4.setVisibility(4);
                if (i10 != 4) {
                    this.f5769f0.c0(androidx.appcompat.widget.o.a(i10));
                    this.J = false;
                    if (this.S != 3) {
                        iJ = this.f5769f0.j();
                    } else {
                        iJ = -50;
                    }
                    if (iJ == 5) {
                        tabLayout6 = this.L;
                        if (tabLayout6 != null) {
                            h.C("durationTab");
                            throw null;
                        }
                        gVarH6 = tabLayout6.h(0);
                        if (gVarH6 != null) {
                            gVarH6.b();
                        }
                    } else if (iJ == 30) {
                        tabLayout5 = this.L;
                        if (tabLayout5 != null) {
                            h.C("durationTab");
                            throw null;
                        }
                        gVarH5 = tabLayout5.h(1);
                        if (gVarH5 != null) {
                            gVarH5.b();
                        }
                    } else if (iJ == 60) {
                        tabLayout4 = this.L;
                        if (tabLayout4 != null) {
                            h.C("durationTab");
                            throw null;
                        }
                        gVarH4 = tabLayout4.h(2);
                        if (gVarH4 != null) {
                            gVarH4.b();
                        }
                    }
                }
            }
        }
        this.O = new a(cVar, i10);
    }

    public final void v0() {
        if (this.f5769f0.S().isOff()) {
            h8.c cVar = this.f5769f0;
            cVar.b0(cVar.c());
            AdaptDeviceColor adaptDeviceColor = new AdaptDeviceColor(this.f5769f0.S().getLeftAdaptPreset(), null, 2, null);
            AdaptDeviceColor adaptDeviceColor2 = new AdaptDeviceColor(this.f5769f0.S().getRightAdaptPreset(), null, 2, null);
            s0().requestTo(Shoe.LEFT, new j(adaptDeviceColor));
            s0().requestTo(Shoe.RIGHT, new j(adaptDeviceColor2));
            p7.b bVar = p7.b.f13281a;
            FrameLayout frameLayout = r0().f13913j;
            h.i(frameLayout, "binding.lightsEffectsParent");
            p7.b.f13281a.e(frameLayout, InMemoryCache.INSTANCE.getActiveLightPack());
        }
    }

    public final void w0() {
        if (this.f5769f0.j() == -50) {
            p0(3, 0L);
            this.f5769f0.c0(60);
            TabLayout tabLayout = this.L;
            if (tabLayout == null) {
                h.C("durationTab");
                throw null;
            }
            TabLayout.g gVarH = tabLayout.h(2);
            View view = gVarH != null ? gVarH.f5450e : null;
            h.h(view, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) view).setTextColor(o.o(R.color.text_color_black));
        }
    }

    public final void x0(i.a aVar) {
        h.j(aVar, "effect");
        this.f5772i0 = aVar;
        s0().requestTo(Shoe.BOTH, j0.f13335a);
    }

    public final void y0(i.a aVar) {
        h.j(aVar, "effect");
        TrackManager.INSTANCE.lightsEffectSelected(aVar.f18704a.b());
        w0();
        v0();
        int iJ = this.f5769f0.j() * 60;
        AdaptAnimation adaptAnimation = new AdaptAnimation(new AdaptDeviceColor(this.f5769f0.S().getLeftAdaptPreset(), null, 2, null), HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR, 1000, 2750, 1000, HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR, iJ);
        AdaptAnimation adaptAnimation2 = new AdaptAnimation(new AdaptDeviceColor(this.f5769f0.S().getRightAdaptPreset(), null, 2, null), HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR, 1000, 2750, 1000, HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR, iJ);
        s0().requestTo(Shoe.LEFT, new h0(adaptAnimation));
        s0().requestTo(Shoe.RIGHT, new h0(adaptAnimation2));
        InMemoryCache.INSTANCE.setNeedToDisplayEffectsSubtitleForFirstTime(true);
        this.f5769f0.n0(false);
        this.d0 = true;
        this.f5768e0 = true;
    }
}
